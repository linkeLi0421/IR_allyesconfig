; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/yenta_socket.c_pt.bc'
source_filename = "../drivers/pcmcia/yenta_socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_resource_ops = type opaque
%struct.cardbus_type = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pccard_io_map = type { i8, i8, i16, i32, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.yenta_socket = type { ptr, i32, i32, ptr, %struct.timer_list, %struct.pcmcia_socket, ptr, i32, i32, [8 x i32], [2 x i32] }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__param_str_disable_clkrun = internal constant [28 x i8] c"yenta_socket.disable_clkrun\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_clkrun = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_clkrun = internal constant %struct.kernel_param { ptr @__param_str_disable_clkrun, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @disable_clkrun } }, section "__param", align 4
@__UNIQUE_ID_disable_clkruntype236 = internal constant [42 x i8] c"yenta_socket.parmtype=disable_clkrun:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_clkrun237 = internal constant [122 x i8] c"yenta_socket.parm=disable_clkrun:If PC card doesn't function properly, please try this option (TI and Ricoh bridges only)\00", section ".modinfo", align 1
@__param_str_isa_probe = internal constant [23 x i8] c"yenta_socket.isa_probe\00", align 1
@isa_probe = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_isa_probe = internal constant %struct.kernel_param { ptr @__param_str_isa_probe, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @isa_probe } }, section "__param", align 4
@__UNIQUE_ID_isa_probetype238 = internal constant [37 x i8] c"yenta_socket.parmtype=isa_probe:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_isa_probe239 = internal constant [100 x i8] c"yenta_socket.parm=isa_probe:If set ISA interrupts are probed (default). Set to N to disable probing\00", section ".modinfo", align 1
@__param_str_pwr_irqs_off = internal constant [26 x i8] c"yenta_socket.pwr_irqs_off\00", align 1
@pwr_irqs_off = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_pwr_irqs_off = internal constant %struct.kernel_param { ptr @__param_str_pwr_irqs_off, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pwr_irqs_off } }, section "__param", align 4
@__UNIQUE_ID_pwr_irqs_offtype240 = internal constant [40 x i8] c"yenta_socket.parmtype=pwr_irqs_off:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pwr_irqs_off241 = internal constant [104 x i8] c"yenta_socket.parm=pwr_irqs_off:Force IRQs off during power-on of slot. Use only when seeing IRQ storms!\00", section ".modinfo", align 1
@__param_str_o2_speedup = internal constant [24 x i8] c"yenta_socket.o2_speedup\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_o2_speedup = internal constant %struct.kparam_string { i32 8, ptr @o2_speedup }, align 4
@__param_o2_speedup = internal constant %struct.kernel_param { ptr @__param_str_o2_speedup, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_o2_speedup } }, section "__param", align 4
@__UNIQUE_ID_o2_speeduptype242 = internal constant [40 x i8] c"yenta_socket.parmtype=o2_speedup:string\00", section ".modinfo", align 1
@__UNIQUE_ID_o2_speedup243 = internal constant [142 x i8] c"yenta_socket.parm=o2_speedup:Use prefetch/burst for O2-bridges: 'on', 'off' or 'default' (uses recommended behaviour for the detected bridge)\00", section ".modinfo", align 1
@__param_str_override_bios = internal constant [27 x i8] c"yenta_socket.override_bios\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@override_bios = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_override_bios = internal constant %struct.kernel_param { ptr @__param_str_override_bios, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @override_bios } }, section "__param", align 4
@__UNIQUE_ID_override_biostype244 = internal constant [41 x i8] c"yenta_socket.parmtype=override_bios:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_override_bios245 = internal constant [70 x i8] c"yenta_socket.parm=override_bios:yenta ignore bios resource allocation\00", section ".modinfo", align 1
@__initcall__kmod_yenta_socket__261_1453_yenta_cardbus_driver_init6 = internal global ptr @yenta_cardbus_driver_init, section ".initcall6.init", align 4
@yenta_cardbus_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @yenta_table, ptr @yenta_probe, ptr @yenta_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yenta_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_yenta_cardbus_driver_exit = internal global ptr @yenta_cardbus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file262 = internal constant [46 x i8] c"yenta_socket.file=drivers/pcmcia/yenta_socket\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [25 x i8] c"yenta_socket.license=GPL\00", section ".modinfo", align 1
@o2_speedup = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"yenta_socket\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yenta_cardbus\00", [18 x i8] zeroinitializer }, align 32
@yenta_table = internal constant { [50 x %struct.pci_device_id], [384 x i8] } { [50 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 44051, i32 -1, i32 -1, i32 395008, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 44058, i32 -1, i32 -1, i32 395008, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 44050, i32 -1, i32 -1, i32 395008, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4172, i32 44053, i32 -1, i32 -1, i32 395008, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4172, i32 44062, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44055, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44057, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44060, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44061, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44063, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44113, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44059, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44114, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44118, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44117, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44116, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44097, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 32785, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44098, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44100, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44102, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44054, i32 -1, i32 -1, i32 395008, i32 -1, i32 3, i32 0 }, %struct.pci_device_id { i32 4172, i32 44112, i32 -1, i32 -1, i32 395008, i32 -1, i32 3, i32 0 }, %struct.pci_device_id { i32 4172, i32 32817, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 32822, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 32825, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44174, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44173, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44105, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44103, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 4172, i32 44104, i32 -1, i32 -1, i32 395008, i32 -1, i32 2, i32 0 }, %struct.pci_device_id { i32 5412, i32 5137, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 5138, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 5153, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 5154, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 4625, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 4645, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 5136, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 5412, i32 5152, i32 -1, i32 -1, i32 395008, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 4480, i32 1125, i32 -1, i32 -1, i32 395008, i32 -1, i32 4, i32 0 }, %struct.pci_device_id { i32 4480, i32 1126, i32 -1, i32 -1, i32 395008, i32 -1, i32 4, i32 0 }, %struct.pci_device_id { i32 4480, i32 1141, i32 -1, i32 -1, i32 395008, i32 -1, i32 4, i32 0 }, %struct.pci_device_id { i32 4480, i32 1142, i32 -1, i32 -1, i32 395008, i32 -1, i32 4, i32 0 }, %struct.pci_device_id { i32 4480, i32 1144, i32 -1, i32 -1, i32 395008, i32 -1, i32 4, i32 0 }, %struct.pci_device_id { i32 4473, i32 1546, i32 -1, i32 -1, i32 395008, i32 -1, i32 5, i32 0 }, %struct.pci_device_id { i32 4473, i32 1551, i32 -1, i32 -1, i32 395008, i32 -1, i32 6, i32 0 }, %struct.pci_device_id { i32 4473, i32 1559, i32 -1, i32 -1, i32 395008, i32 -1, i32 6, i32 0 }, %struct.pci_device_id { i32 4631, i32 -1, i32 -1, i32 -1, i32 395008, i32 -1, i32 7, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 395008, i32 -1, i32 -1, i32 0 }, %struct.pci_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@yenta_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @yenta_dev_suspend_noirq, ptr @yenta_dev_resume_noirq, ptr @yenta_dev_suspend_noirq, ptr @yenta_dev_resume_noirq, ptr @yenta_dev_suspend_noirq, ptr @yenta_dev_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@yenta_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no bus associated! (try 'pci=assign-busses')\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"yenta_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pcmcia/yenta_socket.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr = internal global ptr @yenta_probe._entry, section ".printk_index", align 4
@yenta_socket_operations = internal global { %struct.pccard_operations, [40 x i8] } { %struct.pccard_operations { ptr @yenta_sock_init, ptr @yenta_sock_suspend, ptr @yenta_get_status, ptr @yenta_set_socket, ptr @yenta_set_io_map, ptr @yenta_set_mem_map }, [40 x i8] zeroinitializer }, align 32
@pccard_nonstatic_ops = external dso_local global %struct.pccard_resource_ops, align 1
@yenta_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No cardbus resource!\0A\00", [42 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr.9 = internal global ptr @yenta_probe._entry.7, section ".printk_index", align 4
@yenta_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1224, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CardBus bridge found [%04x:%04x]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr.13 = internal global ptr @yenta_probe._entry.10, section ".printk_index", align 4
@cardbus_type = internal global { [9 x %struct.cardbus_type], [48 x i8] } { [9 x %struct.cardbus_type] [%struct.cardbus_type { ptr @ti_override, ptr @ti_save_state, ptr @ti_restore_state, ptr @ti_init }, %struct.cardbus_type { ptr @ti113x_override, ptr @ti_save_state, ptr @ti_restore_state, ptr @ti_init }, %struct.cardbus_type { ptr @ti12xx_override, ptr @ti_save_state, ptr @ti_restore_state, ptr @ti_init }, %struct.cardbus_type { ptr @ti1250_override, ptr @ti_save_state, ptr @ti_restore_state, ptr @ti_init }, %struct.cardbus_type { ptr @ricoh_override, ptr @ricoh_save_state, ptr @ricoh_restore_state, ptr null }, %struct.cardbus_type { ptr @topic95_override, ptr null, ptr null, ptr null }, %struct.cardbus_type { ptr @topic97_override, ptr null, ptr null, ptr null }, %struct.cardbus_type { ptr @o2micro_override, ptr null, ptr @o2micro_restore_state, ptr null }, %struct.cardbus_type { ptr @ene_override, ptr @ti_save_state, ptr @ti_restore_state, ptr @ti_init }], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"yenta\00", [26 x i8] zeroinitializer }, align 32
@yenta_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&socket->poll_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@yenta_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1254, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"no PCI IRQ, CardBus support disabled for this socket.\0A\00", [41 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr.18 = internal global ptr @yenta_probe._entry.16, section ".printk_index", align 4
@yenta_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1256, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"check your BIOS CardBus, BIOS IRQ or ACPI settings.\0A\00", [43 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr.21 = internal global ptr @yenta_probe._entry.19, section ".printk_index", align 4
@yenta_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1265, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Socket status: %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@yenta_probe._entry_ptr.24 = internal global ptr @yenta_probe._entry.22, section ".printk_index", align 4
@dev_attr_yenta_registers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_yenta_registers, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@exca_writeb.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exca_writeb\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@__const.yenta_clear_maps.res = private unnamed_addr constant %struct.resource { i32 0, i32 4095, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, align 4
@__const.yenta_clear_maps.io = private unnamed_addr constant %struct.pccard_io_map { i8 0, i8 0, i16 0, i32 0, i32 1 }, align 4
@dead_socket = external dso_local global %struct.socket_state_t, align 4
@exca_readb.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.26, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exca_readb\00", [21 x i8] zeroinitializer }, align 32
@config_readw.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config_readw\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x %04x\0A\00", [21 x i8] zeroinitializer }, align 32
@config_writew.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.29, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config_writew\00", [18 x i8] zeroinitializer }, align 32
@exca_writew.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.29, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exca_writew\00", [20 x i8] zeroinitializer }, align 32
@config_writel.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config_writel\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x %08x\0A\00", [21 x i8] zeroinitializer }, align 32
@config_writeb.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.26, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"config_writeb\00", [18 x i8] zeroinitializer }, align 32
@cb_writel.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.33, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb_writel\00", [22 x i8] zeroinitializer }, align 32
@yenta_allocate_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 720, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Preassigned resource %d busy or not available, reconfiguring...\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yenta_allocate_res\00", [45 x i8] zeroinitializer }, align 32
@yenta_allocate_res._entry_ptr = internal global ptr @yenta_allocate_res._entry, section ".printk_index", align 4
@yenta_allocate_res._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 745, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"no resource of type %x available, trying to continue...\0A\00", [39 x i8] zeroinitializer }, align 32
@yenta_allocate_res._entry_ptr.40 = internal global ptr @yenta_allocate_res._entry.38, section ".printk_index", align 4
@config_readl.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.33, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config_readl\00", [19 x i8] zeroinitializer }, align 32
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@pcibios_min_mem = external dso_local local_unnamed_addr global i32, align 4
@config_readb.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.26, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config_readb\00", [19 x i8] zeroinitializer }, align 32
@ti113x_use_isa_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 345, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Yenta TI113x: using isa irq %d for CardBus\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti113x_use_isa_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pcmcia/ti113x.h\00", [40 x i8] zeroinitializer }, align 32
@ti113x_use_isa_irq._entry_ptr = internal global ptr @ti113x_use_isa_irq._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti12xx_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.45, i32 849, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disabling CLKRUN feature\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti12xx_override\00", [16 x i8] zeroinitializer }, align 32
@ti12xx_override._entry_ptr = internal global ptr @ti12xx_override._entry, section ".printk_index", align 4
@ti12xx_override._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.45, i32 854, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Enabling burst memory read transactions\0A\00", [55 x i8] zeroinitializer }, align 32
@ti12xx_override._entry_ptr.50 = internal global ptr @ti12xx_override._entry.48, section ".printk_index", align 4
@ti12xx_override._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.45, i32 866, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Using %s to route CSC interrupts to PCI\0A\00", [55 x i8] zeroinitializer }, align 32
@ti12xx_override._entry_ptr.53 = internal global ptr @ti12xx_override._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CSCINT\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INTVAL\00", [25 x i8] zeroinitializer }, align 32
@ti12xx_override._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.45, i32 868, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Routing CardBus interrupts to %s\0A\00", [62 x i8] zeroinitializer }, align 32
@ti12xx_override._entry_ptr.58 = internal global ptr @ti12xx_override._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISA\00", [28 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.45, i32 376, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TI: mfunc 0x%08x, devctl 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti12xx_irqroute_func0\00", [42 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr = internal global ptr @ti12xx_irqroute_func0._entry, section ".printk_index", align 4
@ti12xx_irqroute_func0._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.45, i32 391, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TI: probing PCI interrupt failed, trying to fix\0A\00", [47 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr.65 = internal global ptr @ti12xx_irqroute_func0._entry.63, section ".printk_index", align 4
@ti12xx_irqroute_func0._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.45, i32 416, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TI: all-serial interrupts ok\0A\00", [34 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr.68 = internal global ptr @ti12xx_irqroute_func0._entry.66, section ".printk_index", align 4
@ti12xx_irqroute_func0._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.45, i32 432, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TI: falling back to parallel PCI interrupts\0A\00", [51 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr.71 = internal global ptr @ti12xx_irqroute_func0._entry.69, section ".printk_index", align 4
@ti12xx_irqroute_func0._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.45, i32 463, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TI: parallel PCI interrupts ok\0A\00", [32 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr.74 = internal global ptr @ti12xx_irqroute_func0._entry.72, section ".printk_index", align 4
@ti12xx_irqroute_func0._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.45, i32 476, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Yenta TI: no PCI interrupts. Fish. Please report.\0A\00", [45 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func0._entry_ptr.77 = internal global ptr @ti12xx_irqroute_func0._entry.75, section ".printk_index", align 4
@yenta_probe_cb_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 997, ptr @.str.80, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"request_irq() in yenta_probe_cb_irq() failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"yenta_probe_cb_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@yenta_probe_cb_irq._entry_ptr = internal global ptr @yenta_probe_cb_irq._entry, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.81, ptr @.str.45, i32 549, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti12xx_irqroute_func1\00", [42 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr = internal global ptr @ti12xx_irqroute_func1._entry, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.81, ptr @.str.45, i32 569, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr.83 = internal global ptr @ti12xx_irqroute_func1._entry.82, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.81, ptr @.str.45, i32 579, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TI: all-serial interrupts, tied ok\0A\00", [60 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr.86 = internal global ptr @ti12xx_irqroute_func1._entry.84, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.81, ptr @.str.45, i32 617, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr.88 = internal global ptr @ti12xx_irqroute_func1._entry.87, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.45, i32 633, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TI: parallel PCI interrupts, tied ok\0A\00", [58 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr.91 = internal global ptr @ti12xx_irqroute_func1._entry.89, section ".printk_index", align 4
@ti12xx_irqroute_func1._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.81, ptr @.str.45, i32 645, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TI: no PCI interrupts. Fish. Please report.\0A\00", [51 x i8] zeroinitializer }, align 32
@ti12xx_irqroute_func1._entry_ptr.94 = internal global ptr @ti12xx_irqroute_func1._entry.92, section ".printk_index", align 4
@ti1250_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.45, i32 895, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adjusting diagnostic: %02x -> %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti1250_override\00", [16 x i8] zeroinitializer }, align 32
@ti1250_override._entry_ptr = internal global ptr @ti1250_override._entry, section ".printk_index", align 4
@ricoh_set_clkrun.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.98, ptr @.str.99, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ricoh_set_clkrun\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pcmcia/ricoh.h\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CLKRUN feature already disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@ricoh_set_clkrun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.97, ptr @.str.98, i32 186, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ricoh_set_clkrun._entry_ptr = internal global ptr @ricoh_set_clkrun._entry, section ".printk_index", align 4
@topic95_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.102, i32 162, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Disabled ToPIC95 Cardbus write buffers.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"topic95_override\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pcmcia/topic.h\00", [41 x i8] zeroinitializer }, align 32
@topic95_override._entry_ptr = internal global ptr @topic95_override._entry, section ".printk_index", align 4
@o2micro_override.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.104, ptr @.str.105, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"o2micro_override\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pcmcia/o2micro.h\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"O2: 0x94/0xD4: %02x/%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@o2micro_override._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.103, ptr @.str.104, i32 152, ptr @.str.80, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"O2: Unknown parameter, using 'default'\00", [57 x i8] zeroinitializer }, align 32
@o2micro_override._entry_ptr = internal global ptr @o2micro_override._entry, section ".printk_index", align 4
@o2micro_override._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.104, i32 156, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"O2: enabling read prefetch/write burst. If you experience problems or performance issues, use the yenta_socket parameter 'o2_speedup=off'\0A\00", [53 x i8] zeroinitializer }, align 32
@o2micro_override._entry_ptr.112 = internal global ptr @o2micro_override._entry.110, section ".printk_index", align 4
@o2micro_override._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.103, ptr @.str.104, i32 163, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"O2: disabling read prefetch/write burst. If you experience problems or performance issues, use the yenta_socket parameter 'o2_speedup=on'\0A\00", [53 x i8] zeroinitializer }, align 32
@o2micro_override._entry_ptr.115 = internal global ptr @o2micro_override._entry.113, section ".printk_index", align 4
@ene_tune_tbl = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4183, i32 6145, i32 60608, i32 -1, i32 0, i32 0, i32 3586, i32 0 }, %struct.pci_device_id { i32 4183, i32 13328, i32 60608, i32 -1, i32 0, i32 0, i32 3586, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ene_tune_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.45, i32 962, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"EnE: changing testregister 0xC9, %02x -> %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ene_tune_bridge\00", [16 x i8] zeroinitializer }, align 32
@ene_tune_bridge._entry_ptr = internal global ptr @ene_tune_bridge._entry, section ".printk_index", align 4
@yenta_get_socket_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.4, i32 1037, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ISA IRQ mask 0x%04x, PCI irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"yenta_get_socket_capabilities\00", [34 x i8] zeroinitializer }, align 32
@yenta_get_socket_capabilities._entry_ptr = internal global ptr @yenta_get_socket_capabilities._entry, section ".printk_index", align 4
@cb_readl.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.4, ptr @.str.33, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cb_readl\00", [23 x i8] zeroinitializer }, align 32
@yenta_fixup_parent_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.4, i32 1129, ptr @.str.80, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Upper limit for fixing this bridge's parent bridge: #%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"yenta_fixup_parent_bridge\00", [38 x i8] zeroinitializer }, align 32
@yenta_fixup_parent_bridge._entry_ptr = internal global ptr @yenta_fixup_parent_bridge._entry, section ".printk_index", align 4
@yenta_fixup_parent_bridge._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.4, i32 1142, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Raising subordinate bus# of parent bus (#%02x) from #%02x to #%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@yenta_fixup_parent_bridge._entry_ptr.125 = internal global ptr @yenta_fixup_parent_bridge._entry.123, section ".printk_index", align 4
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"yenta_registers\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CB registers:\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A%02x:\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %08x\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0A\0AExCA registers:\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 50]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 50, i64 120]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 50, i64 120]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 50, i64 120]
@__sancov_gen_cov_switch_values.138 = internal global [10 x i64] [i64 8, i64 16, i64 44054, i64 44055, i64 44057, i64 44059, i64 44060, i64 44061, i64 44063, i64 44100]
@__sancov_gen_cov_switch_values.139 = internal global [8 x i64] [i64 6, i64 16, i64 26409, i64 26426, i64 26674, i64 26678, i64 26738, i64 26931]
@__sancov_gen_cov_switch_values.140 = internal global [9 x i64] [i64 7, i64 16, i64 32785, i64 44054, i64 44059, i64 44061, i64 44063, i64 44098, i64 44114]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 16, i64 44054, i64 44059, i64 44061, i64 44063]
@__sancov_gen_cov_switch_values.142 = internal global [6 x i64] [i64 4, i64 16, i64 44054, i64 44059, i64 44061, i64 44063]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 16, i64 44054, i64 44059, i64 44061, i64 44063]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 16, i64 44059, i64 44061, i64 44063]
@__sancov_gen_cov_switch_values.145 = internal global [22 x i64] [i64 20, i64 16, i64 32785, i64 32817, i64 32822, i64 32825, i64 44055, i64 44057, i64 44059, i64 44060, i64 44061, i64 44063, i64 44098, i64 44102, i64 44104, i64 44105, i64 44113, i64 44114, i64 44116, i64 44117, i64 44173, i64 44174]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 1142, i64 1144]
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"disable_clkrun\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 28, i32 13 }
@___asan_gen_.150 = private unnamed_addr constant [10 x i8] c"isa_probe\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 33, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"pwr_irqs_off\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 37, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"override_bios\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 75, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"yenta_cardbus_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1445, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"o2_speedup\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 41, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1453, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1446, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"yenta_table\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1366, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"yenta_pm_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1346, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1169, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [24 x i8] c"yenta_socket_operations\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 829, i32 33 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1204, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1223, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [13 x i8] c"cardbus_type\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 869, i32 28 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1248, i32 83 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1251, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1253, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1255, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1264, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [25 x i8] c"dev_attr_yenta_registers\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 160, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 143, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 110, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 130, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 167, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 136, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 124, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 93, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 718, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 743, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 118, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 102, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 344, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 849, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 853, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 865, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 867, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 375, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 390, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 415, i32 6 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 431, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 463, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 475, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 996, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 548, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 568, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 578, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 616, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 632, i32 5 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 644, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 893, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 181, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant [26 x i8] c"../drivers/pcmcia/ricoh.h\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 185, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant [26 x i8] c"../drivers/pcmcia/topic.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 162, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 124, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 146, i32 30 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 148, i32 35 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 150, i32 35 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 151, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 155, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant [28 x i8] c"../drivers/pcmcia/o2micro.h\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.499, i32 162, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant [13 x i8] c"ene_tune_tbl\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 926, i32 29 }
@___asan_gen_.511 = private unnamed_addr constant [27 x i8] c"../drivers/pcmcia/ti113x.h\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 960, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1036, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 87, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1127, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1138, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 207, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 181, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 185, i32 41 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 187, i32 40 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 190, i32 39 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 201, i32 40 }
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.559 = private constant [33 x i8] c"../drivers/pcmcia/yenta_socket.c\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 203, i32 29 }
@llvm.compiler.used = appending global [194 x ptr] [ptr @__UNIQUE_ID_disable_clkrun237, ptr @__UNIQUE_ID_disable_clkruntype236, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_isa_probe239, ptr @__UNIQUE_ID_isa_probetype238, ptr @__UNIQUE_ID_license263, ptr @__UNIQUE_ID_o2_speedup243, ptr @__UNIQUE_ID_o2_speeduptype242, ptr @__UNIQUE_ID_override_bios245, ptr @__UNIQUE_ID_override_biostype244, ptr @__UNIQUE_ID_pwr_irqs_off241, ptr @__UNIQUE_ID_pwr_irqs_offtype240, ptr @__exitcall_yenta_cardbus_driver_exit, ptr @__initcall__kmod_yenta_socket__261_1453_yenta_cardbus_driver_init6, ptr @__param_disable_clkrun, ptr @__param_isa_probe, ptr @__param_o2_speedup, ptr @__param_override_bios, ptr @__param_pwr_irqs_off, ptr @ene_tune_bridge._entry, ptr @ene_tune_bridge._entry_ptr, ptr @o2micro_override._entry, ptr @o2micro_override._entry.110, ptr @o2micro_override._entry.113, ptr @o2micro_override._entry_ptr, ptr @o2micro_override._entry_ptr.112, ptr @o2micro_override._entry_ptr.115, ptr @ricoh_set_clkrun._entry, ptr @ricoh_set_clkrun._entry_ptr, ptr @ti113x_use_isa_irq._entry, ptr @ti113x_use_isa_irq._entry_ptr, ptr @ti1250_override._entry, ptr @ti1250_override._entry_ptr, ptr @ti12xx_irqroute_func0._entry, ptr @ti12xx_irqroute_func0._entry.63, ptr @ti12xx_irqroute_func0._entry.66, ptr @ti12xx_irqroute_func0._entry.69, ptr @ti12xx_irqroute_func0._entry.72, ptr @ti12xx_irqroute_func0._entry.75, ptr @ti12xx_irqroute_func0._entry_ptr, ptr @ti12xx_irqroute_func0._entry_ptr.65, ptr @ti12xx_irqroute_func0._entry_ptr.68, ptr @ti12xx_irqroute_func0._entry_ptr.71, ptr @ti12xx_irqroute_func0._entry_ptr.74, ptr @ti12xx_irqroute_func0._entry_ptr.77, ptr @ti12xx_irqroute_func1._entry, ptr @ti12xx_irqroute_func1._entry.82, ptr @ti12xx_irqroute_func1._entry.84, ptr @ti12xx_irqroute_func1._entry.87, ptr @ti12xx_irqroute_func1._entry.89, ptr @ti12xx_irqroute_func1._entry.92, ptr @ti12xx_irqroute_func1._entry_ptr, ptr @ti12xx_irqroute_func1._entry_ptr.83, ptr @ti12xx_irqroute_func1._entry_ptr.86, ptr @ti12xx_irqroute_func1._entry_ptr.88, ptr @ti12xx_irqroute_func1._entry_ptr.91, ptr @ti12xx_irqroute_func1._entry_ptr.94, ptr @ti12xx_override._entry, ptr @ti12xx_override._entry.48, ptr @ti12xx_override._entry.51, ptr @ti12xx_override._entry.56, ptr @ti12xx_override._entry_ptr, ptr @ti12xx_override._entry_ptr.50, ptr @ti12xx_override._entry_ptr.53, ptr @ti12xx_override._entry_ptr.58, ptr @topic95_override._entry, ptr @topic95_override._entry_ptr, ptr @yenta_allocate_res._entry, ptr @yenta_allocate_res._entry.38, ptr @yenta_allocate_res._entry_ptr, ptr @yenta_allocate_res._entry_ptr.40, ptr @yenta_cardbus_driver_exit, ptr @yenta_fixup_parent_bridge._entry, ptr @yenta_fixup_parent_bridge._entry.123, ptr @yenta_fixup_parent_bridge._entry_ptr, ptr @yenta_fixup_parent_bridge._entry_ptr.125, ptr @yenta_get_socket_capabilities._entry, ptr @yenta_get_socket_capabilities._entry_ptr, ptr @yenta_probe._entry, ptr @yenta_probe._entry.10, ptr @yenta_probe._entry.16, ptr @yenta_probe._entry.19, ptr @yenta_probe._entry.22, ptr @yenta_probe._entry.7, ptr @yenta_probe._entry_ptr, ptr @yenta_probe._entry_ptr.13, ptr @yenta_probe._entry_ptr.18, ptr @yenta_probe._entry_ptr.21, ptr @yenta_probe._entry_ptr.24, ptr @yenta_probe._entry_ptr.9, ptr @yenta_probe_cb_irq._entry, ptr @yenta_probe_cb_irq._entry_ptr, ptr @disable_clkrun, ptr @isa_probe, ptr @pwr_irqs_off, ptr @override_bios, ptr @yenta_cardbus_driver, ptr @o2_speedup, ptr @.str, ptr @.str.1, ptr @yenta_table, ptr @yenta_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @yenta_socket_operations, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @cardbus_type, ptr @.str.14, ptr @yenta_probe.__key, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @dev_attr_yenta_registers, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.85, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @ene_tune_tbl, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.133], section "llvm.metadata"
@0 = internal global [138 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_clkrun to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isa_probe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwr_irqs_off to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @override_bios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_cardbus_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2_speedup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_table to i32), i32 1600, i32 1984, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_socket_operations to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cardbus_type to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_yenta_registers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_allocate_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_allocate_res._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti113x_use_isa_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_override._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_override._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_override._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func0._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_probe_cb_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti12xx_irqroute_func1._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti1250_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ricoh_set_clkrun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topic95_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2micro_override._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2micro_override._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o2micro_override._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_tune_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ene_tune_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_get_socket_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_fixup_parent_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yenta_fixup_parent_bridge._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_cardbus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @yenta_cardbus_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @yenta_cardbus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @yenta_cardbus_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1648) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %socket5 = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5
  %ops = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 23
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @yenta_socket_operations, ptr %ops, align 8
  %resource_ops = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 24
  %4 = ptrtoint ptr %resource_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pccard_nonstatic_ops, ptr %resource_ops, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 42, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev7, ptr %parent, align 8
  %driver_data = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 43
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data, align 8
  %7 = ptrtoint ptr %socket5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %socket5, align 8
  %features = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 16
  %8 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16385, ptr %features, align 4
  %map_size = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 18
  %9 = ptrtoint ptr %map_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %map_size, align 4
  %cb_dev = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 5, i32 21
  %10 = ptrtoint ptr %cb_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %cb_dev, align 8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @pci_enable_device(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end4.free_crit_edge

if.end4.free_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end19:                                         ; preds = %if.end4
  %call20 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.disable_crit_edge

if.end19.disable_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable

if.end23:                                         ; preds = %if.end19
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resource, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #13
  br label %release

if.end30:                                         ; preds = %if.end23
  %call34 = tail call ptr @ioremap(i32 noundef %14, i32 noundef 4096) #10
  %base = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %base, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end30.release_crit_edge, label %do.end41

if.end30.release_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %release

do.end41:                                         ; preds = %if.end30
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %16 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_vendor, align 4
  %conv = zext i16 %17 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %18 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device, align 2
  %conv43 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv43) #13
  tail call fastcc void @yenta_config_init(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @cb_writel(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 0)
  tail call fastcc void @yenta_allocate_resources(ptr noundef nonnull %call7.i.i)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cb_irq, align 4
  %driver_data44 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %23 = ptrtoint ptr %driver_data44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %24)
  %cmp47 = icmp ult i32 %24, 9
  br i1 %cmp47, label %if.then49, label %do.end41.if.end58_crit_edge

do.end41.if.end58_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then49:                                        ; preds = %do.end41
  %arrayidx51 = getelementptr [9 x %struct.cardbus_type], ptr @cardbus_type, i32 0, i32 %24
  %type = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx51, ptr %type, align 8
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx51, align 4
  %call53 = tail call i32 %27(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then49.unmap_crit_edge, label %if.end58thread-pre-split

if.then49.unmap_crit_edge:                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap

if.end58thread-pre-split:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %cb_irq, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58thread-pre-split, %do.end41.if.end58_crit_edge
  %29 = phi i32 [ %.pr, %if.end58thread-pre-split ], [ %21, %do.end41.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool60.not = icmp eq i32 %29, 0
  br i1 %tobool60.not, label %if.end58.if.then64_crit_edge, label %lor.lhs.false

if.end58.if.then64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false:                                    ; preds = %if.end58
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @yenta_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool63.not = icmp eq i32 %call.i, 0
  br i1 %tobool63.not, label %if.else, label %lor.lhs.false.if.then64_crit_edge

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false.if.then64_crit_edge, %if.end58.if.then64_crit_edge
  %30 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cb_irq, align 4
  %poll_timer = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @yenta_interrupt_wrapper, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @yenta_probe.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 100
  %call70 = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.17) #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.20) #13
  br label %if.end81

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %features, align 4
  %or = or i32 %33, 32768
  store i32 %or, ptr %features, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then64
  tail call fastcc void @yenta_interrogate(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @yenta_get_socket_capabilities(ptr noundef nonnull %call7.i.i)
  %call86 = tail call fastcc i32 @cb_readl(ptr noundef nonnull %call7.i.i, i32 noundef 8)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.23, i32 noundef %call86) #13
  %34 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subordinate, align 4
  tail call fastcc void @yenta_fixup_parent_bridge(ptr noundef %35)
  %call89 = tail call i32 @pcmcia_register_socket(ptr noundef %socket5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end81.free_irq_crit_edge

if.end81.free_irq_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_irq

if.end92:                                         ; preds = %if.end81
  %call94 = tail call i32 @device_create_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_yenta_registers) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %unregister_socket

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

unregister_socket:                                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pcmcia_unregister_socket(ptr noundef %socket5) #10
  br label %free_irq

free_irq:                                         ; preds = %unregister_socket, %if.end81.free_irq_crit_edge
  %ret.0 = phi i32 [ %call89, %if.end81.free_irq_crit_edge ], [ %call94, %unregister_socket ]
  %36 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool100.not = icmp eq i32 %37, 0
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = tail call ptr @free_irq(i32 noundef %37, ptr noundef nonnull %call7.i.i) #10
  br label %unmap

if.else104:                                       ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #12
  %poll_timer105 = getelementptr inbounds %struct.yenta_socket, ptr %call7.i.i, i32 0, i32 4
  %call106 = tail call i32 @del_timer_sync(ptr noundef %poll_timer105) #10
  br label %unmap

unmap:                                            ; preds = %if.else104, %if.then101, %if.then49.unmap_crit_edge
  %ret.1 = phi i32 [ %call53, %if.then49.unmap_crit_edge ], [ %ret.0, %if.then101 ], [ %ret.0, %if.else104 ]
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %39) #10
  tail call fastcc void @yenta_free_resources(ptr noundef nonnull %call7.i.i)
  br label %release

release:                                          ; preds = %unmap, %if.end30.release_crit_edge, %do.end28
  %ret.2 = phi i32 [ %ret.1, %unmap ], [ -19, %do.end28 ], [ -12, %if.end30.release_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %dev) #10
  br label %disable

disable:                                          ; preds = %release, %if.end19.disable_crit_edge
  %ret.3 = phi i32 [ %call20, %if.end19.disable_crit_edge ], [ %ret.2, %release ]
  tail call void @pci_disable_device(ptr noundef %dev) #10
  br label %free

free:                                             ; preds = %disable, %if.end4.free_crit_edge
  %ret.4 = phi i32 [ %ret.3, %disable ], [ -16, %if.end4.free_crit_edge ]
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end92.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.4, %free ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yenta_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_yenta_registers) #10
  %socket = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 5
  tail call void @pcmcia_unregister_socket(ptr noundef %socket) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_close, %if.then.i)) #10
          to label %cb_writel.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 0) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !312
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_close, %if.then.i19)) #10
          to label %exca_writeb.exit [label %if.then.i19], !srcloc !310

if.then.i19:                                      ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev3.i18 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i18, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef 0) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i19, %cb_writel.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #10, !srcloc !316
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 2053
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %1) #10
  br label %if.end

if.else:                                          ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %poll_timer = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 4
  %call4 = tail call i32 @del_timer_sync(ptr noundef %poll_timer) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef %19) #10
  tail call fastcc void @yenta_free_resources(ptr noundef %1)
  tail call void @pci_release_regions(ptr noundef %dev) #10
  tail call void @pci_disable_device(ptr noundef %dev) #10
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_config_init(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #10
  %2 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %region, align 4, !annotation !319
  %3 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !319
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 47
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %region, ptr noundef %resource) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i)) #10
          to label %config_writel.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 68, i32 noundef 0) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i, %entry
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 68, i32 noundef 0) #10
  %11 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i30)) #10
          to label %config_writel.exit32 [label %if.then.i30], !srcloc !310

if.then.i30:                                      ; preds = %config_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %dev3.i29 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i29, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %12) #10
  br label %config_writel.exit32

config_writel.exit32:                             ; preds = %if.then.i30, %config_writel.exit
  %15 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socket, align 8
  %call5.i31 = call i32 @pci_write_config_dword(ptr noundef %16, i32 noundef 16, i32 noundef %12) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i34)) #10
          to label %config_writew.exit [label %if.then.i34], !srcloc !310

if.then.i34:                                      ; preds = %config_writel.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socket, align 8
  %dev3.i33 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i33, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 135) #10
  br label %config_writew.exit

config_writew.exit:                               ; preds = %if.then.i34, %config_writel.exit32
  %19 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %socket, align 8
  %call5.i35 = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef 4, i16 noundef zeroext 135) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i37)) #10
          to label %config_writeb.exit [label %if.then.i37], !srcloc !310

if.then.i37:                                      ; preds = %config_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %socket, align 8
  %dev3.i36 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i36, ptr noundef nonnull @.str.26, i32 noundef 12, i32 noundef 32) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i37, %config_writew.exit
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 8
  %call5.i38 = call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 12, i8 noundef zeroext 32) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i40)) #10
          to label %config_writeb.exit42 [label %if.then.i40], !srcloc !310

if.then.i40:                                      ; preds = %config_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %socket, align 8
  %dev3.i39 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i39, ptr noundef nonnull @.str.26, i32 noundef 13, i32 noundef 168) #10
  br label %config_writeb.exit42

config_writeb.exit42:                             ; preds = %if.then.i40, %config_writeb.exit
  %27 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socket, align 8
  %call5.i41 = call i32 @pci_write_config_byte(ptr noundef %28, i32 noundef 13, i8 noundef zeroext -88) #10
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subordinate, align 4
  %busn_res = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 8
  %end = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end, align 4
  %shl = shl i32 %32, 16
  %33 = ptrtoint ptr %busn_res to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %busn_res, align 8
  %shl6 = shl i32 %34, 8
  %primary = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 13
  %35 = ptrtoint ptr %primary to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %primary, align 1
  %conv = zext i8 %36 to i32
  %or = or i32 %shl, %shl6
  %or7 = or i32 %or, %conv
  %or9 = or i32 %or7, -1342177280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i44)) #10
          to label %config_writel.exit46 [label %if.then.i44], !srcloc !310

if.then.i44:                                      ; preds = %config_writeb.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socket, align 8
  %dev3.i43 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i43, ptr noundef nonnull @.str.33, i32 noundef 24, i32 noundef %or9) #10
  br label %config_writel.exit46

config_writel.exit46:                             ; preds = %if.then.i44, %config_writeb.exit42
  %39 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %socket, align 8
  %call5.i45 = call i32 @pci_write_config_dword(ptr noundef %40, i32 noundef 24, i32 noundef %or9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %val.i, align 2, !annotation !319
  %42 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %43, i32 noundef 62, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i47)) #10
          to label %config_readw.exit [label %if.then.i47], !srcloc !310

if.then.i47:                                      ; preds = %config_writel.exit46
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i, ptr noundef nonnull @.str.29, i32 noundef 62, i32 noundef %conv.i) #10
  br label %config_readw.exit

config_readw.exit:                                ; preds = %if.then.i47, %config_writel.exit46
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %50 = and i16 %49, -1869
  %51 = or i16 %50, 1280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_config_init, %if.then.i50)) #10
          to label %config_writew.exit52 [label %if.then.i50], !srcloc !310

if.then.i50:                                      ; preds = %config_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %socket, align 8
  %dev3.i48 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %conv.i49 = zext i16 %51 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i48, ptr noundef nonnull @.str.29, i32 noundef 62, i32 noundef %conv.i49) #10
  br label %config_writew.exit52

config_writew.exit52:                             ; preds = %if.then.i50, %config_readw.exit
  %54 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %socket, align 8
  %call5.i51 = call i32 @pci_write_config_word(ptr noundef %55, i32 noundef 62, i16 noundef zeroext %51) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_writel(ptr nocapture noundef readonly %socket, i32 noundef %reg, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb_writel, %if.then)) #10
          to label %do.body4 [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3, ptr noundef nonnull @.str.33, i32 noundef %reg, i32 noundef %val) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !312
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 %reg
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_allocate_resources(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @yenta_allocate_res(ptr noundef %socket, i32 noundef 13, i32 noundef 256, i32 noundef 44, i32 noundef 48)
  %call1 = tail call fastcc i32 @yenta_allocate_res(ptr noundef %socket, i32 noundef 14, i32 noundef 256, i32 noundef 52, i32 noundef 56)
  %add2 = add i32 %call1, %call
  %call3 = tail call fastcc i32 @yenta_allocate_res(ptr noundef %socket, i32 noundef 15, i32 noundef 8704, i32 noundef 28, i32 noundef 32)
  %add4 = add i32 %add2, %call3
  %call5 = tail call fastcc i32 @yenta_allocate_res(ptr noundef %socket, i32 noundef 16, i32 noundef 512, i32 noundef 36, i32 noundef 40)
  %add6 = sub i32 0, %call5
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %add6)
  %tobool.not = icmp eq i32 %add4, %add6
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subordinate, align 4
  tail call void @pci_setup_cardbus(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !313
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrupt, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %3) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrupt, %if.then.i58)) #10
          to label %cb_writel.exit [label %if.then.i58], !srcloc !310

if.then.i58:                                      ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %3) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i58, %cb_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #10, !srcloc !312
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %14, i32 2052
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrupt, %if.then.i61)) #10
          to label %exca_readb.exit [label %if.then.i61], !srcloc !310

if.then.i61:                                      ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %conv.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i61, %cb_writel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %exca_readb.exit.cleanup_crit_edge, label %if.end

exca_readb.exit.cleanup_crit_edge:                ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %exca_readb.exit
  %and = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %conv4 = zext i8 %15 to i32
  %and5 = shl nuw nsw i32 %conv4, 4
  %18 = and i32 %and5, 128
  %or = select i1 %tobool3.not, i32 %18, i32 128
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr1.i64 = getelementptr i8, ptr %20, i32 2051
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i64) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrupt, %if.then.i67)) #10
          to label %exca_readb.exit68 [label %if.then.i67], !srcloc !310

if.then.i67:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 8
  %dev7.i65 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv.i66 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i65, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i66) #10
  br label %exca_readb.exit68

exca_readb.exit68:                                ; preds = %if.then.i67, %if.end
  %24 = and i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  %and14 = shl nuw nsw i32 %conv4, 10
  %25 = and i32 %and14, 1024
  %or27 = and i32 %and5, 112
  %events.0.v = select i1 %tobool11.not, i32 %or27, i32 %25
  %events.0 = or i32 %or, %events.0.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.0)
  %tobool34.not = icmp eq i32 %events.0, 0
  br i1 %tobool34.not, label %exca_readb.exit68.cleanup_crit_edge, label %if.then35

exca_readb.exit68.cleanup_crit_edge:              ; preds = %exca_readb.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %exca_readb.exit68
  call void @__sanitizer_cov_trace_pc() #12
  %socket36 = getelementptr inbounds %struct.yenta_socket, ptr %dev_id, i32 0, i32 5
  tail call void @pcmcia_parse_events(ptr noundef %socket36, i32 noundef %events.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %exca_readb.exit68.cleanup_crit_edge, %exca_readb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %exca_readb.exit.cleanup_crit_edge ], [ 1, %if.then35 ], [ 1, %exca_readb.exit68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @yenta_interrupt_wrapper(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %call = tail call i32 @yenta_interrupt(i32 noundef 0, ptr noundef %add.ptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %t) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_interrogate(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !313
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrogate, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef %3) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %entry
  %and = and i32 %3, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %3, 646
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  %or.cond.not = or i1 %tobool.not, %tobool2.not
  %and4 = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and4)
  %cmp = icmp eq i32 %and4, 48
  %or.cond8 = select i1 %or.cond.not, i1 true, i1 %cmp
  br i1 %or.cond8, label %if.then, label %cb_readl.exit.if.end_crit_edge

cb_readl.exit.if.end_crit_edge:                   ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %cb_readl.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_interrogate, %if.then.i9)) #10
          to label %cb_writel.exit [label %if.then.i9], !srcloc !310

if.then.i9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 12, i32 noundef 16384) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i9, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 4194304) #10, !srcloc !312
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  br label %if.end

if.end:                                           ; preds = %cb_writel.exit, %cb_readl.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_get_socket_capabilities(ptr nocapture noundef %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %0 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb_irq, align 4
  %pci_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 20
  %2 = ptrtoint ptr %pci_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pci_irq, align 4
  %3 = load i8, ptr @isa_probe, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @yenta_probe_irq(ptr noundef %socket)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call.sink = phi i32 [ %call, %if.then ], [ 0, %entry.do.end_crit_edge ]
  %4 = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.sink, ptr %4, align 8
  %6 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socket, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.118, i32 noundef %call.sink, i32 noundef %9) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb_readl(ptr nocapture noundef readonly %socket, i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !313
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cb_readl, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6, ptr noundef nonnull @.str.33, i32 noundef %reg, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_fixup_parent_bridge(ptr noundef %cardbus_bridge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.pci_bus, ptr %cardbus_bridge, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %end = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %end2 = getelementptr inbounds %struct.pci_bus, ptr %cardbus_bridge, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %end2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent3 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %end8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %end8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end8, align 4
  %conv = trunc i32 %9 to i8
  %children = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %10)
  %sibling.0101 = load ptr, ptr %children, align 4
  %cmp12.not102 = icmp eq ptr %sibling.0101, %children
  br i1 %cmp12.not102, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %sibling.0104 = phi ptr [ %sibling.0, %for.body.for.body_crit_edge ], [ %sibling.0101, %if.end5.for.body_crit_edge ]
  %upper_limit.0103 = phi i8 [ %upper_limit.1, %for.body.for.body_crit_edge ], [ %conv, %if.end5.for.body_crit_edge ]
  %busn_res14 = getelementptr inbounds %struct.pci_bus, ptr %sibling.0104, i32 0, i32 8
  %11 = ptrtoint ptr %busn_res14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busn_res14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp17 = icmp ule i32 %12, %3
  %conv21 = zext i8 %upper_limit.0103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv21)
  %cmp22.not = icmp ugt i32 %12, %conv21
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp22.not
  %13 = trunc i32 %12 to i8
  %conv27 = add i8 %13, -1
  %upper_limit.1 = select i1 %or.cond, i8 %upper_limit.0103, i8 %conv27
  %14 = ptrtoint ptr %sibling.0104 to i32
  call void @__asan_load4_noabort(i32 %14)
  %sibling.0 = load ptr, ptr %sibling.0104, align 4
  %cmp12.not = icmp eq ptr %sibling.0, %children
  br i1 %cmp12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end5.for.end_crit_edge
  %upper_limit.0.lcssa = phi i8 [ %conv, %if.end5.for.end_crit_edge ], [ %upper_limit.1, %for.body.for.end_crit_edge ]
  %conv36 = zext i8 %upper_limit.0.lcssa to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv36)
  %cmp37 = icmp ugt i32 %5, %conv36
  br i1 %cmp37, label %do.end, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_bus, ptr %cardbus_bridge, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.121, i32 noundef %conv36) #13
  br label %if.end41

if.end41:                                         ; preds = %do.end, %for.end.if.end41_crit_edge
  %15 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv36)
  %cmp45 = icmp ult i32 %16, %conv36
  br i1 %cmp45, label %if.then47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %end2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end2, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %conv36)
  %conv54 = trunc i32 %19 to i8
  %dev58 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 21
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %number, align 4
  %conv59 = zext i8 %21 to i32
  %conv62 = and i32 %19, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.124, i32 noundef %conv59, i32 noundef %16, i32 noundef %conv62) #13
  %22 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv62, ptr %end, align 4
  %self = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %self, align 4
  %call = tail call i32 @pci_write_config_byte(ptr noundef %24, i32 noundef 26, i8 noundef zeroext %conv54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_free_resources(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.yenta_free_res.exit_crit_edge, label %land.lhs.true.i

entry.yenta_free_res.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit

land.lhs.true.i:                                  ; preds = %entry
  %end.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i, label %land.lhs.true.i.yenta_free_res.exit_crit_edge, label %if.then.i

land.lhs.true.i.yenta_free_res.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @release_resource(ptr noundef %arrayidx.i) #10
  br label %yenta_free_res.exit

yenta_free_res.exit:                              ; preds = %if.then.i, %land.lhs.true.i.yenta_free_res.exit_crit_edge, %entry.yenta_free_res.exit_crit_edge
  %flags.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags.i, align 4
  %end3.i = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 13, i32 1
  %7 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %end3.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %arrayidx.i4 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 14
  %11 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i5 = icmp eq i32 %12, 0
  br i1 %cmp.not.i5, label %yenta_free_res.exit.yenta_free_res.exit13_crit_edge, label %land.lhs.true.i8

yenta_free_res.exit.yenta_free_res.exit13_crit_edge: ; preds = %yenta_free_res.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit13

land.lhs.true.i8:                                 ; preds = %yenta_free_res.exit
  %end.i6 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 14, i32 1
  %13 = ptrtoint ptr %end.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.not.i7 = icmp eq i32 %14, 0
  br i1 %cmp2.not.i7, label %land.lhs.true.i8.yenta_free_res.exit13_crit_edge, label %if.then.i10

land.lhs.true.i8.yenta_free_res.exit13_crit_edge: ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit13

if.then.i10:                                      ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #12
  %call.i9 = tail call i32 @release_resource(ptr noundef %arrayidx.i4) #10
  br label %yenta_free_res.exit13

yenta_free_res.exit13:                            ; preds = %if.then.i10, %land.lhs.true.i8.yenta_free_res.exit13_crit_edge, %yenta_free_res.exit.yenta_free_res.exit13_crit_edge
  %flags.i11 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 14, i32 3
  %15 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.i11, align 4
  %end3.i12 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 14, i32 1
  %16 = ptrtoint ptr %end3.i12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %end3.i12, align 4
  %17 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.i4, align 4
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %arrayidx.i14 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 15
  %20 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i15 = icmp eq i32 %21, 0
  br i1 %cmp.not.i15, label %yenta_free_res.exit13.yenta_free_res.exit23_crit_edge, label %land.lhs.true.i18

yenta_free_res.exit13.yenta_free_res.exit23_crit_edge: ; preds = %yenta_free_res.exit13
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit23

land.lhs.true.i18:                                ; preds = %yenta_free_res.exit13
  %end.i16 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 15, i32 1
  %22 = ptrtoint ptr %end.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not.i17 = icmp eq i32 %23, 0
  br i1 %cmp2.not.i17, label %land.lhs.true.i18.yenta_free_res.exit23_crit_edge, label %if.then.i20

land.lhs.true.i18.yenta_free_res.exit23_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit23

if.then.i20:                                      ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #12
  %call.i19 = tail call i32 @release_resource(ptr noundef %arrayidx.i14) #10
  br label %yenta_free_res.exit23

yenta_free_res.exit23:                            ; preds = %if.then.i20, %land.lhs.true.i18.yenta_free_res.exit23_crit_edge, %yenta_free_res.exit13.yenta_free_res.exit23_crit_edge
  %flags.i21 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 15, i32 3
  %24 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %flags.i21, align 4
  %end3.i22 = getelementptr %struct.pci_dev, ptr %19, i32 0, i32 47, i32 15, i32 1
  %25 = ptrtoint ptr %end3.i22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %end3.i22, align 4
  %26 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.i14, align 4
  %27 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socket, align 8
  %arrayidx.i24 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 16
  %29 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i25 = icmp eq i32 %30, 0
  br i1 %cmp.not.i25, label %yenta_free_res.exit23.yenta_free_res.exit33_crit_edge, label %land.lhs.true.i28

yenta_free_res.exit23.yenta_free_res.exit33_crit_edge: ; preds = %yenta_free_res.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit33

land.lhs.true.i28:                                ; preds = %yenta_free_res.exit23
  %end.i26 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 16, i32 1
  %31 = ptrtoint ptr %end.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2.not.i27 = icmp eq i32 %32, 0
  br i1 %cmp2.not.i27, label %land.lhs.true.i28.yenta_free_res.exit33_crit_edge, label %if.then.i30

land.lhs.true.i28.yenta_free_res.exit33_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %yenta_free_res.exit33

if.then.i30:                                      ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  %call.i29 = tail call i32 @release_resource(ptr noundef %arrayidx.i24) #10
  br label %yenta_free_res.exit33

yenta_free_res.exit33:                            ; preds = %if.then.i30, %land.lhs.true.i28.yenta_free_res.exit33_crit_edge, %yenta_free_res.exit23.yenta_free_res.exit33_crit_edge
  %flags.i31 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 16, i32 3
  %33 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags.i31, align 4
  %end3.i32 = getelementptr %struct.pci_dev, ptr %28, i32 0, i32 47, i32 16, i32 1
  %34 = ptrtoint ptr %end3.i32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %end3.i32, align 4
  %35 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx.i24, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_sock_init(ptr noundef %sock) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %io.i = alloca %struct.pccard_io_map, align 4
  %mem.i = alloca %struct.pccard_mem_map, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_sock_init, %if.then.i)) #10
          to label %exca_writeb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 30, i32 noundef 0) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %3, i32 2078
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #10, !srcloc !316
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %5, i32 2078
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_sock_init, %if.then.i15)) #10
          to label %exca_writeb.exit21 [label %if.then.i15], !srcloc !310

if.then.i15:                                      ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %dev3.i14 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i14, ptr noundef nonnull @.str.26, i32 noundef 22, i32 noundef 0) #10
  br label %exca_writeb.exit21

exca_writeb.exit21:                               ; preds = %if.then.i15, %exca_writeb.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr6.i18 = getelementptr i8, ptr %10, i32 2070
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i18, i8 0) #10, !srcloc !316
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr9.i20 = getelementptr i8, ptr %12, i32 2070
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i20) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call fastcc void @yenta_interrogate(ptr noundef %add.ptr)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #10
  %14 = call ptr @memcpy(ptr %res.i, ptr @__const.yenta_clear_maps.res, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %io.i) #10
  %15 = call ptr @memcpy(ptr %io.i, ptr @__const.yenta_clear_maps.io, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mem.i) #10
  %16 = getelementptr inbounds %struct.pccard_mem_map, ptr %mem.i, i32 0, i32 5
  %17 = call ptr @memset(ptr %mem.i, i32 0, i32 12)
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %res.i, ptr %16, align 4
  %call.i = call i32 @yenta_set_socket(ptr noundef %sock, ptr noundef nonnull @dead_socket) #10
  %19 = ptrtoint ptr %io.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %io.i, align 4
  %call5.i = call i32 @yenta_set_io_map(ptr noundef %sock, ptr noundef nonnull %io.i) #10
  %20 = ptrtoint ptr %io.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %io.i, align 4
  %call5.1.i = call i32 @yenta_set_io_map(ptr noundef %sock, ptr noundef nonnull %io.i) #10
  %21 = ptrtoint ptr %mem.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mem.i, align 4
  %call13.i = call i32 @yenta_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem.i) #10
  %22 = ptrtoint ptr %mem.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %mem.i, align 4
  %call13.1.i = call i32 @yenta_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem.i) #10
  %23 = ptrtoint ptr %mem.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %mem.i, align 4
  %call13.2.i = call i32 @yenta_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem.i) #10
  %24 = ptrtoint ptr %mem.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %mem.i, align 4
  %call13.3.i = call i32 @yenta_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem.i) #10
  %25 = ptrtoint ptr %mem.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %mem.i, align 4
  %call13.4.i = call i32 @yenta_set_mem_map(ptr noundef %sock, ptr noundef nonnull %mem.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mem.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %io.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #10
  %type = getelementptr i8, ptr %sock, i32 1528
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %exca_writeb.exit21.if.end_crit_edge, label %land.lhs.true

exca_writeb.exit21.if.end_crit_edge:              ; preds = %exca_writeb.exit21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %exca_writeb.exit21
  %sock_init = getelementptr inbounds %struct.cardbus_type, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %sock_init to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sock_init, align 4
  %tobool2.not = icmp eq ptr %29, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 %29(ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %exca_writeb.exit21.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_sock_init, %if.then.i23)) #10
          to label %cb_writel.exit [label %if.then.i23], !srcloc !310

if.then.i23:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %dev3.i22 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i22, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 6) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i23, %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 100663296) #10, !srcloc !312
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %35, i32 4
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_sock_suspend(ptr nocapture noundef readonly %sock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_sock_suspend, %if.then.i)) #10
          to label %cb_writel.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 0) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !312
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_get_status(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !313
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_get_status, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef %3) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %entry
  %and = shl i32 %3, 1
  %or = and i32 %and, 12288
  %and4 = and i32 %3, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, i32 16384, i32 0
  %or7 = or i32 %cond6, %or
  %and8 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, i32 0, i32 16384
  %or11 = or i32 %or7, %cond10
  %and12 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then

if.then:                                          ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and15 = shl i32 %3, 10
  %6 = and i32 %and15, 1024
  %cond21 = select i1 %tobool9.not, i32 128, i32 0
  %and23 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, i32 0, i32 320
  %or14 = or i32 %6, %cond21
  %or18 = or i32 %or14, %cond25
  %or22 = or i32 %or18, %or11
  %or26 = or i32 %or22, 2048
  br label %if.end72

if.else:                                          ; preds = %cb_readl.exit
  %and27 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else.if.end72_crit_edge, label %if.then29

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then29:                                        ; preds = %if.else
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %8, i32 2049
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_get_status, %if.then.i105)) #10
          to label %exca_readb.exit [label %if.then.i105], !srcloc !310

if.then.i105:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i105, %if.then29
  %conv = zext i8 %9 to i32
  %and31 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and31)
  %cmp = icmp eq i32 %and31, 12
  %cond33 = select i1 %cmp, i32 128, i32 0
  %or34 = or i32 %cond33, %or11
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr1.i108 = getelementptr i8, ptr %13, i32 2051
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i108) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_get_status, %if.then.i111)) #10
          to label %exca_readb.exit112 [label %if.then.i111], !srcloc !310

if.then.i111:                                     ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %dev7.i109 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %conv.i110 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i109, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i110) #10
  br label %exca_readb.exit112

exca_readb.exit112:                               ; preds = %if.then.i111, %exca_readb.exit
  %17 = and i8 %14, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool38.not = icmp eq i8 %17, 0
  %and47 = shl nuw nsw i32 %conv, 4
  %18 = and i32 %and47, 48
  %and41 = shl nuw nsw i32 %conv, 10
  %19 = and i32 %and41, 1024
  %.sink113 = select i1 %tobool38.not, i32 48, i32 1024
  %.v = select i1 %tobool38.not, i32 %18, i32 %19
  %20 = or i32 %or34, %.v
  %or55 = xor i32 %20, %.sink113
  %and57 = lshr i32 %conv, 4
  %and57.lobit = and i32 %and57, 1
  %and62 = shl nuw nsw i32 %conv, 1
  %21 = and i32 %and62, 64
  %and67 = shl nuw nsw i32 %conv, 2
  %22 = and i32 %and67, 256
  %or60 = or i32 %21, %and57.lobit
  %or65 = or i32 %or60, %22
  %or70 = or i32 %or65, %or55
  br label %if.end72

if.end72:                                         ; preds = %exca_readb.exit112, %if.else.if.end72_crit_edge, %if.then
  %val.1 = phi i32 [ %or26, %if.then ], [ %or70, %exca_readb.exit112 ], [ %or11, %if.else.if.end72_crit_edge ]
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %val.1, ptr %value, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_set_socket(ptr noundef %sock, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %Vcc = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Vcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @yenta_set_power(ptr noundef %add.ptr, ptr noundef %state)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io_irq = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %io_irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %io_irq, align 2
  %conv2 = zext i8 %3 to i32
  %io_irq3 = getelementptr i8, ptr %sock, i32 -56
  %4 = ptrtoint ptr %io_irq3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %io_irq3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i, align 2, !annotation !319
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 62, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i)) #10
          to label %config_readw.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i, ptr noundef nonnull @.str.29, i32 noundef 62, i32 noundef %conv.i) #10
  br label %config_readw.exit

config_readw.exit:                                ; preds = %if.then.i, %if.end
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %14 = and i16 %13, -193
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !313
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i219)) #10
          to label %cb_readl.exit [label %if.then.i219], !srcloc !310

if.then.i219:                                     ; preds = %config_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef %18) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i219, %config_readw.exit
  %and7 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %cb_readl.exit
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %23 = trunc i32 %22 to i16
  %24 = and i16 %23, 64
  %conv12 = or i16 %24, %14
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %26, i32 2051
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i223)) #10
          to label %exca_readb.exit [label %if.then.i223], !srcloc !310

if.then.i223:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %conv.i222 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i222) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i223, %if.then8
  %30 = and i8 %27, -16
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 46
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool17.not = icmp eq i32 %34, 0
  br i1 %tobool17.not, label %if.then18, label %exca_readb.exit.if.end30_crit_edge

exca_readb.exit.if.end30_crit_edge:               ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then18:                                        ; preds = %exca_readb.exit
  %cb_irq = getelementptr i8, ptr %sock, i32 -60
  %35 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not = icmp eq i32 %36, 0
  br i1 %tobool19.not, label %cond.false, label %if.then18.cond.end_crit_edge

if.then18.cond.end_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %io_irq to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %io_irq, align 2
  %conv22 = zext i8 %38 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then18.cond.end_crit_edge
  %cond23 = phi i32 [ %conv22, %cond.false ], [ %36, %if.then18.cond.end_crit_edge ]
  %39 = trunc i32 %cond23 to i8
  %conv26 = or i8 %30, %39
  %40 = or i16 %conv12, 128
  br label %if.end30

if.end30:                                         ; preds = %cond.end, %exca_readb.exit.if.end30_crit_edge
  %bridge.0 = phi i16 [ %conv12, %exca_readb.exit.if.end30_crit_edge ], [ %40, %cond.end ]
  %intr.0 = phi i8 [ %30, %exca_readb.exit.if.end30_crit_edge ], [ %conv26, %cond.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i225)) #10
          to label %exca_writeb.exit [label %if.then.i225], !srcloc !310

if.then.i225:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %conv.i224 = zext i8 %intr.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i224) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i225, %if.end30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %44, i32 2051
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %intr.0) #10, !srcloc !316
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %46, i32 2051
  %47 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end146

if.else:                                          ; preds = %cb_readl.exit
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr1.i230 = getelementptr i8, ptr %49, i32 2051
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i230) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i233)) #10
          to label %exca_readb.exit234 [label %if.then.i233], !srcloc !310

if.then.i233:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 8
  %dev7.i231 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %conv.i232 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i231, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i232) #10
  br label %exca_readb.exit234

exca_readb.exit234:                               ; preds = %if.then.i233, %if.else
  %53 = and i8 %50, -112
  %54 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state, align 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 64
  %58 = or i8 %57, %53
  %59 = and i8 %56, 32
  %60 = or i8 %58, %59
  %conv48 = xor i8 %60, 64
  %61 = ptrtoint ptr %io_irq to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %io_irq, align 2
  %conv50 = zext i8 %62 to i32
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %irq52 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %irq52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv50)
  %cmp53.not = icmp eq i32 %66, %conv50
  %67 = or i16 %14, 128
  %bridge.1 = select i1 %cmp53.not, i16 %14, i16 %67
  %or59216 = select i1 %cmp53.not, i8 0, i8 %62
  %reg.0 = or i8 %conv48, %or59216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i237)) #10
          to label %exca_writeb.exit243 [label %if.then.i237], !srcloc !310

if.then.i237:                                     ; preds = %exca_readb.exit234
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %dev3.i235 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %conv.i236 = zext i8 %reg.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i235, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i236) #10
  br label %exca_writeb.exit243

exca_writeb.exit243:                              ; preds = %if.then.i237, %exca_readb.exit234
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr6.i240 = getelementptr i8, ptr %71, i32 2051
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i240, i8 %reg.0) #10, !srcloc !316
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr9.i242 = getelementptr i8, ptr %73, i32 2051
  %74 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i242) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %add.ptr1.i246 = getelementptr i8, ptr %76, i32 2050
  %77 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i246) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i249)) #10
          to label %exca_readb.exit250 [label %if.then.i249], !srcloc !310

if.then.i249:                                     ; preds = %exca_writeb.exit243
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  %dev7.i247 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %conv.i248 = zext i8 %77 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i247, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %conv.i248) #10
  br label %exca_readb.exit250

exca_readb.exit250:                               ; preds = %if.then.i249, %exca_writeb.exit243
  %80 = and i8 %77, 27
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state, align 4
  %and73 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %reg.1.v = select i1 %tobool74.not, i8 64, i8 96
  %reg.1 = or i8 %reg.1.v, %80
  %and81 = lshr i32 %82, 2
  %83 = trunc i32 %and81 to i8
  %84 = and i8 %83, -128
  %85 = or i8 %reg.1, %84
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr1.i253 = getelementptr i8, ptr %87, i32 2050
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i253) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i256)) #10
          to label %exca_readb.exit257 [label %if.then.i256], !srcloc !310

if.then.i256:                                     ; preds = %exca_readb.exit250
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %dev7.i254 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %conv.i255 = zext i8 %88 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i254, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %conv.i255) #10
  br label %exca_readb.exit257

exca_readb.exit257:                               ; preds = %if.then.i256, %exca_readb.exit250
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %85)
  %cmp91.not = icmp eq i8 %88, %85
  br i1 %cmp91.not, label %exca_readb.exit257.if.end94_crit_edge, label %if.then93

exca_readb.exit257.if.end94_crit_edge:            ; preds = %exca_readb.exit257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then93:                                        ; preds = %exca_readb.exit257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i260)) #10
          to label %exca_writeb.exit266 [label %if.then.i260], !srcloc !310

if.then.i260:                                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %dev3.i258 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %conv.i259 = zext i8 %85 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i258, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %conv.i259) #10
  br label %exca_writeb.exit266

exca_writeb.exit266:                              ; preds = %if.then.i260, %if.then93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 4
  %add.ptr6.i263 = getelementptr i8, ptr %94, i32 2050
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i263, i8 %85) #10, !srcloc !316
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr9.i265 = getelementptr i8, ptr %96, i32 2050
  %97 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i265) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end94

if.end94:                                         ; preds = %exca_writeb.exit266, %exca_readb.exit257.if.end94_crit_edge
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr1.i269 = getelementptr i8, ptr %99, i32 2053
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i269) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i272)) #10
          to label %exca_readb.exit273 [label %if.then.i272], !srcloc !310

if.then.i272:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr, align 8
  %dev7.i270 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %conv.i271 = zext i8 %100 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i270, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i271) #10
  br label %exca_readb.exit273

exca_readb.exit273:                               ; preds = %if.then.i272, %if.end94
  %103 = and i8 %100, -16
  %104 = or i8 %103, 8
  %105 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state, align 4
  %and103 = and i32 %106, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %csc_mask114 = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 1
  %107 = ptrtoint ptr %csc_mask114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %csc_mask114, align 4
  br i1 %tobool104.not, label %if.else113, label %if.then105

if.then105:                                       ; preds = %exca_readb.exit273
  call void @__sanitizer_cov_trace_pc() #12
  %and106 = and i32 %108, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %109 = or i8 %103, 9
  %spec.select = select i1 %tobool107.not, i8 %104, i8 %109
  br label %if.end138

if.else113:                                       ; preds = %exca_readb.exit273
  call void @__sanitizer_cov_trace_pc() #12
  %and115 = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %110 = or i8 %103, 9
  %spec.select217 = select i1 %tobool116.not, i8 %104, i8 %110
  %111 = trunc i32 %108 to i8
  %112 = lshr i8 %111, 4
  %113 = and i8 %112, 2
  %114 = or i8 %113, %spec.select217
  %115 = and i8 %112, 4
  %116 = or i8 %114, %115
  br label %if.end138

if.end138:                                        ; preds = %if.else113, %if.then105
  %reg.5 = phi i8 [ %spec.select, %if.then105 ], [ %116, %if.else113 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i276)) #10
          to label %exca_writeb.exit282 [label %if.then.i276], !srcloc !310

if.then.i276:                                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr, align 8
  %dev3.i274 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  %conv.i275 = zext i8 %reg.5 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i274, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i275) #10
  br label %exca_writeb.exit282

exca_writeb.exit282:                              ; preds = %if.then.i276, %if.end138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr6.i279 = getelementptr i8, ptr %120, i32 2053
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i279, i8 %reg.5) #10, !srcloc !316
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %add.ptr9.i281 = getelementptr i8, ptr %122, i32 2053
  %123 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i281) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i, align 4
  %add.ptr1.i285 = getelementptr i8, ptr %125, i32 2052
  %126 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i285) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i288)) #10
          to label %exca_readb.exit289 [label %if.then.i288], !srcloc !310

if.then.i288:                                     ; preds = %exca_writeb.exit282
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr, align 8
  %dev7.i286 = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %conv.i287 = zext i8 %126 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i286, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %conv.i287) #10
  br label %exca_readb.exit289

exca_readb.exit289:                               ; preds = %if.then.i288, %exca_writeb.exit282
  %zoom_video = getelementptr inbounds %struct.pcmcia_socket, ptr %sock, i32 0, i32 26
  %129 = ptrtoint ptr %zoom_video to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %zoom_video, align 4
  %tobool140.not = icmp eq ptr %130, null
  br i1 %tobool140.not, label %exca_readb.exit289.if.end146_crit_edge, label %if.then141

exca_readb.exit289.if.end146_crit_edge:           ; preds = %exca_readb.exit289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then141:                                       ; preds = %exca_readb.exit289
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %state, align 4
  %and144 = and i32 %132, 32768
  call void %130(ptr noundef %sock, i32 noundef %and144) #10
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %exca_readb.exit289.if.end146_crit_edge, %exca_writeb.exit
  %bridge.2 = phi i16 [ %bridge.0, %exca_writeb.exit ], [ %bridge.1, %if.then141 ], [ %bridge.1, %exca_readb.exit289.if.end146_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i292)) #10
          to label %config_writew.exit [label %if.then.i292], !srcloc !310

if.then.i292:                                     ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr, align 8
  %dev3.i290 = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  %conv.i291 = zext i16 %bridge.2 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i290, ptr noundef nonnull @.str.29, i32 noundef 62, i32 noundef %conv.i291) #10
  br label %config_writew.exit

config_writew.exit:                               ; preds = %if.then.i292, %if.end146
  %135 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_word(ptr noundef %136, i32 noundef 62, i16 noundef zeroext %bridge.2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i294)) #10
          to label %cb_writel.exit [label %if.then.i294], !srcloc !310

if.then.i294:                                     ; preds = %config_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 8
  %dev3.i293 = getelementptr inbounds %struct.pci_dev, ptr %138, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i293, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i294, %config_writew.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 -1) #10, !srcloc !312
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 4
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #10, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_socket, %if.then.i297)) #10
          to label %cb_writel.exit300 [label %if.then.i297], !srcloc !310

if.then.i297:                                     ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr, align 8
  %dev3.i296 = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i296, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 6) #10
  br label %cb_writel.exit300

cb_writel.exit300:                                ; preds = %if.then.i297, %cb_writel.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  call void @arm_heavy_mb() #10
  %146 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %147, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 100663296) #10, !srcloc !312
  %148 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %149, i32 4
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %151 = ptrtoint ptr %Vcc to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %Vcc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp149.not = icmp eq i8 %152, 0
  br i1 %cmp149.not, label %cb_writel.exit300.if.end152_crit_edge, label %if.then151

cb_writel.exit300.if.end152_crit_edge:            ; preds = %cb_writel.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then151:                                       ; preds = %cb_writel.exit300
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @yenta_set_power(ptr noundef %add.ptr, ptr noundef %state)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %cb_writel.exit300.if.end152_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_set_io_map(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 64, %conv
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 2054
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i)) #10
          to label %exca_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %conv.i = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i, %if.end
  %conv4 = zext i8 %4 to i32
  %and = and i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %exca_readb.exit.if.end11_crit_edge, label %if.then6

exca_readb.exit.if.end11_crit_edge:               ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %exca_readb.exit
  %7 = trunc i32 %shl to i8
  %8 = xor i8 %7, -1
  %conv10 = and i8 %4, %8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i99)) #10
          to label %exca_writeb.exit [label %if.then.i99], !srcloc !310

if.then.i99:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv.i98 = zext i8 %conv10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i98) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i99, %if.then6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 2054
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv10) #10, !srcloc !316
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 2054
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end11

if.end11:                                         ; preds = %exca_writeb.exit, %exca_readb.exit.if.end11_crit_edge
  %addr.0 = phi i8 [ %conv10, %exca_writeb.exit ], [ %4, %exca_readb.exit.if.end11_crit_edge ]
  %shl12 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl12, 8
  %start = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 3
  %16 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writew.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i104)) #10
          to label %exca_writew.exit [label %if.then.i104], !srcloc !310

if.then.i104:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev3.i102 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %conv.i103 = and i32 %17, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writew.__UNIQUE_ID_ddebug256, ptr noundef %dev3.i102, ptr noundef nonnull @.str.29, i32 noundef %add, i32 noundef %conv.i103) #10
  br label %exca_writew.exit

exca_writew.exit:                                 ; preds = %if.then.i104, %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  %conv6.i = trunc i32 %17 to i8
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %21, i32 2048
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i106, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %conv6.i) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %22 = lshr i32 %17, 8
  %conv11.i = trunc i32 %22 to i8
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 2048
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %add
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 %conv11.i) #10, !srcloc !316
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %26, i32 2048
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 %add
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %29, i32 2048
  %add.ptr26.i = getelementptr i8, ptr %add.ptr25.i, i32 %add
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i, i32 1
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %add17 = add nuw nsw i32 %shl12, 10
  %stop = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 4
  %31 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writew.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i109)) #10
          to label %exca_writew.exit123 [label %if.then.i109], !srcloc !310

if.then.i109:                                     ; preds = %exca_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %dev3.i107 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %conv.i108 = and i32 %32, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writew.__UNIQUE_ID_ddebug256, ptr noundef %dev3.i107, ptr noundef nonnull @.str.29, i32 noundef %add17, i32 noundef %conv.i108) #10
  br label %exca_writew.exit123

exca_writew.exit123:                              ; preds = %if.then.i109, %exca_writew.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  %conv6.i110 = trunc i32 %32 to i8
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %36, i32 2048
  %add.ptr7.i113 = getelementptr i8, ptr %add.ptr.i112, i32 %add17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i113, i8 %conv6.i110) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %37 = lshr i32 %32, 8
  %conv11.i114 = trunc i32 %37 to i8
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr13.i115 = getelementptr i8, ptr %39, i32 2048
  %add.ptr14.i116 = getelementptr i8, ptr %add.ptr13.i115, i32 %add17
  %add.ptr15.i117 = getelementptr i8, ptr %add.ptr14.i116, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i117, i8 %conv11.i114) #10, !srcloc !316
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr17.i118 = getelementptr i8, ptr %41, i32 2048
  %add.ptr18.i119 = getelementptr i8, ptr %add.ptr17.i118, i32 %add17
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i119) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr25.i120 = getelementptr i8, ptr %44, i32 2048
  %add.ptr26.i121 = getelementptr i8, ptr %add.ptr25.i120, i32 %add17
  %add.ptr27.i122 = getelementptr i8, ptr %add.ptr26.i121, i32 1
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i122) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr1.i126 = getelementptr i8, ptr %47, i32 2055
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i126) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i129)) #10
          to label %exca_readb.exit130 [label %if.then.i129], !srcloc !310

if.then.i129:                                     ; preds = %exca_writew.exit123
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 8
  %dev7.i127 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %conv.i128 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i127, ptr noundef nonnull @.str.26, i32 noundef 7, i32 noundef %conv.i128) #10
  br label %exca_readb.exit130

exca_readb.exit130:                               ; preds = %if.then.i129, %exca_writew.exit123
  %shl22 = shl i32 15, %shl12
  %51 = trunc i32 %shl22 to i8
  %52 = xor i8 %51, -1
  %conv25 = and i8 %48, %52
  %flags = getelementptr inbounds %struct.pccard_io_map, ptr %io, i32 0, i32 1
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags, align 1
  %55 = and i8 %54, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool28.not = icmp eq i8 %55, 0
  %shl31 = shl i32 4, %shl12
  %56 = trunc i32 %shl31 to i8
  %conv33 = select i1 %tobool28.not, i8 0, i8 %56
  %ioctl.0 = or i8 %conv33, %conv25
  %57 = and i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool38.not = icmp eq i8 %57, 0
  %shl41 = shl nuw i32 1, %shl12
  %58 = trunc i32 %shl41 to i8
  %conv44 = select i1 %tobool38.not, i8 0, i8 %58
  %ioctl.1 = or i8 %ioctl.0, %conv44
  %59 = and i8 %54, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool49.not = icmp eq i8 %59, 0
  %shl52 = shl i32 2, %shl12
  %60 = trunc i32 %shl52 to i8
  %conv55 = select i1 %tobool49.not, i8 0, i8 %60
  %ioctl.2 = or i8 %ioctl.1, %conv55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i133)) #10
          to label %exca_writeb.exit139 [label %if.then.i133], !srcloc !310

if.then.i133:                                     ; preds = %exca_readb.exit130
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 8
  %dev3.i131 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %conv.i132 = zext i8 %ioctl.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i131, ptr noundef nonnull @.str.26, i32 noundef 7, i32 noundef %conv.i132) #10
  br label %exca_writeb.exit139

exca_writeb.exit139:                              ; preds = %if.then.i133, %exca_readb.exit130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr6.i136 = getelementptr i8, ptr %64, i32 2055
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i136, i8 %ioctl.2) #10, !srcloc !316
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr9.i138 = getelementptr i8, ptr %66, i32 2055
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i138) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags, align 1
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool60.not = icmp eq i8 %70, 0
  br i1 %tobool60.not, label %exca_writeb.exit139.cleanup_crit_edge, label %if.then61

exca_writeb.exit139.cleanup_crit_edge:            ; preds = %exca_writeb.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %exca_writeb.exit139
  %71 = trunc i32 %shl to i8
  %conv65 = or i8 %addr.0, %71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_io_map, %if.then.i142)) #10
          to label %exca_writeb.exit148 [label %if.then.i142], !srcloc !310

if.then.i142:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %dev3.i140 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %conv.i141 = zext i8 %conv65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i140, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i141) #10
  br label %exca_writeb.exit148

exca_writeb.exit148:                              ; preds = %if.then.i142, %if.then61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr6.i145 = getelementptr i8, ptr %75, i32 2054
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i145, i8 %conv65) #10, !srcloc !316
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr9.i147 = getelementptr i8, ptr %77, i32 2054
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i147) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %cleanup

cleanup:                                          ; preds = %exca_writeb.exit148, %exca_writeb.exit139.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %exca_writeb.exit148 ], [ 0, %exca_writeb.exit139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_set_mem_map(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %mem) #2 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #10
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !319
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !319
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %res = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 5
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res, align 4
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %region, ptr noundef %8) #10
  %9 = ptrtoint ptr %mem to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mem, align 4
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %card_start3 = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 4
  %15 = ptrtoint ptr %card_start3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %card_start3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp = icmp ult i8 %10, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5 = icmp ule i32 %12, %14
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  %xor = xor i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %xor)
  %tobool.not = icmp ult i32 %xor, 16777216
  %or.cond152 = select i1 %or.cond, i1 %tobool.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %16)
  %tobool10.not = icmp ult i32 %16, 67108864
  %or.cond153 = select i1 %or.cond152, i1 %tobool10.not, i1 false
  br i1 %or.cond153, label %lor.lhs.false11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %entry
  %speed = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 2
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %18)
  %cmp13 = icmp ugt i16 %18, 1000
  br i1 %cmp13, label %lor.lhs.false11.cleanup_crit_edge, label %if.end

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  %shl = shl nuw i32 1, %conv
  %base.i = getelementptr i8, ptr %sock, i32 -52
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %20, i32 2054
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i)) #10
          to label %exca_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %conv.i = zext i8 %21 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i, %if.end
  %conv16 = zext i8 %21 to i32
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %exca_readb.exit.if.end24_crit_edge, label %if.then19

exca_readb.exit.if.end24_crit_edge:               ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %exca_readb.exit
  %24 = trunc i32 %shl to i8
  %25 = xor i8 %24, -1
  %conv23 = and i8 %21, %25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i156)) #10
          to label %exca_writeb.exit [label %if.then.i156], !srcloc !310

if.then.i156:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %conv.i155 = zext i8 %conv23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i155) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i156, %if.then19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %29, i32 2054
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv23) #10, !srcloc !316
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %31, i32 2054
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end24

if.end24:                                         ; preds = %exca_writeb.exit, %exca_readb.exit.if.end24_crit_edge
  %addr.0 = phi i8 [ %conv23, %exca_writeb.exit ], [ %21, %exca_readb.exit.if.end24_crit_edge ]
  %add = add nuw nsw i32 %conv, 64
  %shr25 = lshr i32 %12, 24
  %conv26 = trunc i32 %shr25 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i161)) #10
          to label %exca_writeb.exit167 [label %if.then.i161], !srcloc !310

if.then.i161:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %dev3.i159 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i159, ptr noundef nonnull @.str.26, i32 noundef %add, i32 noundef %shr25) #10
  br label %exca_writeb.exit167

exca_writeb.exit167:                              ; preds = %if.then.i161, %if.end24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %36, i32 2048
  %add.ptr6.i164 = getelementptr i8, ptr %add.ptr.i163, i32 %add
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i164, i8 %conv26) #10, !srcloc !316
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr8.i165 = getelementptr i8, ptr %38, i32 2048
  %add.ptr9.i166 = getelementptr i8, ptr %add.ptr8.i165, i32 %add
  %39 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i166) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %shr27 = lshr i32 %12, 12
  %40 = trunc i32 %shr27 to i16
  %conv29 = and i16 %40, 4095
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %mem, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags, align 1
  %43 = and i8 %42, 2
  %44 = zext i8 %43 to i16
  %45 = shl nuw i16 %44, 14
  %46 = or i16 %45, %conv29
  %47 = and i8 %42, 8
  %48 = zext i8 %47 to i16
  %49 = shl nuw nsw i16 %48, 11
  %50 = or i16 %46, %49
  %shl46 = shl nuw nsw i32 %conv, 3
  %add47 = add nuw nsw i32 %shl46, 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writew.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i170)) #10
          to label %exca_writew.exit [label %if.then.i170], !srcloc !310

if.then.i170:                                     ; preds = %exca_writeb.exit167
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 8
  %dev3.i168 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %conv.i169 = zext i16 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writew.__UNIQUE_ID_ddebug256, ptr noundef %dev3.i168, ptr noundef nonnull @.str.29, i32 noundef %add47, i32 noundef %conv.i169) #10
  br label %exca_writew.exit

exca_writew.exit:                                 ; preds = %if.then.i170, %exca_writeb.exit167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  call void @arm_heavy_mb() #10
  %conv6.i = trunc i32 %shr27 to i8
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %54, i32 2048
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i172, i32 %add47
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i, i8 %conv6.i) #10, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @arm_heavy_mb() #10
  %55 = lshr i16 %50, 8
  %conv11.i = trunc i16 %55 to i8
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %57, i32 2048
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %add47
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i, i8 %conv11.i) #10, !srcloc !316
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %59, i32 2048
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 %add47
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %62, i32 2048
  %add.ptr26.i = getelementptr i8, ptr %add.ptr25.i, i32 %add47
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i, i32 1
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %shr49 = lshr i32 %14, 12
  %64 = trunc i32 %shr49 to i16
  %conv51 = and i16 %64, 4095
  %65 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %speed, align 2
  %67 = udiv i16 %66, 120
  %div = zext i16 %67 to i32
  %68 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div, label %sw.default [
    i32 0, label %exca_writew.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb57
  ]

exca_writew.exit.sw.epilog_crit_edge:             ; preds = %exca_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %exca_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = or i16 %conv51, 16384
  br label %sw.epilog

sw.bb57:                                          ; preds = %exca_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %70 = or i16 %conv51, -32768
  br label %sw.epilog

sw.default:                                       ; preds = %exca_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %71 = or i16 %conv51, -16384
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb57, %sw.bb, %exca_writew.exit.sw.epilog_crit_edge
  %word.2 = phi i16 [ %71, %sw.default ], [ %70, %sw.bb57 ], [ %69, %sw.bb ], [ %conv51, %exca_writew.exit.sw.epilog_crit_edge ]
  %add66 = add nuw nsw i32 %shl46, 18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writew.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i175)) #10
          to label %exca_writew.exit189 [label %if.then.i175], !srcloc !310

if.then.i175:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %dev3.i173 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %conv.i174 = zext i16 %word.2 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writew.__UNIQUE_ID_ddebug256, ptr noundef %dev3.i173, ptr noundef nonnull @.str.29, i32 noundef %add66, i32 noundef %conv.i174) #10
  br label %exca_writew.exit189

exca_writew.exit189:                              ; preds = %if.then.i175, %sw.epilog
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  call void @arm_heavy_mb() #10
  %conv6.i176 = trunc i16 %word.2 to i8
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %75, i32 2048
  %add.ptr7.i179 = getelementptr i8, ptr %add.ptr.i178, i32 %add66
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i179, i8 %conv6.i176) #10, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @arm_heavy_mb() #10
  %76 = lshr i16 %word.2, 8
  %conv11.i180 = trunc i16 %76 to i8
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %add.ptr13.i181 = getelementptr i8, ptr %78, i32 2048
  %add.ptr14.i182 = getelementptr i8, ptr %add.ptr13.i181, i32 %add66
  %add.ptr15.i183 = getelementptr i8, ptr %add.ptr14.i182, i32 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i183, i8 %conv11.i180) #10, !srcloc !316
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %add.ptr17.i184 = getelementptr i8, ptr %80, i32 2048
  %add.ptr18.i185 = getelementptr i8, ptr %add.ptr17.i184, i32 %add66
  %81 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i185) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr25.i186 = getelementptr i8, ptr %83, i32 2048
  %add.ptr26.i187 = getelementptr i8, ptr %add.ptr25.i186, i32 %add66
  %add.ptr27.i188 = getelementptr i8, ptr %add.ptr26.i187, i32 1
  %84 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i188) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %sub = sub i32 %16, %12
  %shr67 = lshr i32 %sub, 12
  %85 = trunc i32 %shr67 to i16
  %conv69 = and i16 %85, 16383
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags, align 1
  %88 = and i8 %87, 16
  %89 = zext i8 %88 to i16
  %90 = shl nuw i16 %89, 11
  %91 = or i16 %90, %conv69
  %92 = and i8 %87, 32
  %93 = zext i8 %92 to i16
  %94 = shl nuw nsw i16 %93, 9
  %95 = or i16 %91, %94
  %add90 = add nuw nsw i32 %shl46, 20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writew.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i192)) #10
          to label %exca_writew.exit206 [label %if.then.i192], !srcloc !310

if.then.i192:                                     ; preds = %exca_writew.exit189
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  %dev3.i190 = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %conv.i191 = zext i16 %95 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writew.__UNIQUE_ID_ddebug256, ptr noundef %dev3.i190, ptr noundef nonnull @.str.29, i32 noundef %add90, i32 noundef %conv.i191) #10
  br label %exca_writew.exit206

exca_writew.exit206:                              ; preds = %if.then.i192, %exca_writew.exit189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  call void @arm_heavy_mb() #10
  %conv6.i193 = trunc i32 %shr67 to i8
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %99, i32 2048
  %add.ptr7.i196 = getelementptr i8, ptr %add.ptr.i195, i32 %add90
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i196, i8 %conv6.i193) #10, !srcloc !316
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  call void @arm_heavy_mb() #10
  %100 = lshr i16 %95, 8
  %conv11.i197 = trunc i16 %100 to i8
  %101 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i, align 4
  %add.ptr13.i198 = getelementptr i8, ptr %102, i32 2048
  %add.ptr14.i199 = getelementptr i8, ptr %add.ptr13.i198, i32 %add90
  %add.ptr15.i200 = getelementptr i8, ptr %add.ptr14.i199, i32 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i200, i8 %conv11.i197) #10, !srcloc !316
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %add.ptr17.i201 = getelementptr i8, ptr %104, i32 2048
  %add.ptr18.i202 = getelementptr i8, ptr %add.ptr17.i201, i32 %add90
  %105 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18.i202) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr25.i203 = getelementptr i8, ptr %107, i32 2048
  %add.ptr26.i204 = getelementptr i8, ptr %add.ptr25.i203, i32 %add90
  %add.ptr27.i205 = getelementptr i8, ptr %add.ptr26.i204, i32 1
  %108 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i205) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %109 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %flags, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool94.not = icmp eq i8 %111, 0
  br i1 %tobool94.not, label %exca_writew.exit206.cleanup_crit_edge, label %if.then95

exca_writew.exit206.cleanup_crit_edge:            ; preds = %exca_writew.exit206
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then95:                                        ; preds = %exca_writew.exit206
  %112 = trunc i32 %shl to i8
  %conv99 = or i8 %addr.0, %112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_mem_map, %if.then.i209)) #10
          to label %exca_writeb.exit215 [label %if.then.i209], !srcloc !310

if.then.i209:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr, align 8
  %dev3.i207 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %conv.i208 = zext i8 %conv99 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i207, ptr noundef nonnull @.str.26, i32 noundef 6, i32 noundef %conv.i208) #10
  br label %exca_writeb.exit215

exca_writeb.exit215:                              ; preds = %if.then.i209, %if.then95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  call void @arm_heavy_mb() #10
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr6.i212 = getelementptr i8, ptr %116, i32 2054
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i212, i8 %conv99) #10, !srcloc !316
  %117 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i, align 4
  %add.ptr9.i214 = getelementptr i8, ptr %118, i32 2054
  %119 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i214) #10, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %cleanup

cleanup:                                          ; preds = %exca_writeb.exit215, %exca_writew.exit206.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %exca_writeb.exit215 ], [ 0, %exca_writew.exit206.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @yenta_set_power(ptr nocapture noundef readonly %socket, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !313
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_power, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 8, i32 noundef %3) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %entry
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %cb_readl.exit.if.else51_crit_edge

cb_readl.exit.if.else51_crit_edge:                ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

land.lhs.true:                                    ; preds = %cb_readl.exit
  %flags = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else51_crit_edge, label %if.then

land.lhs.true.if.else51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else51

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 2050
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_power, %if.then.i102)) #10
          to label %exca_readb.exit [label %if.then.i102], !srcloc !310

if.then.i102:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %conv.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i102, %if.then
  %and4 = and i8 %10, -32
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and7 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %Vcc27 = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 2
  %15 = ptrtoint ptr %Vcc27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %Vcc27, align 4
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %exca_readb.exit
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %16, label %if.then9.sw.epilog_crit_edge [
    i8 33, label %sw.bb
    i8 50, label %sw.bb13
  ]

if.then9.sw.epilog_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i8 %and4, 24
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %19 = or i8 %and4, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb, %if.then9.sw.epilog_crit_edge
  %reg.0 = phi i8 [ %19, %sw.bb13 ], [ %18, %sw.bb ], [ 0, %if.then9.sw.epilog_crit_edge ]
  %Vpp = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %Vpp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %Vpp, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %21, label %sw.epilog.if.end_crit_edge [
    i8 33, label %sw.epilog.sw.bb18_crit_edge
    i8 50, label %sw.epilog.sw.bb18_crit_edge116
    i8 120, label %sw.bb22
  ]

sw.epilog.sw.bb18_crit_edge116:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb18

sw.epilog.sw.bb18_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb18

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb18:                                          ; preds = %sw.epilog.sw.bb18_crit_edge, %sw.epilog.sw.bb18_crit_edge116
  %23 = or i8 %reg.0, 1
  br label %if.end

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %24 = or i8 %reg.0, 2
  br label %if.end

if.else:                                          ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %16)
  %cond = icmp eq i8 %16, 50
  %25 = or i8 %and4, 16
  %reg.1 = select i1 %cond, i8 %25, i8 0
  %Vpp35 = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 3
  %26 = ptrtoint ptr %Vpp35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %Vpp35, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %27, label %if.else.if.end_crit_edge [
    i8 50, label %sw.bb37
    i8 120, label %sw.bb41
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb37:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %29 = or i8 %reg.1, 5
  br label %if.end

sw.bb41:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = or i8 %reg.1, 10
  br label %if.end

if.end:                                           ; preds = %sw.bb41, %sw.bb37, %if.else.if.end_crit_edge, %sw.bb22, %sw.bb18, %sw.epilog.if.end_crit_edge
  %reg.2 = phi i8 [ %reg.0, %sw.epilog.if.end_crit_edge ], [ %24, %sw.bb22 ], [ %23, %sw.bb18 ], [ %reg.1, %if.else.if.end_crit_edge ], [ %30, %sw.bb41 ], [ %29, %sw.bb37 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.2, i8 %10)
  %cmp.not = icmp eq i8 %reg.2, %10
  br i1 %cmp.not, label %if.end.if.end73_crit_edge, label %if.then49

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then49:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_power, %if.then.i104)) #10
          to label %exca_writeb.exit [label %if.then.i104], !srcloc !310

if.then.i104:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %conv.i103 = zext i8 %reg.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %conv.i103) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i104, %if.then49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 2050
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %reg.2) #10, !srcloc !316
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %36, i32 2050
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end73

if.else51:                                        ; preds = %land.lhs.true.if.else51_crit_edge, %cb_readl.exit.if.else51_crit_edge
  %Vcc53 = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 2
  %38 = ptrtoint ptr %Vcc53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %Vcc53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %39)
  %switch.selectcmp = icmp eq i8 %39, 50
  %switch.select = select i1 %switch.selectcmp, i32 32, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %39)
  %switch.selectcmp98 = icmp eq i8 %39, 33
  %switch.select99 = select i1 %switch.selectcmp98, i32 48, i32 %switch.select
  %Vpp59 = getelementptr inbounds %struct.socket_state_t, ptr %state, i32 0, i32 3
  %40 = ptrtoint ptr %Vpp59 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %Vpp59, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %41, label %if.else51.sw.epilog67_crit_edge [
    i8 33, label %sw.bb61
    i8 50, label %sw.bb63
    i8 120, label %sw.bb65
  ]

if.else51.sw.epilog67_crit_edge:                  ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog67

sw.bb61:                                          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %or62 = or i32 %switch.select99, 3
  br label %sw.epilog67

sw.bb63:                                          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %or64 = or i32 %switch.select99, 2
  br label %sw.epilog67

sw.bb65:                                          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %or66 = or i32 %switch.select99, 1
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %sw.bb65, %sw.bb63, %sw.bb61, %if.else51.sw.epilog67_crit_edge
  %reg52.1 = phi i32 [ %switch.select99, %if.else51.sw.epilog67_crit_edge ], [ %or66, %sw.bb65 ], [ %or64, %sw.bb63 ], [ %or62, %sw.bb61 ]
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %44, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #10, !srcloc !313
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_power, %if.then.i110)) #10
          to label %cb_readl.exit111 [label %if.then.i110], !srcloc !310

if.then.i110:                                     ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %socket, align 8
  %dev6.i109 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i109, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %46) #10
  br label %cb_readl.exit111

cb_readl.exit111:                                 ; preds = %if.then.i110, %sw.epilog67
  call void @__sanitizer_cov_trace_cmp4(i32 %reg52.1, i32 %46)
  %cmp69.not = icmp eq i32 %reg52.1, %46
  br i1 %cmp69.not, label %cb_readl.exit111.if.end73_crit_edge, label %if.then71

cb_readl.exit111.if.end73_crit_edge:              ; preds = %cb_readl.exit111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then71:                                        ; preds = %cb_readl.exit111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_set_power, %if.then.i113)) #10
          to label %cb_writel.exit [label %if.then.i113], !srcloc !310

if.then.i113:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %socket, align 8
  %dev3.i112 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i112, ptr noundef nonnull @.str.33, i32 noundef 16, i32 noundef %reg52.1) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i113, %if.then71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %reg52.1) #10
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %51) #10, !srcloc !312
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %55, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  br label %if.end73

if.end73:                                         ; preds = %cb_writel.exit, %cb_readl.exit111.if.end73_crit_edge, %exca_writeb.exit, %if.end.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_writel(ptr nocapture noundef readonly %socket, i32 noundef %offset, i32 noundef %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_writel, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3, ptr noundef nonnull @.str.33, i32 noundef %offset, i32 noundef %val) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socket, align 8
  %call5 = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef %offset, i32 noundef %val) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @config_writeb(ptr nocapture noundef readonly %socket, i32 noundef %offset, i8 noundef zeroext %val) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_writeb, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3, ptr noundef nonnull @.str.26, i32 noundef %offset, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socket, align 8
  %call5 = tail call i32 @pci_write_config_byte(ptr noundef %3, i32 noundef %offset, i8 noundef zeroext %val) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yenta_allocate_res(ptr nocapture noundef readonly %socket, i32 noundef %nr, i32 noundef %type, i32 noundef %addr_start, i32 noundef %addr_end) unnamed_addr #2 align 64 {
entry:
  %val.i108 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #10
  %2 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %nr
  %parent = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %nr, i32 5
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %type, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool2.not, i32 -4096, i32 -4
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subordinate, align 4
  %name = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 17
  %name5 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %nr, i32 2
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name5, align 4
  %flags = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %nr, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef %addr_start, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_allocate_res, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef %addr_start, i32 noundef %15) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %if.end
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and6 = and i32 %17, %spec.store.select
  %18 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and6, ptr %region, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i108) #10
  %19 = ptrtoint ptr %val.i108 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i108, align 4, !annotation !319
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %call.i109 = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef %addr_end, ptr noundef nonnull %val.i108) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_allocate_res, %if.then.i111)) #10
          to label %config_readl.exit112 [label %if.then.i111], !srcloc !310

if.then.i111:                                     ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %dev5.i110 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i108, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i110, ptr noundef nonnull @.str.33, i32 noundef %addr_end, i32 noundef %25) #10
  br label %config_readl.exit112

config_readl.exit112:                             ; preds = %if.then.i111, %config_readl.exit
  %26 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i108, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #10
  %neg = xor i32 %spec.store.select, -1
  %or = or i32 %27, %neg
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %2, align 4
  %29 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not = icmp ne i32 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %30)
  %cmp = icmp ugt i32 %or, %30
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true12, label %config_readl.exit112.if.end20_crit_edge

config_readl.exit112.if.end20_crit_edge:          ; preds = %config_readl.exit112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true12:                                  ; preds = %config_readl.exit112
  %31 = load i32, ptr @override_bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool13.not = icmp eq i32 %31, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true12.if.end20_crit_edge

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %land.lhs.true12
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus, align 8
  call void @pcibios_bus_to_resource(ptr noundef %33, ptr noundef %arrayidx, ptr noundef nonnull %region) #10
  %call15 = call i32 @pci_claim_resource(ptr noundef %1, i32 noundef %nr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then14.cleanup_crit_edge, label %do.end

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.36, i32 noundef %nr) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end, %land.lhs.true12.if.end20_crit_edge, %config_readl.exit112.if.end20_crit_edge
  br i1 %tobool2.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call24 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then23
  %call26 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %call29 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %lor.lhs.false28.do.end61_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false28.do.end61_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

if.else:                                          ; preds = %if.end20
  %and33 = and i32 %type, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else.if.end47_crit_edge, label %if.then35

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then35:                                        ; preds = %if.else
  %call36 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 4194304)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false38:                                  ; preds = %if.then35
  %call39 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false38.cleanup_crit_edge

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.else.if.end47_crit_edge
  %call48 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 4194304)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false50:                                  ; preds = %if.end47
  %call51 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false50.cleanup_crit_edge

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %call54 = call fastcc i32 @yenta_search_res(ptr noundef %socket, ptr noundef %arrayidx, i32 noundef 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false53.do.end61_crit_edge, label %lor.lhs.false53.cleanup_crit_edge

lor.lhs.false53.cleanup_crit_edge:                ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false53.do.end61_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end61:                                         ; preds = %lor.lhs.false53.do.end61_crit_edge, %lor.lhs.false28.do.end61_crit_edge
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.39, i32 noundef %type) #13
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %flags, align 4
  %end64 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %nr, i32 1
  %36 = ptrtoint ptr %end64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %end64, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %lor.lhs.false53.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false38.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end61 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ 1, %lor.lhs.false28.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.then23.cleanup_crit_edge ], [ 1, %lor.lhs.false41.cleanup_crit_edge ], [ 1, %lor.lhs.false38.cleanup_crit_edge ], [ 1, %if.then35.cleanup_crit_edge ], [ 1, %lor.lhs.false53.cleanup_crit_edge ], [ 1, %lor.lhs.false50.cleanup_crit_edge ], [ 1, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_setup_cardbus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_claim_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yenta_search_res(ptr nocapture noundef readonly %socket, ptr noundef %res, i32 noundef %min) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %bus19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus19, align 8
  %call20 = tail call ptr @pci_bus_resource_n(ptr noundef %3, i32 noundef 0) #10
  %tobool.not21 = icmp eq ptr %call20, null
  %flags = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tobool.not25 = phi i1 [ %tobool.not21, %entry ], [ %tobool.not, %for.inc.for.body_crit_edge ]
  %call23 = phi ptr [ %call20, %entry ], [ %call, %for.inc.for.body_crit_edge ]
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not25, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %flags2 = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 3
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %xor = xor i32 %7, %5
  %and = and i32 %xor, 8960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end5.if.end10.i_crit_edge

if.end5.if.end10.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end5
  %end1.i = getelementptr inbounds %struct.resource, ptr %call23, i32 0, i32 1
  %8 = ptrtoint ptr %end1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end1.i, align 4
  %10 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call23, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 33554432
  br i1 %cmp.i, label %if.then3.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i)
  %cmp6.not37.i = icmp ult i32 %sub.i, 15
  br i1 %cmp6.not37.i, label %if.then3.i.while.end.i_crit_edge, label %while.body.preheader.i

if.then3.i.while.end.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then3.i
  %add.i = add nuw nsw i32 %sub.i, 1
  %div435.i = lshr i32 %add.i, 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %i.039.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %size.038.i = phi i32 [ %div536.i, %while.body.i.while.body.i_crit_edge ], [ %div435.i, %while.body.preheader.i ]
  %div536.i = lshr i32 %size.038.i, 1
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %cmp6.not.i = icmp ult i32 %size.038.i, 4
  br i1 %cmp6.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then3.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then3.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0.lcssa.i
  br label %if.end.i

if.end.i:                                         ; preds = %while.end.i, %if.else.i.if.end.i_crit_edge
  %size.1.i = phi i32 [ %shl.i, %while.end.i ], [ 4194304, %if.else.i.if.end.i_crit_edge ]
  %12 = tail call i32 @llvm.umax.i32(i32 %size.1.i, i32 %min) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %if.end5.if.end10.i_crit_edge
  %align.0.i = phi i32 [ %12, %if.end.i ], [ 1024, %if.end5.if.end10.i_crit_edge ]
  %size.3.i = phi i32 [ %12, %if.end.i ], [ 512, %if.end5.if.end10.i_crit_edge ]
  %start.0.in.i = phi ptr [ @pcibios_min_mem, %if.end.i ], [ @pcibios_min_io, %if.end5.if.end10.i_crit_edge ]
  %13 = ptrtoint ptr %start.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %start.0.i = load i32, ptr %start.0.in.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %if.end10.i
  %align.1.i = phi i32 [ %align.0.i, %if.end10.i ], [ %div1434.i, %if.end13.i.do.body.i_crit_edge ]
  %size.4.i = phi i32 [ %size.3.i, %if.end10.i ], [ %div1434.i, %if.end13.i.do.body.i_crit_edge ]
  %call.i = tail call i32 @allocate_resource(ptr noundef nonnull %call23, ptr noundef %res, i32 noundef %size.4.i, i32 noundef %start.0.i, i32 noundef -1, i32 noundef %align.1.i, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp eq i32 %call.i, 0
  br i1 %cmp11.i, label %do.body.i.cleanup_crit_edge, label %if.end13.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.i:                                       ; preds = %do.body.i
  %div1434.i = lshr i32 %size.4.i, 1
  %cmp15.not.i = icmp ult i32 %div1434.i, %min
  br i1 %cmp15.not.i, label %if.end13.i.for.inc_crit_edge, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end13.i.for.inc_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end13.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.022, 1
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_bus_resource_n(ptr noundef %17, i32 noundef %inc) #10
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp sgt i32 %inc, 3
  %18 = and i1 %cmp, %tobool.not
  br i1 %18, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_override(ptr nocapture noundef %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 2051
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_override, %if.then.i)) #10
          to label %exca_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv.i = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i, %entry
  %and = and i8 %2, -17
  call void @__sanitizer_cov_trace_cmp1(i8 %and, i8 %2)
  %cmp.not = icmp eq i8 %and, %2
  br i1 %cmp.not, label %exca_readb.exit.if.end_crit_edge, label %if.then

exca_readb.exit.if.end_crit_edge:                 ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %exca_readb.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_override, %if.then.i10)) #10
          to label %exca_writeb.exit [label %if.then.i10], !srcloc !310

if.then.i10:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %conv.i9 = zext i8 %and to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i9) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i10, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 2051
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %and) #10, !srcloc !316
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %10, i32 2051
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end

if.end:                                           ; preds = %exca_writeb.exit, %exca_readb.exit.if.end_crit_edge
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4172, i16 %15)
  %cmp.i = icmp eq i16 %15, 4172
  br i1 %cmp.i, label %if.then.i13, label %if.end.ti_set_zv.exit_crit_edge

if.end.ti_set_zv.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ti_set_zv.exit

if.then.i13:                                      ; preds = %if.end
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device.i, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %17, label %if.then.i13.ti_set_zv.exit_crit_edge [
    i16 -21481, label %if.then.i13.if.end.sink.split.i_crit_edge
    i16 -21479, label %if.then.i13.if.end.sink.split.i_crit_edge14
    i16 -21476, label %if.then.i13.if.end.sink.split.i_crit_edge15
    i16 -21436, label %if.then.i13.if.end.sink.split.i_crit_edge16
    i16 -21482, label %if.then.i13.sw.bb5.i_crit_edge
    i16 -21475, label %if.then.i13.sw.bb5.i_crit_edge17
    i16 -21473, label %if.then.i13.sw.bb5.i_crit_edge18
    i16 -21477, label %if.then.i13.sw.bb5.i_crit_edge19
  ]

if.then.i13.sw.bb5.i_crit_edge19:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.then.i13.sw.bb5.i_crit_edge18:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.then.i13.sw.bb5.i_crit_edge17:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.then.i13.sw.bb5.i_crit_edge:                   ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5.i

if.then.i13.if.end.sink.split.i_crit_edge16:      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i13.if.end.sink.split.i_crit_edge15:      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i13.if.end.sink.split.i_crit_edge14:      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i13.if.end.sink.split.i_crit_edge:        ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split.i

if.then.i13.ti_set_zv.exit_crit_edge:             ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %ti_set_zv.exit

sw.bb5.i:                                         ; preds = %if.then.i13.sw.bb5.i_crit_edge, %if.then.i13.sw.bb5.i_crit_edge17, %if.then.i13.sw.bb5.i_crit_edge18, %if.then.i13.sw.bb5.i_crit_edge19
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.bb5.i, %if.then.i13.if.end.sink.split.i_crit_edge, %if.then.i13.if.end.sink.split.i_crit_edge14, %if.then.i13.if.end.sink.split.i_crit_edge15, %if.then.i13.if.end.sink.split.i_crit_edge16
  %ti_zoom_video.sink.i = phi ptr [ @ti1250_zoom_video, %sw.bb5.i ], [ @ti_zoom_video, %if.then.i13.if.end.sink.split.i_crit_edge ], [ @ti_zoom_video, %if.then.i13.if.end.sink.split.i_crit_edge14 ], [ @ti_zoom_video, %if.then.i13.if.end.sink.split.i_crit_edge15 ], [ @ti_zoom_video, %if.then.i13.if.end.sink.split.i_crit_edge16 ]
  %zoom_video.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 26
  %19 = ptrtoint ptr %zoom_video.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ti_zoom_video.sink.i, ptr %zoom_video.i, align 4
  br label %ti_set_zv.exit

ti_set_zv.exit:                                   ; preds = %if.end.sink.split.i, %if.then.i13.ti_set_zv.exit_crit_edge, %if.end.ti_set_zv.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_save_state(ptr nocapture noundef %socket) #2 align 64 {
entry:
  %val.i54 = alloca i8, align 1
  %val.i48 = alloca i8, align 1
  %val.i42 = alloca i8, align 1
  %val.i38 = alloca i8, align 1
  %val.i33 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %private = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 9
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33) #10
  %10 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i33, align 4, !annotation !319
  %11 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket, align 8
  %call.i34 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef 140, ptr noundef nonnull %val.i33) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i36)) #10
          to label %config_readl.exit37 [label %if.then.i36], !srcloc !310

if.then.i36:                                      ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %dev5.i35 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i35, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %16) #10
  br label %config_readl.exit37

config_readl.exit37:                              ; preds = %if.then.i36, %config_readl.exit
  %17 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33) #10
  %arrayidx3 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 4
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i38) #10
  %20 = ptrtoint ptr %val.i38 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i38, align 1, !annotation !319
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %socket, align 8
  %call.i39 = call i32 @pci_read_config_byte(ptr noundef %22, i32 noundef 145, ptr noundef nonnull %val.i38) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i41)) #10
          to label %config_readb.exit [label %if.then.i41], !srcloc !310

if.then.i41:                                      ; preds = %config_readl.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 8
  %dev5.i40 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i38, align 1
  %conv.i = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i40, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i41, %config_readl.exit37
  %27 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.i38, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i38) #10
  %conv = zext i8 %28 to i32
  %arrayidx6 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %arrayidx6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i42) #10
  %30 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i42, align 1, !annotation !319
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 8
  %call.i43 = call i32 @pci_read_config_byte(ptr noundef %32, i32 noundef 146, ptr noundef nonnull %val.i42) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i46)) #10
          to label %config_readb.exit47 [label %if.then.i46], !srcloc !310

if.then.i46:                                      ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %socket, align 8
  %dev5.i44 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i42, align 1
  %conv.i45 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i44, ptr noundef nonnull @.str.26, i32 noundef 146, i32 noundef %conv.i45) #10
  br label %config_readb.exit47

config_readb.exit47:                              ; preds = %if.then.i46, %config_readb.exit
  %37 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val.i42, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i42) #10
  %conv8 = zext i8 %38 to i32
  %arrayidx10 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv8, ptr %arrayidx10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i48) #10
  %40 = ptrtoint ptr %val.i48 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %val.i48, align 1, !annotation !319
  %41 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %socket, align 8
  %call.i49 = call i32 @pci_read_config_byte(ptr noundef %42, i32 noundef 147, ptr noundef nonnull %val.i48) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i52)) #10
          to label %config_readb.exit53 [label %if.then.i52], !srcloc !310

if.then.i52:                                      ; preds = %config_readb.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %socket, align 8
  %dev5.i50 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %val.i48 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i48, align 1
  %conv.i51 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i50, ptr noundef nonnull @.str.26, i32 noundef 147, i32 noundef %conv.i51) #10
  br label %config_readb.exit53

config_readb.exit53:                              ; preds = %if.then.i52, %config_readb.exit47
  %47 = ptrtoint ptr %val.i48 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %val.i48, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i48) #10
  %conv12 = zext i8 %48 to i32
  %arrayidx14 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 3
  %49 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv12, ptr %arrayidx14, align 4
  %50 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %socket, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5412, i16 %53)
  %cmp = icmp eq i16 %53, 5412
  br i1 %cmp, label %if.then, label %config_readb.exit53.if.end_crit_edge

config_readb.exit53.if.end_crit_edge:             ; preds = %config_readb.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %config_readb.exit53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i54) #10
  %54 = ptrtoint ptr %val.i54 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %val.i54, align 1, !annotation !319
  %call.i55 = call i32 @pci_read_config_byte(ptr noundef %51, i32 noundef 201, ptr noundef nonnull %val.i54) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_save_state, %if.then.i58)) #10
          to label %config_readb.exit59 [label %if.then.i58], !srcloc !310

if.then.i58:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %socket, align 8
  %dev5.i56 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %val.i54 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %val.i54, align 1
  %conv.i57 = zext i8 %58 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i56, ptr noundef nonnull @.str.26, i32 noundef 201, i32 noundef %conv.i57) #10
  br label %config_readb.exit59

config_readb.exit59:                              ; preds = %if.then.i58, %if.then
  %59 = ptrtoint ptr %val.i54 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %val.i54, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i54) #10
  %conv18 = zext i8 %60 to i32
  %arrayidx20 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 5
  %61 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv18, ptr %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %config_readb.exit59, %config_readb.exit53.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_restore_state(ptr nocapture noundef readonly %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 9
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i)) #10
          to label %config_writel.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %1) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i, %entry
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %call5.i = tail call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 128, i32 noundef %1) #10
  %arrayidx2 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i29)) #10
          to label %config_writel.exit31 [label %if.then.i29], !srcloc !310

if.then.i29:                                      ; preds = %config_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %socket, align 8
  %dev3.i28 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i28, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %7) #10
  br label %config_writel.exit31

config_writel.exit31:                             ; preds = %if.then.i29, %config_writel.exit
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %call5.i30 = tail call i32 @pci_write_config_dword(ptr noundef %11, i32 noundef 140, i32 noundef %7) #10
  %arrayidx4 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %conv = trunc i32 %13 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i33)) #10
          to label %config_writeb.exit [label %if.then.i33], !srcloc !310

if.then.i33:                                      ; preds = %config_writel.exit31
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %dev3.i32 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv.i = and i32 %13, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i32, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i33, %config_writel.exit31
  %16 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %socket, align 8
  %call5.i34 = tail call i32 @pci_write_config_byte(ptr noundef %17, i32 noundef 145, i8 noundef zeroext %conv) #10
  %arrayidx6 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  %conv7 = trunc i32 %19 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i37)) #10
          to label %config_writeb.exit39 [label %if.then.i37], !srcloc !310

if.then.i37:                                      ; preds = %config_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev3.i35 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv.i36 = and i32 %19, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i35, ptr noundef nonnull @.str.26, i32 noundef 146, i32 noundef %conv.i36) #10
  br label %config_writeb.exit39

config_writeb.exit39:                             ; preds = %if.then.i37, %config_writeb.exit
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %call5.i38 = tail call i32 @pci_write_config_byte(ptr noundef %23, i32 noundef 146, i8 noundef zeroext %conv7) #10
  %arrayidx9 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9, align 4
  %conv10 = trunc i32 %25 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i42)) #10
          to label %config_writeb.exit44 [label %if.then.i42], !srcloc !310

if.then.i42:                                      ; preds = %config_writeb.exit39
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket, align 8
  %dev3.i40 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %conv.i41 = and i32 %25, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i40, ptr noundef nonnull @.str.26, i32 noundef 147, i32 noundef %conv.i41) #10
  br label %config_writeb.exit44

config_writeb.exit44:                             ; preds = %if.then.i42, %config_writeb.exit39
  %28 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %socket, align 8
  %call5.i43 = tail call i32 @pci_write_config_byte(ptr noundef %29, i32 noundef 147, i8 noundef zeroext %conv10) #10
  %30 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %socket, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5412, i16 %33)
  %cmp = icmp eq i16 %33, 5412
  br i1 %cmp, label %if.then, label %config_writeb.exit44.if.end_crit_edge

config_writeb.exit44.if.end_crit_edge:            ; preds = %config_writeb.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %config_writeb.exit44
  %arrayidx14 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 5
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx14, align 4
  %conv15 = trunc i32 %35 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_restore_state, %if.then.i47)) #10
          to label %config_writeb.exit49 [label %if.then.i47], !srcloc !310

if.then.i47:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %socket, align 8
  %dev3.i45 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %conv.i46 = and i32 %35, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i45, ptr noundef nonnull @.str.26, i32 noundef 201, i32 noundef %conv.i46) #10
  br label %config_writeb.exit49

config_writeb.exit49:                             ; preds = %if.then.i47, %if.then
  %38 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %socket, align 8
  %call5.i48 = tail call i32 @pci_write_config_byte(ptr noundef %39, i32 noundef 201, i8 noundef zeroext %conv15) #10
  br label %if.end

if.end:                                           ; preds = %config_writeb.exit49, %config_writeb.exit44.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_init(ptr nocapture noundef readonly %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 2051
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_init, %if.then.i)) #10
          to label %exca_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %conv.i = zext i8 %2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i, %entry
  %and = and i8 %2, -17
  %5 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %spec.select = or i8 %masksel, %and
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %2)
  %cmp.not = icmp eq i8 %spec.select, %2
  br i1 %cmp.not, label %exca_readb.exit.if.end8_crit_edge, label %if.then7

exca_readb.exit.if.end8_crit_edge:                ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %exca_readb.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_init, %if.then.i15)) #10
          to label %exca_writeb.exit [label %if.then.i15], !srcloc !310

if.then.i15:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv.i14 = zext i8 %spec.select to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i14) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i15, %if.then7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %12, i32 2051
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %spec.select) #10, !srcloc !316
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %14, i32 2051
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  br label %if.end8

if.end8:                                          ; preds = %exca_writeb.exit, %exca_readb.exit.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti113x_override(ptr nocapture noundef %socket) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 145, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti113x_override, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = or i8 %8, 56
  br label %if.end

if.else:                                          ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = and i8 %8, -57
  call fastcc void @ti113x_use_isa_irq(ptr noundef %socket)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cardctl.0 = phi i8 [ %13, %if.then ], [ %14, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti113x_override, %if.then.i12)) #10
          to label %config_writeb.exit [label %if.then.i12], !srcloc !310

if.then.i12:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %conv.i11 = zext i8 %cardctl.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i11) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i12, %if.end
  %17 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %18, i32 noundef 145, i8 noundef zeroext %cardctl.0) #10
  %call4 = call i32 @ti_override(ptr noundef %socket)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti12xx_override(ptr noundef %socket) #2 align 64 {
entry:
  %val.i60 = alloca i8, align 1
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_override, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %9 = load i8, ptr @disable_clkrun, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %config_readl.exit.if.end_crit_edge, label %land.lhs.true

config_readl.exit.if.end_crit_edge:               ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %config_readl.exit
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %and = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.46) #13
  %or = or i32 %8, 2
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %config_readl.exit.if.end_crit_edge
  %val.0 = phi i32 [ %or, %do.end ], [ %8, %land.lhs.true.if.end_crit_edge ], [ %8, %config_readl.exit.if.end_crit_edge ]
  %and3 = and i32 %val.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.end8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.49) #13
  %or11 = or i32 %val.0, 16384
  br label %if.end12

if.end12:                                         ; preds = %do.end8, %if.end.if.end12_crit_edge
  %val.1 = phi i32 [ %val.0, %if.end.if.end12_crit_edge ], [ %or11, %do.end8 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val.1)
  %cmp13.not = icmp eq i32 %8, %val.1
  br i1 %cmp13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_override, %if.then.i59)) #10
          to label %config_writel.exit [label %if.then.i59], !srcloc !310

if.then.i59:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %val.1) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i59, %if.then14
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef 128, i32 noundef %val.1) #10
  br label %if.end15

if.end15:                                         ; preds = %config_writel.exit, %if.end12.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i60) #10
  %20 = ptrtoint ptr %val.i60 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i60, align 1, !annotation !319
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %socket, align 8
  %call.i61 = call i32 @pci_read_config_byte(ptr noundef %22, i32 noundef 147, ptr noundef nonnull %val.i60) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_override, %if.then.i63)) #10
          to label %config_readb.exit [label %if.then.i63], !srcloc !310

if.then.i63:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 8
  %dev5.i62 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %val.i60 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i60, align 1
  %conv.i = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i62, ptr noundef nonnull @.str.26, i32 noundef 147, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i63, %if.end15
  %27 = ptrtoint ptr %val.i60 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val.i60, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i60) #10
  %conv = zext i8 %28 to i32
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %and22 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool23.not, ptr @.str.55, ptr @.str.54
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond) #13
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %and29 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.60, ptr @.str.59
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond31) #13
  %33 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %socket, align 8
  %devfn33 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %devfn33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devfn33, align 4
  %and34 = and i32 %36, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ti12xx_irqroute_func0(ptr noundef %socket)
  br label %if.end38

if.else:                                          ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ti12xx_irqroute_func1(ptr noundef %socket)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then37
  %power_hook = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 27
  %37 = ptrtoint ptr %power_hook to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ti12xx_power_hook, ptr %power_hook, align 8
  %call40 = call i32 @ti_override(ptr noundef %socket)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti1250_override(ptr noundef %socket) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 147, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti1250_override, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 147, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  %and = and i8 %8, -97
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %9 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %masksel = select i1 %tobool.not, i8 0, i8 96
  %spec.select = or i8 %masksel, %and
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select, i8 %8)
  %cmp.not = icmp eq i8 %spec.select, %8
  br i1 %cmp.not, label %config_readb.exit.if.end11_crit_edge, label %do.end

config_readb.exit.if.end11_crit_edge:             ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %config_readb.exit
  %conv = zext i8 %8 to i32
  %conv4 = zext i8 %spec.select to i32
  %11 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.95, i32 noundef %conv, i32 noundef %conv4) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti1250_override, %if.then.i23)) #10
          to label %config_writeb.exit [label %if.then.i23], !srcloc !310

if.then.i23:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 147, i32 noundef %conv4) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i23, %do.end
  %15 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %16, i32 noundef 147, i8 noundef zeroext %spec.select) #10
  br label %if.end11

if.end11:                                         ; preds = %config_writeb.exit, %config_readb.exit.if.end11_crit_edge
  %call12 = call i32 @ti12xx_override(ptr noundef %socket)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ricoh_override(ptr nocapture noundef %socket) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_override, %if.then.i)) #10
          to label %config_readw.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i, ptr noundef nonnull @.str.29, i32 noundef 128, i32 noundef %conv.i) #10
  br label %config_readw.exit

config_readw.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1141, i16 %12)
  %cmp = icmp ult i16 %12, 1141
  %not.cmp = xor i1 %cmp, true
  %13 = zext i1 %not.cmp to i16
  %config.0 = or i16 %8, %13
  %ctl.0 = select i1 %cmp, i16 816, i16 768
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_override, %if.then.i15)) #10
          to label %config_writew.exit [label %if.then.i15], !srcloc !310

if.then.i15:                                      ; preds = %config_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv.i14 = zext i16 %ctl.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i, ptr noundef nonnull @.str.29, i32 noundef 132, i32 noundef %conv.i14) #10
  br label %config_writew.exit

config_writew.exit:                               ; preds = %if.then.i15, %config_readw.exit
  %16 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_word(ptr noundef %17, i32 noundef 132, i16 noundef zeroext %ctl.0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_override, %if.then.i18)) #10
          to label %config_writew.exit20 [label %if.then.i18], !srcloc !310

if.then.i18:                                      ; preds = %config_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %dev3.i16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %conv.i17 = zext i16 %config.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i16, ptr noundef nonnull @.str.29, i32 noundef 128, i32 noundef %conv.i17) #10
  br label %config_writew.exit20

config_writew.exit20:                             ; preds = %if.then.i18, %config_writew.exit
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %call5.i19 = call i32 @pci_write_config_word(ptr noundef %21, i32 noundef 128, i16 noundef zeroext %config.0) #10
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4480, i16 %25)
  %cmp.i = icmp eq i16 %25, 4480
  br i1 %cmp.i, label %if.then.i21, label %config_writew.exit20.ricoh_set_zv.exit_crit_edge

config_writew.exit20.ricoh_set_zv.exit_crit_edge: ; preds = %config_writew.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %ricoh_set_zv.exit

if.then.i21:                                      ; preds = %config_writew.exit20
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %26 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1144, i16 %27)
  %cond.i = icmp eq i16 %27, 1144
  br i1 %cond.i, label %sw.bb.i, label %if.then.i21.ricoh_set_zv.exit_crit_edge

if.then.i21.ricoh_set_zv.exit_crit_edge:          ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %ricoh_set_zv.exit

sw.bb.i:                                          ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #12
  %zoom_video.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 26
  %28 = ptrtoint ptr %zoom_video.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ricoh_zoom_video, ptr %zoom_video.i, align 4
  br label %ricoh_set_zv.exit

ricoh_set_zv.exit:                                ; preds = %sw.bb.i, %if.then.i21.ricoh_set_zv.exit_crit_edge, %config_writew.exit20.ricoh_set_zv.exit_crit_edge
  call fastcc void @ricoh_set_clkrun(ptr noundef %socket, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ricoh_save_state(ptr nocapture noundef %socket) #2 align 64 {
entry:
  %val.i44 = alloca i16, align 2
  %val.i38 = alloca i16, align 2
  %val.i32 = alloca i16, align 2
  %val.i26 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 130, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_save_state, %if.then.i)) #10
          to label %config_readw.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i, ptr noundef nonnull @.str.29, i32 noundef 130, i32 noundef %conv.i) #10
  br label %config_readw.exit

config_readw.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %conv = zext i16 %8 to i32
  %private = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 9
  %9 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i26) #10
  %10 = ptrtoint ptr %val.i26 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i26, align 2, !annotation !319
  %11 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket, align 8
  %call.i27 = call i32 @pci_read_config_word(ptr noundef %12, i32 noundef 132, ptr noundef nonnull %val.i26) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_save_state, %if.then.i30)) #10
          to label %config_readw.exit31 [label %if.then.i30], !srcloc !310

if.then.i30:                                      ; preds = %config_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %dev5.i28 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val.i26, align 2
  %conv.i29 = zext i16 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i28, ptr noundef nonnull @.str.29, i32 noundef 132, i32 noundef %conv.i29) #10
  br label %config_readw.exit31

config_readw.exit31:                              ; preds = %if.then.i30, %config_readw.exit
  %17 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val.i26, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i26) #10
  %conv2 = zext i16 %18 to i32
  %arrayidx4 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2, ptr %arrayidx4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i32) #10
  %20 = ptrtoint ptr %val.i32 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %val.i32, align 2, !annotation !319
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %socket, align 8
  %call.i33 = call i32 @pci_read_config_word(ptr noundef %22, i32 noundef 136, ptr noundef nonnull %val.i32) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_save_state, %if.then.i36)) #10
          to label %config_readw.exit37 [label %if.then.i36], !srcloc !310

if.then.i36:                                      ; preds = %config_readw.exit31
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 8
  %dev5.i34 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %val.i32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val.i32, align 2
  %conv.i35 = zext i16 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i34, ptr noundef nonnull @.str.29, i32 noundef 136, i32 noundef %conv.i35) #10
  br label %config_readw.exit37

config_readw.exit37:                              ; preds = %if.then.i36, %config_readw.exit31
  %27 = ptrtoint ptr %val.i32 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val.i32, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i32) #10
  %conv6 = zext i16 %28 to i32
  %arrayidx8 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv6, ptr %arrayidx8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i38) #10
  %30 = ptrtoint ptr %val.i38 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %val.i38, align 2, !annotation !319
  %31 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socket, align 8
  %call.i39 = call i32 @pci_read_config_word(ptr noundef %32, i32 noundef 138, ptr noundef nonnull %val.i38) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_save_state, %if.then.i42)) #10
          to label %config_readw.exit43 [label %if.then.i42], !srcloc !310

if.then.i42:                                      ; preds = %config_readw.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %socket, align 8
  %dev5.i40 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %val.i38, align 2
  %conv.i41 = zext i16 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i40, ptr noundef nonnull @.str.29, i32 noundef 138, i32 noundef %conv.i41) #10
  br label %config_readw.exit43

config_readw.exit43:                              ; preds = %if.then.i42, %config_readw.exit37
  %37 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %val.i38, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i38) #10
  %conv10 = zext i16 %38 to i32
  %arrayidx12 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 3
  %39 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv10, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i44) #10
  %40 = ptrtoint ptr %val.i44 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %val.i44, align 2, !annotation !319
  %41 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %socket, align 8
  %call.i45 = call i32 @pci_read_config_word(ptr noundef %42, i32 noundef 128, ptr noundef nonnull %val.i44) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_save_state, %if.then.i48)) #10
          to label %config_readw.exit49 [label %if.then.i48], !srcloc !310

if.then.i48:                                      ; preds = %config_readw.exit43
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %socket, align 8
  %dev5.i46 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %val.i44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %val.i44, align 2
  %conv.i47 = zext i16 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i46, ptr noundef nonnull @.str.29, i32 noundef 128, i32 noundef %conv.i47) #10
  br label %config_readw.exit49

config_readw.exit49:                              ; preds = %if.then.i48, %config_readw.exit43
  %47 = ptrtoint ptr %val.i44 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %val.i44, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i44) #10
  %conv14 = zext i16 %48 to i32
  %arrayidx16 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 4
  %49 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv14, ptr %arrayidx16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ricoh_restore_state(ptr nocapture noundef readonly %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 9
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %conv = trunc i32 %1 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_restore_state, %if.then.i)) #10
          to label %config_writew.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv.i = and i32 %1, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i, ptr noundef nonnull @.str.29, i32 noundef 130, i32 noundef %conv.i) #10
  br label %config_writew.exit

config_writew.exit:                               ; preds = %if.then.i, %entry
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %call5.i = tail call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 130, i16 noundef zeroext %conv) #10
  %arrayidx2 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %conv3 = trunc i32 %7 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_restore_state, %if.then.i25)) #10
          to label %config_writew.exit27 [label %if.then.i25], !srcloc !310

if.then.i25:                                      ; preds = %config_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %socket, align 8
  %dev3.i23 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv.i24 = and i32 %7, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i23, ptr noundef nonnull @.str.29, i32 noundef 132, i32 noundef %conv.i24) #10
  br label %config_writew.exit27

config_writew.exit27:                             ; preds = %if.then.i25, %config_writew.exit
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %call5.i26 = tail call i32 @pci_write_config_word(ptr noundef %11, i32 noundef 132, i16 noundef zeroext %conv3) #10
  %arrayidx5 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %conv6 = trunc i32 %13 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_restore_state, %if.then.i30)) #10
          to label %config_writew.exit32 [label %if.then.i30], !srcloc !310

if.then.i30:                                      ; preds = %config_writew.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %dev3.i28 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %conv.i29 = and i32 %13, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i28, ptr noundef nonnull @.str.29, i32 noundef 136, i32 noundef %conv.i29) #10
  br label %config_writew.exit32

config_writew.exit32:                             ; preds = %if.then.i30, %config_writew.exit27
  %16 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %socket, align 8
  %call5.i31 = tail call i32 @pci_write_config_word(ptr noundef %17, i32 noundef 136, i16 noundef zeroext %conv6) #10
  %arrayidx8 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8, align 4
  %conv9 = trunc i32 %19 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_restore_state, %if.then.i35)) #10
          to label %config_writew.exit37 [label %if.then.i35], !srcloc !310

if.then.i35:                                      ; preds = %config_writew.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev3.i33 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv.i34 = and i32 %19, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i33, ptr noundef nonnull @.str.29, i32 noundef 138, i32 noundef %conv.i34) #10
  br label %config_writew.exit37

config_writew.exit37:                             ; preds = %if.then.i35, %config_writew.exit32
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %call5.i36 = tail call i32 @pci_write_config_word(ptr noundef %23, i32 noundef 138, i16 noundef zeroext %conv9) #10
  %arrayidx11 = getelementptr %struct.yenta_socket, ptr %socket, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_restore_state, %if.then.i40)) #10
          to label %config_writew.exit42 [label %if.then.i40], !srcloc !310

if.then.i40:                                      ; preds = %config_writew.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket, align 8
  %dev3.i38 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %conv.i39 = and i32 %25, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i38, ptr noundef nonnull @.str.29, i32 noundef 128, i32 noundef %conv.i39) #10
  br label %config_writew.exit42

config_writew.exit42:                             ; preds = %if.then.i40, %config_writew.exit37
  %conv12 = trunc i32 %25 to i16
  %28 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %socket, align 8
  %call5.i41 = tail call i32 @pci_write_config_word(ptr noundef %29, i32 noundef 128, i16 noundef zeroext %conv12) #10
  tail call fastcc void @ricoh_set_clkrun(ptr noundef %socket, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @topic95_override(ptr nocapture noundef %socket) #2 align 64 {
entry:
  %ppbcn = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ppbcn) #10
  %0 = ptrtoint ptr %ppbcn to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ppbcn, align 2, !annotation !319
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %2, i32 2110
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic95_override, %if.then.i)) #10
          to label %exca_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 62, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i, %entry
  %6 = or i8 %3, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic95_override, %if.then.i25)) #10
          to label %exca_writeb.exit [label %if.then.i25], !srcloc !310

if.then.i25:                                      ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %conv.i24 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 62, i32 noundef %conv.i24) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i25, %exca_readb.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 2110
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %6) #10, !srcloc !316
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %12, i32 2110
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %flags = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or2 = or i32 %15, 3
  store i32 %or2, ptr %flags, align 4
  %16 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %socket, align 8
  %call3 = call i32 @pci_read_config_word(ptr noundef %17, i32 noundef 62, ptr noundef nonnull %ppbcn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %exca_writeb.exit.if.end_crit_edge

exca_writeb.exit.if.end_crit_edge:                ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %exca_writeb.exit
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp7 = icmp ult i8 %21, 8
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %22 = ptrtoint ptr %ppbcn to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ppbcn, align 2
  %24 = and i16 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  br i1 %tobool.not, label %land.lhs.true9.if.end_crit_edge, label %if.then

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i16 %23, -1025
  %25 = ptrtoint ptr %ppbcn to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %and12, ptr %ppbcn, align 2
  %call15 = call i32 @pci_write_config_word(ptr noundef %19, i32 noundef 62, i16 noundef zeroext %and12) #10
  %26 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev17, ptr noundef nonnull @.str.100) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %exca_writeb.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ppbcn) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @topic97_override(ptr nocapture noundef writeonly %socket) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %zoom_video = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 26
  %0 = ptrtoint ptr %zoom_video to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @topic97_zoom_video, ptr %zoom_video, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @o2micro_override(ptr nocapture noundef readonly %socket) #2 align 64 {
entry:
  %val.i76 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.if.end59_crit_edge

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %call.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 148, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %if.then
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i76) #10
  %11 = ptrtoint ptr %val.i76 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i76, align 1, !annotation !319
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %call.i77 = call i32 @pci_read_config_byte(ptr noundef %13, i32 noundef 212, ptr noundef nonnull %val.i76) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.then.i80)) #10
          to label %config_readb.exit81 [label %if.then.i80], !srcloc !310

if.then.i80:                                      ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %socket, align 8
  %dev5.i78 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %val.i76 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i76, align 1
  %conv.i79 = zext i8 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i78, ptr noundef nonnull @.str.26, i32 noundef 212, i32 noundef %conv.i79) #10
  br label %config_readb.exit81

config_readb.exit81:                              ; preds = %if.then.i80, %config_readb.exit
  %18 = ptrtoint ptr %val.i76 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i76, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i76) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @o2micro_override.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !310

if.then5:                                         ; preds = %config_readb.exit81
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv = zext i8 %10 to i32
  %conv8 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @o2micro_override.__UNIQUE_ID_ddebug258, ptr noundef %dev7, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %config_readb.exit81
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.139)
  switch i16 %25, label %sw.default [
    i16 26409, label %do.end.sw.epilog_crit_edge
    i16 26426, label %do.end.sw.epilog_crit_edge102
    i16 26738, label %do.end.sw.epilog_crit_edge103
    i16 26674, label %do.end.sw.epilog_crit_edge104
    i16 26678, label %do.end.sw.epilog_crit_edge105
    i16 26931, label %do.end.sw.epilog_crit_edge106
  ]

do.end.sw.epilog_crit_edge106:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge105:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge104:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge103:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge102:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge102, %do.end.sw.epilog_crit_edge103, %do.end.sw.epilog_crit_edge104, %do.end.sw.epilog_crit_edge105, %do.end.sw.epilog_crit_edge106
  %use_speedup.0.off0 = phi i1 [ true, %sw.default ], [ false, %do.end.sw.epilog_crit_edge ], [ false, %do.end.sw.epilog_crit_edge102 ], [ false, %do.end.sw.epilog_crit_edge103 ], [ false, %do.end.sw.epilog_crit_edge104 ], [ false, %do.end.sw.epilog_crit_edge105 ], [ false, %do.end.sw.epilog_crit_edge106 ]
  %call11 = call i32 @strcasecmp(ptr noundef nonnull @o2_speedup, ptr noundef nonnull @.str.106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %sw.epilog.do.end36_crit_edge, label %if.else

sw.epilog.do.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.else:                                          ; preds = %sw.epilog
  %call15 = call i32 @strcasecmp(ptr noundef nonnull @o2_speedup, ptr noundef nonnull @.str.107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.else.do.end49_crit_edge, label %if.else19

if.else.do.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

if.else19:                                        ; preds = %if.else
  %call20 = call i32 @strcasecmp(ptr noundef nonnull @o2_speedup, ptr noundef nonnull @.str.108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.else19.if.end31_crit_edge, label %do.end26

if.else19.if.end31_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end26:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28, ptr noundef nonnull @.str.109) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end26, %if.else19.if.end31_crit_edge
  br i1 %use_speedup.0.off0, label %if.end31.do.end36_crit_edge, label %if.end31.do.end49_crit_edge

if.end31.do.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end49

if.end31.do.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

do.end36:                                         ; preds = %if.end31.do.end36_crit_edge, %sw.epilog.do.end36_crit_edge
  %27 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socket, align 8
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.111) #13
  %29 = or i8 %10, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.then.i83)) #10
          to label %config_writeb.exit [label %if.then.i83], !srcloc !310

if.then.i83:                                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %conv.i82 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %conv.i82) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i83, %do.end36
  %32 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %33, i32 noundef 148, i8 noundef zeroext %29) #10
  %34 = or i8 %19, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.end59.sink.split.sink.split)) #10
          to label %if.end59.sink.split [label %if.end59.sink.split.sink.split], !srcloc !310

do.end49:                                         ; preds = %if.end31.do.end49_crit_edge, %if.else.do.end49_crit_edge
  %35 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %socket, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.114) #13
  %37 = and i8 %10, -11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.then.i91)) #10
          to label %config_writeb.exit93 [label %if.then.i91], !srcloc !310

if.then.i91:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %socket, align 8
  %dev3.i89 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %conv.i90 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i89, ptr noundef nonnull @.str.26, i32 noundef 148, i32 noundef %conv.i90) #10
  br label %config_writeb.exit93

config_writeb.exit93:                             ; preds = %if.then.i91, %do.end49
  %40 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %socket, align 8
  %call5.i92 = call i32 @pci_write_config_byte(ptr noundef %41, i32 noundef 148, i8 noundef zeroext %37) #10
  %42 = and i8 %19, -11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@o2micro_override, %if.end59.sink.split.sink.split)) #10
          to label %if.end59.sink.split [label %if.end59.sink.split.sink.split], !srcloc !310

if.end59.sink.split.sink.split:                   ; preds = %config_writeb.exit93, %config_writeb.exit
  %.sink = phi i8 [ %34, %config_writeb.exit ], [ %42, %config_writeb.exit93 ]
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %socket, align 8
  %dev3.i94 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %conv.i95 = zext i8 %.sink to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i94, ptr noundef nonnull @.str.26, i32 noundef 212, i32 noundef %conv.i95) #10
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.end59.sink.split.sink.split, %config_writeb.exit93, %config_writeb.exit
  %.sink100 = phi i8 [ %34, %config_writeb.exit ], [ %42, %config_writeb.exit93 ], [ %.sink, %if.end59.sink.split.sink.split ]
  %45 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %socket, align 8
  %call5.i87 = call i32 @pci_write_config_byte(ptr noundef %46, i32 noundef 212, i8 noundef zeroext %.sink100) #10
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %entry.if.end59_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @o2micro_restore_state(ptr nocapture noundef readonly %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @o2micro_override(ptr noundef %socket)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ene_override(ptr noundef %socket) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tune_bridge = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 5, i32 28
  %0 = ptrtoint ptr %tune_bridge to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ene_tune_bridge, ptr %tune_bridge, align 4
  %call = tail call i32 @ti1250_override(ptr noundef %socket)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_zoom_video(ptr nocapture noundef readonly %sock, i32 noundef %onoff) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 145, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_zoom_video, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %9 = and i8 %8, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %reg.0 = or i8 %9, %masksel
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_zoom_video, %if.then.i8)) #10
          to label %config_writeb.exit [label %if.then.i8], !srcloc !310

if.then.i8:                                       ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv.i7 = zext i8 %reg.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 145, i32 noundef %conv.i7) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i8, %config_readb.exit
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 145, i8 noundef zeroext %reg.0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti1250_zoom_video(ptr nocapture noundef readonly %sock, i32 noundef %onoff) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  tail call void @ti_zoom_video(ptr noundef %sock, i32 noundef %onoff)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 132, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti1250_zoom_video, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 132, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn, align 4
  %and = and i32 %12, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %spec.select = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %13 = and i8 %8, 63
  %14 = or i8 %13, -128
  %15 = select i1 %cmp, i8 64, i8 0
  %16 = or i8 %15, %14
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shl10 = shl nuw nsw i32 1, %spec.select
  %17 = trunc i32 %shl10 to i8
  %conv13 = or i8 %16, %17
  br label %if.end25

if.else:                                          ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = xor i8 %16, 64
  %shl21 = shl nuw nsw i32 1, %spec.select
  %18 = trunc i32 %shl21 to i8
  %19 = xor i8 %18, -1
  %conv24 = and i8 %conv20, %19
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then3
  %reg.0 = phi i8 [ %conv13, %if.then3 ], [ %conv24, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti1250_zoom_video, %if.then.i42)) #10
          to label %config_writeb.exit [label %if.then.i42], !srcloc !310

if.then.i42:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv.i41 = zext i8 %reg.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 132, i32 noundef %conv.i41) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i42, %if.end25
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %23, i32 noundef 132, i8 noundef zeroext %reg.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti113x_use_isa_irq(ptr nocapture noundef %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @isa_probe, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @yenta_probe_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %isa_irq_mask.037 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %isa_irq.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ -1, %if.end.for.body_crit_edge ]
  %shr = lshr i32 %isa_irq_mask.037, 1
  %inc = add nsw i32 %isa_irq.036, 1
  %tobool4.not = icmp ult i32 %isa_irq_mask.037, 2
  br i1 %tobool4.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %1 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %inc, ptr %cb_irq, align 4
  %isa_irq.0.tr = trunc i32 %inc to i8
  %conv = shl i8 %isa_irq.0.tr, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti113x_use_isa_irq, %if.then.i)) #10
          to label %exca_writeb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %conv.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %conv) #10, !srcloc !316
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 2053
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %10, i32 2051
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti113x_use_isa_irq, %if.then.i25)) #10
          to label %exca_readb.exit [label %if.then.i25], !srcloc !310

if.then.i25:                                      ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv.i24 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i24) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i25, %exca_writeb.exit
  %14 = and i8 %11, -32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti113x_use_isa_irq, %if.then.i28)) #10
          to label %exca_writeb.exit34 [label %if.then.i28], !srcloc !310

if.then.i28:                                      ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socket, align 8
  %dev3.i26 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %conv.i27 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i26, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %conv.i27) #10
  br label %exca_writeb.exit34

exca_writeb.exit34:                               ; preds = %if.then.i28, %exca_readb.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr6.i31 = getelementptr i8, ptr %18, i32 2051
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i31, i8 %14) #10, !srcloc !316
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr9.i33 = getelementptr i8, ptr %20, i32 2051
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i33) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.43, i32 noundef %inc) #13
  br label %cleanup

cleanup:                                          ; preds = %exca_writeb.exit34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yenta_probe_irq(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i)) #10
          to label %cb_writel.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #10, !srcloc !312
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i2)) #10
          to label %cb_writel.exit4 [label %if.then.i2], !srcloc !310

if.then.i2:                                       ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socket, align 8
  %dev3.i1 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i1, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1) #10
  br label %cb_writel.exit4

cb_writel.exit4:                                  ; preds = %if.then.i2, %cb_writel.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !312
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %15, i32 2053
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i7)) #10
          to label %exca_readb.exit [label %if.then.i7], !srcloc !310

if.then.i7:                                       ; preds = %cb_writel.exit4
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %conv.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i7, %cb_writel.exit4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i9)) #10
          to label %exca_writeb.exit [label %if.then.i9], !srcloc !310

if.then.i9:                                       ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %socket, align 8
  %dev3.i8 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i8, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef 0) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i9, %exca_readb.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 0) #10, !srcloc !316
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %24, i32 2053
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %call1 = tail call i32 @probe_irq_on() #10
  %and = and i32 %call1, 3832
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %exca_writeb.exit
  %i.046 = phi i32 [ 1, %exca_writeb.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = shl nuw nsw i32 1, %i.046
  %27 = and i32 %26, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %i.0.tr = trunc i32 %i.046 to i8
  %28 = shl i8 %i.0.tr, 4
  %conv = or i8 %28, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i14)) #10
          to label %exca_writeb.exit20 [label %if.then.i14], !srcloc !310

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 8
  %dev3.i12 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %conv.i13 = zext i8 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i12, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i13) #10
  br label %exca_writeb.exit20

exca_writeb.exit20:                               ; preds = %if.then.i14, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr6.i17 = getelementptr i8, ptr %32, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i17, i8 %conv) #10, !srcloc !316
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr9.i19 = getelementptr i8, ptr %34, i32 2053
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i19) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i22)) #10
          to label %cb_writel.exit26 [label %if.then.i22], !srcloc !310

if.then.i22:                                      ; preds = %exca_writeb.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %socket, align 8
  %dev3.i21 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i21, ptr noundef nonnull @.str.33, i32 noundef 12, i32 noundef 1) #10
  br label %cb_writel.exit26

cb_writel.exit26:                                 ; preds = %if.then.i22, %exca_writeb.exit20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 16777216) #10, !srcloc !312
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr7.i25 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i25) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i28)) #10
          to label %cb_writel.exit30 [label %if.then.i28], !srcloc !310

if.then.i28:                                      ; preds = %cb_writel.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socket, align 8
  %dev3.i27 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i27, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit30

cb_writel.exit30:                                 ; preds = %if.then.i28, %cb_writel.exit26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -1) #10, !srcloc !312
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  br label %for.inc

for.inc:                                          ; preds = %cb_writel.exit30, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i32)) #10
          to label %cb_writel.exit36 [label %if.then.i32], !srcloc !310

if.then.i32:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %socket, align 8
  %dev3.i31 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i31, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 0) #10
  br label %cb_writel.exit36

cb_writel.exit36:                                 ; preds = %if.then.i32, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #10, !srcloc !312
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr7.i35 = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i35) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_irq, %if.then.i39)) #10
          to label %exca_writeb.exit45 [label %if.then.i39], !srcloc !310

if.then.i39:                                      ; preds = %cb_writel.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %socket, align 8
  %dev3.i37 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %conv.i38 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i37, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i38) #10
  br label %exca_writeb.exit45

exca_writeb.exit45:                               ; preds = %if.then.i39, %cb_writel.exit36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr6.i42 = getelementptr i8, ptr %61, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i42, i8 %16) #10, !srcloc !316
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr9.i44 = getelementptr i8, ptr %63, i32 2053
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i44) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  %call3 = tail call i32 @probe_irq_mask(i32 noundef %and) #10
  %and4 = and i32 %call3, 65535
  ret i32 %and4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_mask(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti12xx_irqroute_func0(ptr noundef %socket) unnamed_addr #2 align 64 {
entry:
  %val.i141 = alloca i8, align 1
  %val.i137 = alloca i8, align 1
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 140, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func0, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i137) #10
  %9 = ptrtoint ptr %val.i137 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i137, align 1, !annotation !319
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %call.i138 = call i32 @pci_read_config_byte(ptr noundef %11, i32 noundef 146, ptr noundef nonnull %val.i137) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func0, %if.then.i140)) #10
          to label %config_readb.exit [label %if.then.i140], !srcloc !310

if.then.i140:                                     ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %dev5.i139 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %val.i137 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i137, align 1
  %conv.i = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i139, ptr noundef nonnull @.str.26, i32 noundef 146, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i140, %config_readl.exit
  %16 = ptrtoint ptr %val.i137 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i137, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i137) #10
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.61, i32 noundef %8, i32 noundef %conv) #13
  %call3 = call i32 @ti_init(ptr noundef %socket)
  %call4 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end7, label %config_readb.exit.out_crit_edge

config_readb.exit.out_crit_edge:                  ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end7:                                          ; preds = %config_readb.exit
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.64) #13
  %and = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp = icmp eq i32 %and, 6
  br i1 %cmp, label %if.then11, label %do.end7.if.end41_crit_edge

do.end7.if.end41_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then11:                                        ; preds = %do.end7
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.140)
  switch i16 %25, label %sw.default [
    i16 -21482, label %if.then11.do.end35_crit_edge
    i16 -21475, label %if.then11.do.end35_crit_edge153
    i16 -21473, label %if.then11.do.end35_crit_edge154
    i16 -21477, label %if.then11.do.end35_crit_edge155
    i16 -21422, label %if.then11.do.end35_crit_edge156
    i16 -32751, label %if.then11.do.end35_crit_edge157
    i16 -21438, label %if.then11.do.end35_crit_edge158
  ]

if.then11.do.end35_crit_edge158:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge157:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge156:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge155:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge154:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge153:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then11.do.end35_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

sw.default:                                       ; preds = %if.then11
  %and14 = and i32 %8, -61441
  %or = or i32 %and14, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %8)
  %cmp15.not = icmp eq i32 %or, %8
  br i1 %cmp15.not, label %sw.default.do.end35_crit_edge, label %if.then17

sw.default.do.end35_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.then17:                                        ; preds = %sw.default
  call fastcc void @config_writel(ptr noundef %socket, i32 noundef 140, i32 noundef %or)
  %call18 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.then17.if.end88.sink.split_crit_edge, label %if.end27

if.then17.if.end88.sink.split_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.sink.split

if.end27:                                         ; preds = %if.then17
  call fastcc void @config_writel(ptr noundef %socket, i32 noundef 140, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp28 = icmp eq i32 %call18, -1
  br i1 %cmp28, label %if.end27.if.then82_crit_edge, label %if.end27.do.end35_crit_edge

if.end27.do.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.end27.if.then82_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

do.end35:                                         ; preds = %if.end27.do.end35_crit_edge, %sw.default.do.end35_crit_edge, %if.then11.do.end35_crit_edge, %if.then11.do.end35_crit_edge153, %if.then11.do.end35_crit_edge154, %if.then11.do.end35_crit_edge155, %if.then11.do.end35_crit_edge156, %if.then11.do.end35_crit_edge157, %if.then11.do.end35_crit_edge158
  %27 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socket, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.70) #13
  %and38 = and i8 %17, -7
  %or39 = or i8 %and38, 4
  call fastcc void @config_writeb(ptr noundef %socket, i32 noundef 146, i8 noundef zeroext %or39)
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %do.end7.if.end41_crit_edge
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 8
  %device43 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %device43 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %device43, align 2
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.141)
  switch i16 %32, label %sw.default56 [
    i16 -21482, label %if.end41.sw.bb45_crit_edge
    i16 -21475, label %if.end41.sw.bb45_crit_edge159
    i16 -21473, label %if.end41.sw.bb45_crit_edge160
    i16 -21477, label %if.end41.sw.bb45_crit_edge161
  ]

if.end41.sw.bb45_crit_edge161:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end41.sw.bb45_crit_edge160:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end41.sw.bb45_crit_edge159:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

if.end41.sw.bb45_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb45

sw.bb45:                                          ; preds = %if.end41.sw.bb45_crit_edge, %if.end41.sw.bb45_crit_edge159, %if.end41.sw.bb45_crit_edge160, %if.end41.sw.bb45_crit_edge161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i141) #10
  %34 = ptrtoint ptr %val.i141 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %val.i141, align 1, !annotation !319
  %call.i142 = call i32 @pci_read_config_byte(ptr noundef %30, i32 noundef 139, ptr noundef nonnull %val.i141) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func0, %if.then.i145)) #10
          to label %config_readb.exit146 [label %if.then.i145], !srcloc !310

if.then.i145:                                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %socket, align 8
  %dev5.i143 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %val.i141 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val.i141, align 1
  %conv.i144 = zext i8 %38 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i143, ptr noundef nonnull @.str.26, i32 noundef 139, i32 noundef %conv.i144) #10
  br label %config_readb.exit146

config_readb.exit146:                             ; preds = %if.then.i145, %sw.bb45
  %39 = ptrtoint ptr %val.i141 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %val.i141, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i141) #10
  %and48 = and i8 %40, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %40)
  %41 = icmp ult i8 %40, 64
  br i1 %41, label %config_readb.exit146.sw.epilog63_crit_edge, label %if.then54

config_readb.exit146.sw.epilog63_crit_edge:       ; preds = %config_readb.exit146
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog63

if.then54:                                        ; preds = %config_readb.exit146
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @config_writeb(ptr noundef %socket, i32 noundef 139, i8 noundef zeroext %and48)
  br label %sw.epilog63

sw.default56:                                     ; preds = %if.end41
  %and57 = and i32 %8, -16
  %or58 = or i32 %and57, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or58, i32 %8)
  %cmp59.not = icmp eq i32 %or58, %8
  br i1 %cmp59.not, label %sw.default56.sw.epilog63_crit_edge, label %if.then61

sw.default56.sw.epilog63_crit_edge:               ; preds = %sw.default56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog63

if.then61:                                        ; preds = %sw.default56
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @config_writel(ptr noundef %socket, i32 noundef 140, i32 noundef %or58)
  br label %sw.epilog63

sw.epilog63:                                      ; preds = %if.then61, %sw.default56.sw.epilog63_crit_edge, %if.then54, %config_readb.exit146.sw.epilog63_crit_edge
  %gpio3.0 = phi i8 [ 0, %if.then61 ], [ 0, %sw.default56.sw.epilog63_crit_edge ], [ %and48, %if.then54 ], [ %and48, %config_readb.exit146.sw.epilog63_crit_edge ]
  %gpio3_old.0 = phi i8 [ 0, %if.then61 ], [ 0, %sw.default56.sw.epilog63_crit_edge ], [ %40, %if.then54 ], [ %40, %config_readb.exit146.sw.epilog63_crit_edge ]
  %call64 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 1
  br i1 %cmp65, label %sw.epilog63.if.end88.sink.split_crit_edge, label %if.else

sw.epilog63.if.end88.sink.split_crit_edge:        ; preds = %sw.epilog63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.sink.split

if.else:                                          ; preds = %sw.epilog63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func0, %if.then.i147)) #10
          to label %config_writel.exit [label %if.then.i147], !srcloc !310

if.then.i147:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %8) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i147, %if.else
  %44 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %45, i32 noundef 140, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_cmp1(i8 %gpio3.0, i8 %gpio3_old.0)
  %cmp75.not = icmp eq i8 %gpio3.0, %gpio3_old.0
  br i1 %cmp75.not, label %config_writel.exit.out_crit_edge, label %if.then77

config_writel.exit.out_crit_edge:                 ; preds = %config_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then77:                                        ; preds = %config_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @config_writeb(ptr noundef %socket, i32 noundef 139, i8 noundef zeroext %gpio3_old.0)
  br label %out

out:                                              ; preds = %if.then77, %config_writel.exit.out_crit_edge, %config_readb.exit.out_crit_edge
  %pci_irq_status.0 = phi i32 [ %call4, %config_readb.exit.out_crit_edge ], [ %call64, %if.then77 ], [ %call64, %config_writel.exit.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pci_irq_status.0)
  %cmp80 = icmp slt i32 %pci_irq_status.0, 1
  br i1 %cmp80, label %out.if.then82_crit_edge, label %out.if.end88_crit_edge

out.if.end88_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

out.if.then82_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then82

if.then82:                                        ; preds = %out.if.then82_crit_edge, %if.end27.if.then82_crit_edge
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %46 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cb_irq, align 4
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.then82, %sw.epilog63.if.end88.sink.split_crit_edge, %if.then17.if.end88.sink.split_crit_edge
  %.str.73.sink = phi ptr [ @.str.76, %if.then82 ], [ @.str.67, %if.then17.if.end88.sink.split_crit_edge ], [ @.str.73, %sw.epilog63.if.end88.sink.split_crit_edge ]
  %47 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %socket, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev72, ptr noundef nonnull %.str.73.sink) #13
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %out.if.end88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti12xx_irqroute_func1(ptr noundef %socket) unnamed_addr #2 align 64 {
entry:
  %val.i121 = alloca i32, align 4
  %val.i117 = alloca i8, align 1
  %val.i = alloca i32, align 4
  %old_irq = alloca i32, align 4
  %old_irq32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 140, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func1, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i117) #10
  %9 = ptrtoint ptr %val.i117 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i117, align 1, !annotation !319
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %call.i118 = call i32 @pci_read_config_byte(ptr noundef %11, i32 noundef 146, ptr noundef nonnull %val.i117) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func1, %if.then.i120)) #10
          to label %config_readb.exit [label %if.then.i120], !srcloc !310

if.then.i120:                                     ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socket, align 8
  %dev5.i119 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %val.i117 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i117, align 1
  %conv.i = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i119, ptr noundef nonnull @.str.26, i32 noundef 146, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i120, %config_readl.exit
  %16 = ptrtoint ptr %val.i117 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i117, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i117) #10
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.61, i32 noundef %8, i32 noundef %conv) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i121) #10
  %20 = ptrtoint ptr %val.i121 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i121, align 4, !annotation !319
  %21 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %socket, align 8
  %call.i122 = call i32 @pci_read_config_dword(ptr noundef %22, i32 noundef 128, ptr noundef nonnull %val.i121) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_irqroute_func1, %if.then.i124)) #10
          to label %config_readl.exit125 [label %if.then.i124], !srcloc !310

if.then.i124:                                     ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socket, align 8
  %dev5.i123 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i121, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i123, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %26) #10
  br label %config_readl.exit125

config_readl.exit125:                             ; preds = %if.then.i124, %config_readb.exit
  %27 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i121, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i121) #10
  %and = and i32 %28, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %config_readl.exit125.if.end_crit_edge, label %if.then

config_readl.exit125.if.end_crit_edge:            ; preds = %config_readl.exit125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %config_readl.exit125
  %29 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socket, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %34, -8
  %call.i126 = call ptr @pci_get_slot(ptr noundef %32, i32 noundef %and.i) #10
  %tobool.not.i = icmp eq ptr %call.i126, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %call.i126, i32 0, i32 46
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  %37 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socket, align 8
  %irq6.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 46
  %39 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %irq6.i, align 4
  %cb_irq7.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %40 = ptrtoint ptr %cb_irq7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %cb_irq7.i, align 4
  call void @pci_dev_put(ptr noundef nonnull %call.i126) #10
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %config_readl.exit125.if.end_crit_edge
  %call5 = call i32 @ti_init(ptr noundef %socket)
  %call6 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end12, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end12:                                         ; preds = %if.end
  %41 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %socket, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.64) #13
  %and15 = and i32 %conv, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and15)
  %cmp = icmp eq i32 %and15, 6
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_irq) #10
  %43 = ptrtoint ptr %old_irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %old_irq, align 4, !annotation !319
  %call18 = call fastcc i32 @ti12xx_tie_interrupts(ptr noundef %socket, ptr noundef nonnull %old_irq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %if.then20

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then20:                                        ; preds = %if.then17
  %call21 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %socket, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef nonnull @.str.85) #13
  br label %cleanup

if.end30:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %old_irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old_irq, align 4
  call fastcc void @ti12xx_untie_interrupts(ptr noundef %socket, i32 noundef %47)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end27, %if.then17.cleanup_crit_edge
  %pci_irq_status.1 = phi i32 [ 1, %do.end27 ], [ %call21, %if.end30 ], [ 0, %if.then17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_irq) #10
  br label %out

if.else:                                          ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_irq32) #10
  %48 = ptrtoint ptr %old_irq32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %old_irq32, align 4, !annotation !319
  %49 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device, align 2
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.142)
  switch i16 %52, label %sw.default [
    i16 -21482, label %if.else.if.end55_crit_edge
    i16 -21475, label %if.else.sw.epilog_crit_edge
    i16 -21473, label %if.else.sw.epilog_crit_edge130
    i16 -21477, label %if.else.sw.epilog_crit_edge131
  ]

if.else.sw.epilog_crit_edge131:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.sw.epilog_crit_edge130:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge130, %if.else.sw.epilog_crit_edge131
  %.sink129 = phi i32 [ -241, %sw.default ], [ -16, %if.else.sw.epilog_crit_edge ], [ -16, %if.else.sw.epilog_crit_edge130 ], [ -16, %if.else.sw.epilog_crit_edge131 ]
  %.sink = phi i32 [ 32, %sw.default ], [ 1, %if.else.sw.epilog_crit_edge ], [ 1, %if.else.sw.epilog_crit_edge130 ], [ 1, %if.else.sw.epilog_crit_edge131 ]
  %and36 = and i32 %8, %.sink129
  %or37 = or i32 %and36, %.sink
  call void @__sanitizer_cov_trace_cmp4(i32 %or37, i32 %8)
  %cmp38.not = icmp eq i32 %or37, %8
  br i1 %cmp38.not, label %sw.epilog.if.end55_crit_edge, label %if.then40

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then40:                                        ; preds = %sw.epilog
  call fastcc void @config_writel(ptr noundef %socket, i32 noundef 140, i32 noundef %or37)
  %call41 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 1
  br i1 %cmp42, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %socket, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.73) #13
  br label %cleanup70

if.end50:                                         ; preds = %if.then40
  call fastcc void @config_writel(ptr noundef %socket, i32 noundef 140, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp51 = icmp eq i32 %call41, -1
  br i1 %cmp51, label %if.end50.cleanup70_crit_edge, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end50.cleanup70_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end55:                                         ; preds = %if.end50.if.end55_crit_edge, %sw.epilog.if.end55_crit_edge, %if.else.if.end55_crit_edge
  %pci_irq_status.2 = phi i32 [ %call41, %if.end50.if.end55_crit_edge ], [ 0, %sw.epilog.if.end55_crit_edge ], [ 0, %if.else.if.end55_crit_edge ]
  %call56 = call fastcc i32 @ti12xx_tie_interrupts(ptr noundef %socket, ptr noundef nonnull %old_irq32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup70_crit_edge, label %if.then58

if.end55.cleanup70_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.then58:                                        ; preds = %if.end55
  %call59 = call fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59)
  %cmp60 = icmp eq i32 %call59, 1
  br i1 %cmp60, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %socket, align 8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.90) #13
  br label %cleanup70

if.end68:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %old_irq32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %old_irq32, align 4
  call fastcc void @ti12xx_untie_interrupts(ptr noundef %socket, i32 noundef %59)
  br label %cleanup70

cleanup70:                                        ; preds = %if.end68, %do.end65, %if.end55.cleanup70_crit_edge, %if.end50.cleanup70_crit_edge, %do.end47
  %pci_irq_status.4 = phi i32 [ 1, %do.end47 ], [ 1, %do.end65 ], [ -1, %if.end50.cleanup70_crit_edge ], [ %call59, %if.end68 ], [ %pci_irq_status.2, %if.end55.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_irq32) #10
  br label %out

out:                                              ; preds = %cleanup70, %cleanup, %if.end.out_crit_edge
  %pci_irq_status.5 = phi i32 [ %call6, %if.end.out_crit_edge ], [ %pci_irq_status.1, %cleanup ], [ %pci_irq_status.4, %cleanup70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pci_irq_status.5)
  %cmp74 = icmp slt i32 %pci_irq_status.5, 1
  br i1 %cmp74, label %if.then76, label %out.if.end82_crit_edge

out.if.end82_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then76:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %60 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cb_irq, align 4
  %61 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %socket, align 8
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.93) #13
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %out.if.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti12xx_power_hook(ptr noundef readonly %sock, i32 noundef %operation) #2 align 64 {
entry:
  %val.i125 = alloca i8, align 1
  %val.i120 = alloca i32, align 4
  %val.i116 = alloca i32, align 4
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %operation.off = add i32 %operation, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %operation.off)
  %switch = icmp ult i32 %operation.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 146, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 146, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %if.end
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i116) #10
  %9 = ptrtoint ptr %val.i116 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i116, align 4, !annotation !319
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %call.i117 = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef 128, ptr noundef nonnull %val.i116) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i119)) #10
          to label %config_readl.exit [label %if.then.i119], !srcloc !310

if.then.i119:                                     ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %dev5.i118 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %val.i116 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i116, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i118, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %15) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i119, %config_readb.exit
  %16 = ptrtoint ptr %val.i116 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i116, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i116) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i120) #10
  %18 = ptrtoint ptr %val.i120 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i120, align 4, !annotation !319
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %call.i121 = call i32 @pci_read_config_dword(ptr noundef %20, i32 noundef 140, ptr noundef nonnull %val.i120) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i123)) #10
          to label %config_readl.exit124 [label %if.then.i123], !srcloc !310

if.then.i123:                                     ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %dev5.i122 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %val.i120 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i120, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i122, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %24) #10
  br label %config_readl.exit124

config_readl.exit124:                             ; preds = %if.then.i123, %config_readl.exit
  %25 = ptrtoint ptr %val.i120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i120, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i120) #10
  %27 = and i8 %8, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp4 = icmp eq i8 %27, 6
  br i1 %cmp4, label %land.lhs.true6, label %config_readl.exit124.if.end18_crit_edge

config_readl.exit124.if.end18_crit_edge:          ; preds = %config_readl.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true6:                                   ; preds = %config_readl.exit124
  %28 = load i8, ptr @pwr_irqs_off, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %call8 = call fastcc i32 @ti12xx_2nd_slot_empty(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %config_readl.exit124.if.end18_crit_edge
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devfn, align 4
  %and20 = and i32 %32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %if.end18.if.then32_crit_edge, label %lor.lhs.false23

if.end18.if.then32_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false23:                                  ; preds = %if.end18
  %and24 = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false23.if.else59_crit_edge, label %land.lhs.true26

lor.lhs.false23.if.else59_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else59

land.lhs.true26:                                  ; preds = %lor.lhs.false23
  %33 = load i8, ptr @pwr_irqs_off, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not = icmp eq i8 %33, 0
  br i1 %tobool27.not, label %lor.lhs.false29, label %land.lhs.true26.if.then32_crit_edge

land.lhs.true26.if.then32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false29:                                  ; preds = %land.lhs.true26
  %call30 = call fastcc i32 @ti12xx_2nd_slot_empty(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false29.if.else59_crit_edge, label %lor.lhs.false29.if.then32_crit_edge

lor.lhs.false29.if.then32_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false29.if.else59_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else59

if.then32:                                        ; preds = %lor.lhs.false29.if.then32_crit_edge, %land.lhs.true26.if.then32_crit_edge, %if.end18.if.then32_crit_edge
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 8
  %device34 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %device34 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device34, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.143)
  switch i16 %37, label %sw.default50 [
    i16 -21482, label %if.then32.sw.bb36_crit_edge
    i16 -21475, label %if.then32.sw.bb36_crit_edge144
    i16 -21473, label %if.then32.sw.bb36_crit_edge145
    i16 -21477, label %if.then32.sw.bb36_crit_edge146
  ]

if.then32.sw.bb36_crit_edge146:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then32.sw.bb36_crit_edge145:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then32.sw.bb36_crit_edge144:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

if.then32.sw.bb36_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb36

sw.bb36:                                          ; preds = %if.then32.sw.bb36_crit_edge, %if.then32.sw.bb36_crit_edge144, %if.then32.sw.bb36_crit_edge145, %if.then32.sw.bb36_crit_edge146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i125) #10
  %39 = ptrtoint ptr %val.i125 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %val.i125, align 1, !annotation !319
  %call.i126 = call i32 @pci_read_config_byte(ptr noundef %35, i32 noundef 139, ptr noundef nonnull %val.i125) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i129)) #10
          to label %config_readb.exit130 [label %if.then.i129], !srcloc !310

if.then.i129:                                     ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %dev5.i127 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %val.i125 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i125, align 1
  %conv.i128 = zext i8 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i127, ptr noundef nonnull @.str.26, i32 noundef 139, i32 noundef %conv.i128) #10
  br label %config_readb.exit130

config_readb.exit130:                             ; preds = %if.then.i129, %sw.bb36
  %44 = ptrtoint ptr %val.i125 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val.i125, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %operation)
  %cmp38 = icmp eq i32 %operation, 1
  %46 = and i8 %45, 63
  %47 = or i8 %46, 64
  %gpio3.0 = select i1 %cmp38, i8 %47, i8 %46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i132)) #10
          to label %config_writeb.exit [label %if.then.i132], !srcloc !310

if.then.i132:                                     ; preds = %config_readb.exit130
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %conv.i131 = zext i8 %gpio3.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 139, i32 noundef %conv.i131) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i132, %config_readb.exit130
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %51, i32 noundef 139, i8 noundef zeroext %gpio3.0) #10
  br label %cleanup

sw.default50:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %operation)
  %cmp51 = icmp eq i32 %operation, 1
  %and54 = and i32 %26, -16
  %or56 = or i32 %26, 2
  %mfunc.0 = select i1 %cmp51, i32 %and54, i32 %or56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i134)) #10
          to label %config_writel.exit [label %if.then.i134], !srcloc !310

if.then.i134:                                     ; preds = %sw.default50
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 8
  %dev3.i133 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i133, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %mfunc.0) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i134, %sw.default50
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %call5.i135 = call i32 @pci_write_config_dword(ptr noundef %55, i32 noundef 140, i32 noundef %mfunc.0) #10
  br label %cleanup

if.else59:                                        ; preds = %lor.lhs.false29.if.else59_crit_edge, %lor.lhs.false23.if.else59_crit_edge
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 8
  %device61 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %device61 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device61, align 2
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.144)
  switch i16 %59, label %sw.default71 [
    i16 -21475, label %if.else59.sw.bb63_crit_edge
    i16 -21473, label %if.else59.sw.bb63_crit_edge147
    i16 -21477, label %if.else59.sw.bb63_crit_edge148
  ]

if.else59.sw.bb63_crit_edge148:                   ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.else59.sw.bb63_crit_edge147:                   ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

if.else59.sw.bb63_crit_edge:                      ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

sw.bb63:                                          ; preds = %if.else59.sw.bb63_crit_edge, %if.else59.sw.bb63_crit_edge147, %if.else59.sw.bb63_crit_edge148
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %operation)
  %cmp64 = icmp eq i32 %operation, 1
  %and67 = and i32 %26, -16
  %or69 = or i32 %26, 1
  %mfunc.1 = select i1 %cmp64, i32 %and67, i32 %or69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i137)) #10
          to label %config_writel.exit139 [label %if.then.i137], !srcloc !310

if.then.i137:                                     ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr, align 8
  %dev3.i136 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i136, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %mfunc.1) #10
  br label %config_writel.exit139

config_writel.exit139:                            ; preds = %if.then.i137, %sw.bb63
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %call5.i138 = call i32 @pci_write_config_dword(ptr noundef %64, i32 noundef 140, i32 noundef %mfunc.1) #10
  br label %cleanup

sw.default71:                                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %operation)
  %cmp72 = icmp eq i32 %operation, 1
  %and75 = and i32 %26, -241
  %or77 = or i32 %26, 32
  %mfunc.2 = select i1 %cmp72, i32 %and75, i32 %or77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_power_hook, %if.then.i141)) #10
          to label %config_writel.exit143 [label %if.then.i141], !srcloc !310

if.then.i141:                                     ; preds = %sw.default71
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 8
  %dev3.i140 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i140, ptr noundef nonnull @.str.33, i32 noundef 140, i32 noundef %mfunc.2) #10
  br label %config_writel.exit143

config_writel.exit143:                            ; preds = %if.then.i141, %sw.default71
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %call5.i142 = call i32 @pci_write_config_dword(ptr noundef %68, i32 noundef 140, i32 noundef %mfunc.2) #10
  br label %cleanup

cleanup:                                          ; preds = %config_writel.exit143, %config_writel.exit139, %config_writel.exit, %config_writeb.exit, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @yenta_probe_cb_irq(ptr noundef %socket) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %0 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %probe_status = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 8
  %2 = ptrtoint ptr %probe_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %probe_status, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @yenta_probe_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.14, ptr noundef %socket) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.78) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %8, i32 2053
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i)) #10
          to label %if.end10 [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %socket, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then8, %if.end5.if.end10_crit_edge
  %reg.0 = phi i8 [ 0, %if.end5.if.end10_crit_edge ], [ %9, %if.then8 ], [ %9, %if.then.i ]
  %12 = or i8 %reg.0, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i35)) #10
          to label %exca_writeb.exit [label %if.then.i35], !srcloc !310

if.then.i35:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv.i34 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i34) #10
  br label %exca_writeb.exit

exca_writeb.exit:                                 ; preds = %if.then.i35, %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %base.i36 = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 3
  %15 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i36, align 4
  %add.ptr6.i = getelementptr i8, ptr %16, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i, i8 %12) #10, !srcloc !316
  %17 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i36, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 2053
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i39)) #10
          to label %cb_writel.exit [label %if.then.i39], !srcloc !310

if.then.i39:                                      ; preds = %exca_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev3.i38 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i38, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i39, %exca_writeb.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1) #10, !srcloc !312
  %24 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i36, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i42)) #10
          to label %cb_writel.exit45 [label %if.then.i42], !srcloc !310

if.then.i42:                                      ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socket, align 8
  %dev3.i41 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i41, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1) #10
  br label %cb_writel.exit45

cb_writel.exit45:                                 ; preds = %if.then.i42, %cb_writel.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i36, align 4
  %add.ptr.i44 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #10, !srcloc !312
  %31 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i36, align 4
  %add.ptr7.i = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i47)) #10
          to label %cb_writel.exit51 [label %if.then.i47], !srcloc !310

if.then.i47:                                      ; preds = %cb_writel.exit45
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %socket, align 8
  %dev3.i46 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i46, ptr noundef nonnull @.str.33, i32 noundef 12, i32 noundef 1) #10
  br label %cb_writel.exit51

cb_writel.exit51:                                 ; preds = %if.then.i47, %cb_writel.exit45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i36, align 4
  %add.ptr.i49 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 16777216) #10, !srcloc !312
  %38 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i36, align 4
  %add.ptr7.i50 = getelementptr i8, ptr %39, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i50) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @msleep(i32 noundef 100) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i53)) #10
          to label %cb_writel.exit57 [label %if.then.i53], !srcloc !310

if.then.i53:                                      ; preds = %cb_writel.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %socket, align 8
  %dev3.i52 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i52, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 0) #10
  br label %cb_writel.exit57

cb_writel.exit57:                                 ; preds = %if.then.i53, %cb_writel.exit51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i36, align 4
  %add.ptr.i55 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 0) #10, !srcloc !312
  %45 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i36, align 4
  %add.ptr7.i56 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i56) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_writeb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i60)) #10
          to label %exca_writeb.exit66 [label %if.then.i60], !srcloc !310

if.then.i60:                                      ; preds = %cb_writel.exit57
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %socket, align 8
  %dev3.i58 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %conv.i59 = zext i8 %reg.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_writeb.__UNIQUE_ID_ddebug255, ptr noundef %dev3.i58, ptr noundef nonnull @.str.26, i32 noundef 5, i32 noundef %conv.i59) #10
  br label %exca_writeb.exit66

exca_writeb.exit66:                               ; preds = %if.then.i60, %cb_writel.exit57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i36, align 4
  %add.ptr6.i63 = getelementptr i8, ptr %51, i32 2053
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i63, i8 %reg.0) #10, !srcloc !316
  %52 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i36, align 4
  %add.ptr9.i65 = getelementptr i8, ptr %53, i32 2053
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i65) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i68)) #10
          to label %cb_writel.exit70 [label %if.then.i68], !srcloc !310

if.then.i68:                                      ; preds = %exca_writeb.exit66
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %socket, align 8
  %dev3.i67 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i67, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit70

cb_writel.exit70:                                 ; preds = %if.then.i68, %exca_writeb.exit66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 -1) #10, !srcloc !312
  %59 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i36, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %62 = ptrtoint ptr %base.i36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i36, align 4
  %add.ptr1.i73 = getelementptr i8, ptr %63, i32 2052
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i73) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_cb_irq, %if.then.i76)) #10
          to label %exca_readb.exit77 [label %if.then.i76], !srcloc !310

if.then.i76:                                      ; preds = %cb_writel.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %socket, align 8
  %dev7.i74 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %conv.i75 = zext i8 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i74, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %conv.i75) #10
  br label %exca_readb.exit77

exca_readb.exit77:                                ; preds = %if.then.i76, %cb_writel.exit70
  %67 = ptrtoint ptr %cb_irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cb_irq, align 4
  %call14 = tail call ptr @free_irq(i32 noundef %68, ptr noundef %socket) #10
  %69 = ptrtoint ptr %probe_status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %probe_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %exca_readb.exit77, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %70, %exca_readb.exit77 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_probe_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_handler, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef %3) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_writel.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_handler, %if.then.i8)) #10
          to label %cb_writel.exit [label %if.then.i8], !srcloc !310

if.then.i8:                                       ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_writel.__UNIQUE_ID_ddebug247, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef -1) #10
  br label %cb_writel.exit

cb_writel.exit:                                   ; preds = %if.then.i8, %cb_readl.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -1) #10, !srcloc !312
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %14, i32 2052
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@yenta_probe_handler, %if.then.i11)) #10
          to label %exca_readb.exit [label %if.then.i11], !srcloc !310

if.then.i11:                                      ; preds = %cb_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %conv.i = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i11, %cb_writel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %exca_readb.exit.cleanup_crit_edge, label %if.then

exca_readb.exit.cleanup_crit_edge:                ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %probe_status = getelementptr inbounds %struct.yenta_socket, ptr %dev_id, i32 0, i32 8
  %18 = ptrtoint ptr %probe_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %probe_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %exca_readb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %exca_readb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti12xx_tie_interrupts(ptr nocapture noundef %socket, ptr noundef writeonly %old_irq) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_tie_interrupts, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %config_readl.exit.cleanup_crit_edge

config_readl.exit.cleanup_crit_edge:              ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %config_readl.exit
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn.i, align 4
  %and.i = and i32 %14, -8
  %call.i10 = call ptr @pci_get_slot(ptr noundef %12, i32 noundef %and.i) #10
  %tobool.not.i = icmp eq ptr %call.i10, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %old_irq, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %if.then3.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb_irq.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %15 = ptrtoint ptr %cb_irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb_irq.i, align 4
  %17 = ptrtoint ptr %old_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old_irq, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3.i, %if.end.i.if.end4_crit_edge
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %call.i10, i32 0, i32 46
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %irq6.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %irq6.i, align 4
  %cb_irq7.i = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %23 = ptrtoint ptr %cb_irq7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %cb_irq7.i, align 4
  call void @pci_dev_put(ptr noundef nonnull %call.i10) #10
  %or = or i32 %8, 536870912
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_tie_interrupts, %if.then.i11)) #10
          to label %config_writel.exit [label %if.then.i11], !srcloc !310

if.then.i11:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %or) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i11, %if.end4
  %26 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %27, i32 noundef 128, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %config_writel.exit, %if.end.cleanup_crit_edge, %config_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %config_writel.exit ], [ 0, %config_readl.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti12xx_untie_interrupts(ptr nocapture noundef %socket, i32 noundef %old_irq) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_untie_interrupts, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %6) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and = and i32 %8, -536870913
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writel.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_untie_interrupts, %if.then.i5)) #10
          to label %config_writel.exit [label %if.then.i5], !srcloc !310

if.then.i5:                                       ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writel.__UNIQUE_ID_ddebug253, ptr noundef %dev3.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %and) #10
  br label %config_writel.exit

config_writel.exit:                               ; preds = %if.then.i5, %config_readl.exit
  %11 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %12, i32 noundef 128, i32 noundef %and) #10
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %old_irq, ptr %irq, align 4
  %cb_irq = getelementptr inbounds %struct.yenta_socket, ptr %socket, i32 0, i32 1
  %16 = ptrtoint ptr %cb_irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %old_irq, ptr %cb_irq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti12xx_2nd_slot_empty(ptr nocapture noundef readonly %socket) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !319
  %1 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.145)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 -21481, label %entry.sw.epilog_crit_edge
    i16 -21479, label %entry.sw.epilog_crit_edge47
    i16 -21476, label %entry.sw.epilog_crit_edge48
    i16 -21475, label %entry.sw.epilog_crit_edge49
    i16 -21473, label %entry.sw.epilog_crit_edge50
    i16 -21423, label %entry.sw.epilog_crit_edge51
    i16 -21477, label %entry.sw.epilog_crit_edge52
    i16 -21422, label %entry.sw.epilog_crit_edge53
    i16 -21419, label %entry.sw.epilog_crit_edge54
    i16 -21420, label %entry.sw.epilog_crit_edge55
    i16 -21434, label %entry.sw.epilog_crit_edge56
    i16 -32751, label %entry.sw.epilog_crit_edge57
    i16 -21438, label %entry.sw.epilog_crit_edge58
    i16 -32711, label %entry.sw.bb1_crit_edge
    i16 -32714, label %entry.sw.bb1_crit_edge59
    i16 -21362, label %entry.sw.bb1_crit_edge60
    i16 -21363, label %entry.sw.bb1_crit_edge61
    i16 -32719, label %entry.sw.bb1_crit_edge62
    i16 -21431, label %entry.sw.bb1_crit_edge63
    i16 -21432, label %entry.sw.bb1_crit_edge64
  ]

entry.sw.bb1_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.epilog_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge56:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge55:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge54:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge53:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge52:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge59, %entry.sw.bb1_crit_edge60, %entry.sw.bb1_crit_edge61, %entry.sw.bb1_crit_edge62, %entry.sw.bb1_crit_edge63, %entry.sw.bb1_crit_edge64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !319
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readl.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti12xx_2nd_slot_empty, %if.then.i)) #10
          to label %config_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readl.__UNIQUE_ID_ddebug250, ptr noundef %dev5.i, ptr noundef nonnull @.str.33, i32 noundef 128, i32 noundef %10) #10
  br label %config_readl.exit

config_readl.exit:                                ; preds = %if.then.i, %sw.bb1
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %config_readl.exit.sw.epilog_crit_edge, label %config_readl.exit.cleanup_crit_edge

config_readl.exit.cleanup_crit_edge:              ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

config_readl.exit.sw.epilog_crit_edge:            ; preds = %config_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %config_readl.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge47, %entry.sw.epilog_crit_edge48, %entry.sw.epilog_crit_edge49, %entry.sw.epilog_crit_edge50, %entry.sw.epilog_crit_edge51, %entry.sw.epilog_crit_edge52, %entry.sw.epilog_crit_edge53, %entry.sw.epilog_crit_edge54, %entry.sw.epilog_crit_edge55, %entry.sw.epilog_crit_edge56, %entry.sw.epilog_crit_edge57, %entry.sw.epilog_crit_edge58
  %13 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socket, align 8
  %devfn3 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %devfn3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn3, align 4
  %and4 = and i32 %16, -8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 8
  %and8 = and i32 %16, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or = zext i1 %tobool9.not to i32
  %cond = or i32 %and4, %or
  %call10 = call ptr @pci_get_slot(ptr noundef %18, i32 noundef %cond) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %sw.epilog.cleanup_crit_edge, label %if.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %19 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %socket, align 8
  %device15 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %device15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device15, align 2
  %device17 = getelementptr inbounds %struct.pci_dev, ptr %call10, i32 0, i32 8
  %23 = ptrtoint ptr %device17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %device17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.not = icmp eq i16 %22, %24
  br i1 %cmp.not, label %if.end21, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end21:                                         ; preds = %if.end13
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %call10, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %tobool23.not = icmp eq ptr %26, null
  br i1 %tobool23.not, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %socket26 = getelementptr inbounds %struct.yenta_socket, ptr %26, i32 0, i32 5
  %call27 = call i32 @yenta_get_status(ptr noundef %socket26, ptr noundef nonnull %state)
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 4
  %and28 = lshr i32 %28, 7
  %and28.lobit = and i32 %and28, 1
  %29 = xor i32 %and28.lobit, 1
  br label %out

out:                                              ; preds = %if.end25, %if.end21.out_crit_edge, %if.end13.out_crit_edge
  %ret.0 = phi i32 [ 1, %if.end13.out_crit_edge ], [ 1, %if.end21.out_crit_edge ], [ %29, %if.end25 ]
  call void @pci_dev_put(ptr noundef nonnull %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.epilog.cleanup_crit_edge, %config_readl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %config_readl.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ricoh_set_clkrun(ptr nocapture noundef readonly %socket, i1 noundef zeroext %quiet) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socket, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 1142, label %entry.if.end_crit_edge
    i16 1144, label %entry.if.end_crit_edge53
  ]

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge53
  %revision = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp9 = icmp sgt i8 %6, -1
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i, align 2, !annotation !319
  %call.i = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 162, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_set_clkrun, %if.then.i)) #10
          to label %config_readw.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %socket, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val.i, align 2
  %conv.i = zext i16 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readw.__UNIQUE_ID_ddebug249, ptr noundef %dev5.i, ptr noundef nonnull @.str.29, i32 noundef 162, i32 noundef %conv.i) #10
  br label %config_readw.exit

config_readw.exit:                                ; preds = %if.then.i, %if.end12
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %config_readw.exit
  br i1 %quiet, label %if.then14.cleanup_crit_edge, label %do.body

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ricoh_set_clkrun.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_set_clkrun, %if.then22)) #10
          to label %cleanup [label %if.then22], !srcloc !310

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socket, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ricoh_set_clkrun.__UNIQUE_ID_ddebug257, ptr noundef %dev24, ptr noundef nonnull @.str.99) #10
  br label %cleanup

if.else:                                          ; preds = %config_readw.exit
  %17 = load i8, ptr @disable_clkrun, align 1, !range !322
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %if.then28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.else
  br i1 %quiet, label %if.then28.if.end36_crit_edge, label %do.end33

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end33:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %socket, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.46) #13
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28.if.end36_crit_edge
  %or = or i16 %13, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writew.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_set_clkrun, %if.then.i51)) #10
          to label %config_writew.exit [label %if.then.i51], !srcloc !310

if.then.i51:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %socket, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %conv.i50 = zext i16 %or to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writew.__UNIQUE_ID_ddebug252, ptr noundef %dev3.i, ptr noundef nonnull @.str.29, i32 noundef 162, i32 noundef %conv.i50) #10
  br label %config_writew.exit

config_writew.exit:                               ; preds = %if.then.i51, %if.end36
  %22 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %socket, align 8
  %call5.i = call i32 @pci_write_config_word(ptr noundef %23, i32 noundef 162, i16 noundef zeroext %or) #10
  br label %cleanup

cleanup:                                          ; preds = %config_writew.exit, %if.else.cleanup_crit_edge, %if.then22, %do.body, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ricoh_zoom_video(ptr nocapture noundef readonly %sock, i32 noundef %onoff) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 47, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_zoom_video, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 47, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %9 = and i8 %8, -9
  %masksel = select i1 %tobool.not, i8 0, i8 8
  %reg.0 = or i8 %9, %masksel
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ricoh_zoom_video, %if.then.i8)) #10
          to label %config_writeb.exit [label %if.then.i8], !srcloc !310

if.then.i8:                                       ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv.i7 = zext i8 %reg.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 47, i32 noundef %conv.i7) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i8, %config_readb.exit
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 47, i8 noundef zeroext %reg.0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @topic97_zoom_video(ptr nocapture noundef readonly %sock, i32 noundef %onoff) #2 align 64 {
entry:
  %val.i42 = alloca i8, align 1
  %val.i26 = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %2, i32 noundef 156, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 156, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %entry
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %config_readb.exit
  %9 = or i8 %8, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.then.i25)) #10
          to label %config_writeb.exit [label %if.then.i25], !srcloc !310

if.then.i25:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv.i24 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 156, i32 noundef %conv.i24) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i25, %if.then
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %13, i32 noundef 156, i8 noundef zeroext %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i26) #10
  %14 = ptrtoint ptr %val.i26 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %val.i26, align 1, !annotation !319
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %call.i27 = call i32 @pci_read_config_byte(ptr noundef %16, i32 noundef 60, ptr noundef nonnull %val.i26) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.then.i30)) #10
          to label %config_readb.exit31 [label %if.then.i30], !srcloc !310

if.then.i30:                                      ; preds = %config_writeb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %dev5.i28 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i26, align 1
  %conv.i29 = zext i8 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i28, ptr noundef nonnull @.str.26, i32 noundef 60, i32 noundef %conv.i29) #10
  br label %config_readb.exit31

config_readb.exit31:                              ; preds = %if.then.i30, %config_writeb.exit
  %21 = ptrtoint ptr %val.i26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i26, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i26) #10
  %23 = or i8 %22, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.end.sink.split)) #10
          to label %if.end [label %if.end.sink.split], !srcloc !310

if.else:                                          ; preds = %config_readb.exit
  %24 = and i8 %8, -2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.then.i39)) #10
          to label %config_writeb.exit41 [label %if.then.i39], !srcloc !310

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %dev3.i37 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %conv.i38 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i37, ptr noundef nonnull @.str.26, i32 noundef 156, i32 noundef %conv.i38) #10
  br label %config_writeb.exit41

config_writeb.exit41:                             ; preds = %if.then.i39, %if.else
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %call5.i40 = call i32 @pci_write_config_byte(ptr noundef %28, i32 noundef 156, i8 noundef zeroext %24) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i42) #10
  %29 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %val.i42, align 1, !annotation !319
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 8
  %call.i43 = call i32 @pci_read_config_byte(ptr noundef %31, i32 noundef 60, ptr noundef nonnull %val.i42) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.then.i46)) #10
          to label %config_readb.exit47 [label %if.then.i46], !srcloc !310

if.then.i46:                                      ; preds = %config_writeb.exit41
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 8
  %dev5.i44 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val.i42, align 1
  %conv.i45 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i44, ptr noundef nonnull @.str.26, i32 noundef 60, i32 noundef %conv.i45) #10
  br label %config_readb.exit47

config_readb.exit47:                              ; preds = %if.then.i46, %config_writeb.exit41
  %36 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val.i42, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i42) #10
  %38 = and i8 %37, -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@topic97_zoom_video, %if.end.sink.split)) #10
          to label %if.end [label %if.end.sink.split], !srcloc !310

if.end.sink.split:                                ; preds = %config_readb.exit47, %config_readb.exit31
  %.sink = phi i8 [ %23, %config_readb.exit31 ], [ %38, %config_readb.exit47 ]
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %dev3.i48 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %conv.i49 = zext i8 %.sink to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i48, ptr noundef nonnull @.str.26, i32 noundef 60, i32 noundef %conv.i49) #10
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %config_readb.exit47, %config_readb.exit31
  %.sink53 = phi i8 [ %23, %config_readb.exit31 ], [ %38, %config_readb.exit47 ], [ %.sink, %if.end.sink.split ]
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 8
  %call5.i51 = call i32 @pci_write_config_byte(ptr noundef %42, i32 noundef 60, i8 noundef zeroext %.sink53) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ene_tune_bridge(ptr nocapture noundef readonly %sock, ptr noundef readonly %bus) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %sock, i32 -64
  %devices = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %dev.0.in = phi ptr [ %devices, %entry ], [ %dev.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0 = load ptr, ptr %dev.0.in, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @ene_tune_tbl, ptr noundef %dev.0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %id.1 = phi ptr [ %call, %for.body.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !319
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i = call i32 @pci_read_config_byte(ptr noundef %3, i32 noundef 201, ptr noundef nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_readb.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ene_tune_bridge, %if.then.i)) #10
          to label %config_readb.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_readb.__UNIQUE_ID_ddebug248, ptr noundef %dev5.i, ptr noundef nonnull @.str.26, i32 noundef 201, i32 noundef %conv.i) #10
  br label %config_readb.exit

config_readb.exit:                                ; preds = %if.then.i, %for.end
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  %tobool11.not = icmp eq ptr %id.1, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id.1, i32 0, i32 6
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %shr = lshr i32 %11, 8
  %conv16 = zext i8 %9 to i32
  %neg = xor i32 %shr, -1
  %and18 = and i32 %neg, %conv16
  %or = or i32 %and18, %11
  %conv20 = trunc i32 %or to i8
  br label %do.end

if.else:                                          ; preds = %config_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = and i8 %9, -3
  %.pre = zext i8 %9 to i32
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then12
  %conv27.pre-phi = phi i32 [ %conv16, %if.then12 ], [ %.pre, %if.else ]
  %test_c9.0 = phi i8 [ %conv20, %if.then12 ], [ %12, %if.else ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %conv28 = zext i8 %test_c9.0 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.116, i32 noundef %conv27.pre-phi, i32 noundef %conv28) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_writeb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ene_tune_bridge, %if.then.i41)) #10
          to label %config_writeb.exit [label %if.then.i41], !srcloc !310

if.then.i41:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_writeb.__UNIQUE_ID_ddebug251, ptr noundef %dev3.i, ptr noundef nonnull @.str.26, i32 noundef 201, i32 noundef %conv28) #10
  br label %config_writeb.exit

config_writeb.exit:                               ; preds = %if.then.i41, %do.end
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %18, i32 noundef 201, i8 noundef zeroext %test_c9.0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_events(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_yenta_registers(ptr nocapture noundef readonly %yentadev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %yentadev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.127) #10
  %base.i = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cb_readl.exit.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %add6, %cb_readl.exit.for.body_crit_edge ]
  %offset.064 = phi i32 [ %call1, %entry ], [ %add5, %cb_readl.exit.for.body_crit_edge ]
  %and = and i32 %i.065, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %offset.064, ptr noundef nonnull @.str.128, i32 noundef %i.065) #10
  %add = add i32 %call2, %offset.064
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %offset.1 = phi i32 [ %offset.064, %for.body.if.end_crit_edge ], [ %add, %if.then ]
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %i.065
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !313
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb_readl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@show_yenta_registers, %if.then.i)) #10
          to label %cb_readl.exit [label %if.then.i], !srcloc !310

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb_readl.__UNIQUE_ID_ddebug246, ptr noundef %dev6.i, ptr noundef nonnull @.str.33, i32 noundef %i.065, i32 noundef %5) #10
  br label %cb_readl.exit

cb_readl.exit:                                    ; preds = %if.then.i, %if.end
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %offset.1, ptr noundef nonnull @.str.129, i32 noundef %5) #10
  %add5 = add i32 %call4, %offset.1
  %add6 = add nuw nsw i32 %i.065, 4
  %cmp = icmp ult i32 %i.065, 32
  br i1 %cmp, label %cb_readl.exit.for.body_crit_edge, label %for.end

cb_readl.exit.for.body_crit_edge:                 ; preds = %cb_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cb_readl.exit
  %call7 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add5, ptr noundef nonnull @.str.130) #10
  %add8 = add i32 %call7, %add5
  br label %for.body11

for.body11:                                       ; preds = %exca_readb.exit.for.body11_crit_edge, %for.end
  %i.168 = phi i32 [ 0, %for.end ], [ %inc, %exca_readb.exit.for.body11_crit_edge ]
  %offset.267 = phi i32 [ %add8, %for.end ], [ %add26, %exca_readb.exit.for.body11_crit_edge ]
  %and13 = and i32 %i.168, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %for.body11.if.end23_crit_edge

for.body11.if.end23_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then15:                                        ; preds = %for.body11
  %and16 = and i32 %i.168, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset.267
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 8237, ptr %add.ptr, align 1
  %add19 = add i32 %offset.267, 2
  br label %if.end23

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %offset.267, ptr noundef nonnull @.str.128, i32 noundef %i.168) #10
  %add21 = add i32 %call20, %offset.267
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18, %for.body11.if.end23_crit_edge
  %offset.3 = phi i32 [ %offset.267, %for.body11.if.end23_crit_edge ], [ %add19, %if.then18 ], [ %add21, %if.else ]
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %10, i32 2048
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i62, i32 %i.168
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exca_readb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@show_yenta_registers, %if.then.i63)) #10
          to label %exca_readb.exit [label %if.then.i63], !srcloc !310

if.then.i63:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exca_readb.__UNIQUE_ID_ddebug254, ptr noundef %dev7.i, ptr noundef nonnull @.str.26, i32 noundef %i.168, i32 noundef %conv.i) #10
  br label %exca_readb.exit

exca_readb.exit:                                  ; preds = %if.then.i63, %if.end23
  %conv = zext i8 %11 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %offset.3, ptr noundef nonnull @.str.132, i32 noundef %conv) #10
  %add26 = add i32 %call25, %offset.3
  %inc = add nuw nsw i32 %i.168, 1
  %exitcond.not = icmp eq i32 %inc, 69
  br i1 %exitcond.not, label %for.end28, label %exca_readb.exit.for.body11_crit_edge

exca_readb.exit.for.body11_crit_edge:             ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.end28:                                        ; preds = %exca_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add26, ptr noundef nonnull @.str.133) #10
  ret i32 %add26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_dev_suspend_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %save_state = getelementptr inbounds %struct.cardbus_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %save_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %save_state, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef nonnull %1) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #10
  %saved_state = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 10
  %call9 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 64, ptr noundef %saved_state) #10
  %arrayidx11 = getelementptr %struct.yenta_socket, ptr %1, i32 0, i32 10, i32 1
  %call12 = tail call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 68, ptr noundef %arrayidx11) #10
  tail call void @pci_disable_device(ptr noundef %add.ptr) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @yenta_dev_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %saved_state = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %saved_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved_state, align 4
  %call1 = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 64, i32 noundef %3) #10
  %arrayidx3 = getelementptr %struct.yenta_socket, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 68, i32 noundef %5) #10
  %call5 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %add.ptr) #10
  %type = getelementptr inbounds %struct.yenta_socket, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 8
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %restore_state = getelementptr inbounds %struct.cardbus_type, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %restore_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %restore_state, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %9(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 138)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !131, !133, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !238, !240, !242, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !287, !289, !291, !293, !295, !297, !299}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__param_disable_clkrun, !1, !"__param_disable_clkrun", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/yenta_socket.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_clkruntype236, !1, !"__UNIQUE_ID_disable_clkruntype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_clkrun237, !4, !"__UNIQUE_ID_disable_clkrun237", i1 false, i1 false}
!4 = !{!"../drivers/pcmcia/yenta_socket.c", i32 30, i32 1}
!5 = !{ptr @__param_isa_probe, !6, !"__param_isa_probe", i1 false, i1 false}
!6 = !{!"../drivers/pcmcia/yenta_socket.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_isa_probetype238, !6, !"__UNIQUE_ID_isa_probetype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_isa_probe239, !9, !"__UNIQUE_ID_isa_probe239", i1 false, i1 false}
!9 = !{!"../drivers/pcmcia/yenta_socket.c", i32 35, i32 1}
!10 = !{ptr @__param_pwr_irqs_off, !11, !"__param_pwr_irqs_off", i1 false, i1 false}
!11 = !{!"../drivers/pcmcia/yenta_socket.c", i32 38, i32 1}
!12 = !{ptr @__UNIQUE_ID_pwr_irqs_offtype240, !11, !"__UNIQUE_ID_pwr_irqs_offtype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pwr_irqs_off241, !14, !"__UNIQUE_ID_pwr_irqs_off241", i1 false, i1 false}
!14 = !{!"../drivers/pcmcia/yenta_socket.c", i32 39, i32 1}
!15 = !{ptr @__param_o2_speedup, !16, !"__param_o2_speedup", i1 false, i1 false}
!16 = !{!"../drivers/pcmcia/yenta_socket.c", i32 42, i32 1}
!17 = !{ptr @__UNIQUE_ID_o2_speeduptype242, !16, !"__UNIQUE_ID_o2_speeduptype242", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_o2_speedup243, !19, !"__UNIQUE_ID_o2_speedup243", i1 false, i1 false}
!19 = !{!"../drivers/pcmcia/yenta_socket.c", i32 43, i32 1}
!20 = !{ptr @__param_override_bios, !21, !"__param_override_bios", i1 false, i1 false}
!21 = !{!"../drivers/pcmcia/yenta_socket.c", i32 76, i32 1}
!22 = !{ptr @__UNIQUE_ID_override_biostype244, !21, !"__UNIQUE_ID_override_biostype244", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_override_bios245, !24, !"__UNIQUE_ID_override_bios245", i1 false, i1 false}
!24 = !{!"../drivers/pcmcia/yenta_socket.c", i32 77, i32 1}
!25 = !{ptr @__initcall__kmod_yenta_socket__261_1453_yenta_cardbus_driver_init6, !26, !"__initcall__kmod_yenta_socket__261_1453_yenta_cardbus_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1453, i32 1}
!27 = !{ptr @__exitcall_yenta_cardbus_driver_exit, !26, !"__exitcall_yenta_cardbus_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_file262, !29, !"__UNIQUE_ID_file262", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1455, i32 1}
!30 = !{ptr @__UNIQUE_ID_license263, !29, !"__UNIQUE_ID_license263", i1 false, i1 false}
!31 = !{ptr @disable_clkrun, !32, !"disable_clkrun", i1 false, i1 false}
!32 = !{!"../drivers/pcmcia/yenta_socket.c", i32 28, i32 13}
!33 = !{ptr @pwr_irqs_off, !34, !"pwr_irqs_off", i1 false, i1 false}
!34 = !{!"../drivers/pcmcia/yenta_socket.c", i32 37, i32 13}
!35 = !{ptr @override_bios, !36, !"override_bios", i1 false, i1 false}
!36 = !{!"../drivers/pcmcia/yenta_socket.c", i32 75, i32 21}
!37 = !{ptr @__param_str_disable_clkrun, !1, !"__param_str_disable_clkrun", i1 false, i1 false}
!38 = !{ptr @__param_str_isa_probe, !6, !"__param_str_isa_probe", i1 false, i1 false}
!39 = !{ptr @isa_probe, !40, !"isa_probe", i1 false, i1 false}
!40 = !{!"../drivers/pcmcia/yenta_socket.c", i32 33, i32 13}
!41 = !{ptr @__param_str_pwr_irqs_off, !11, !"__param_str_pwr_irqs_off", i1 false, i1 false}
!42 = !{ptr @__param_str_o2_speedup, !16, !"__param_str_o2_speedup", i1 false, i1 false}
!43 = !{ptr @__param_string_o2_speedup, !16, !"__param_string_o2_speedup", i1 false, i1 false}
!44 = !{ptr @o2_speedup, !45, !"o2_speedup", i1 false, i1 false}
!45 = !{!"../drivers/pcmcia/yenta_socket.c", i32 41, i32 13}
!46 = !{ptr @__param_str_override_bios, !21, !"__param_str_override_bios", i1 false, i1 false}
!47 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1446, i32 11}
!50 = !{ptr @yenta_cardbus_driver, !51, !"yenta_cardbus_driver", i1 false, i1 false}
!51 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1445, i32 26}
!52 = !{ptr @yenta_table, !53, !"yenta_table", i1 false, i1 false}
!53 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1366, i32 35}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1169, i32 3}
!56 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.5, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @yenta_probe._entry, !55, !"_entry", i1 false, i1 false}
!61 = !{ptr @yenta_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1204, i32 3}
!64 = !{ptr @yenta_probe._entry.7, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @yenta_probe._entry_ptr.9, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1223, i32 2}
!68 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @yenta_probe._entry.10, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @yenta_probe._entry_ptr.13, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1248, i32 83}
!73 = !{ptr @yenta_probe.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1251, i32 3}
!75 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1253, i32 3}
!78 = !{ptr @yenta_probe._entry.16, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @yenta_probe._entry_ptr.18, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1255, i32 3}
!82 = !{ptr @yenta_probe._entry.19, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @yenta_probe._entry_ptr.21, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1264, i32 2}
!86 = !{ptr @yenta_probe._entry.22, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @yenta_probe._entry_ptr.24, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @yenta_socket_operations, !89, !"yenta_socket_operations", i1 false, i1 false}
!89 = !{!"../drivers/pcmcia/yenta_socket.c", i32 829, i32 33}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pcmcia/yenta_socket.c", i32 160, i32 2}
!92 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @exca_writeb.__UNIQUE_ID_ddebug255, !91, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pcmcia/yenta_socket.c", i32 143, i32 2}
!96 = !{ptr @exca_readb.__UNIQUE_ID_ddebug254, !95, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pcmcia/yenta_socket.c", i32 110, i32 2}
!99 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @config_readw.__UNIQUE_ID_ddebug249, !98, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pcmcia/yenta_socket.c", i32 130, i32 2}
!103 = !{ptr @config_writew.__UNIQUE_ID_ddebug252, !102, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pcmcia/yenta_socket.c", i32 167, i32 2}
!106 = !{ptr @exca_writew.__UNIQUE_ID_ddebug256, !105, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pcmcia/yenta_socket.c", i32 136, i32 2}
!109 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @config_writel.__UNIQUE_ID_ddebug253, !108, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pcmcia/yenta_socket.c", i32 124, i32 2}
!113 = !{ptr @config_writeb.__UNIQUE_ID_ddebug251, !112, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pcmcia/yenta_socket.c", i32 93, i32 2}
!116 = !{ptr @cb_writel.__UNIQUE_ID_ddebug247, !115, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pcmcia/yenta_socket.c", i32 718, i32 3}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @yenta_allocate_res._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @yenta_allocate_res._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pcmcia/yenta_socket.c", i32 743, i32 2}
!124 = !{ptr @yenta_allocate_res._entry.38, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @yenta_allocate_res._entry_ptr.40, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pcmcia/yenta_socket.c", i32 118, i32 2}
!128 = !{ptr @config_readl.__UNIQUE_ID_ddebug250, !127, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!129 = !{ptr @cardbus_type, !130, !"cardbus_type", i1 false, i1 false}
!130 = !{!"../drivers/pcmcia/yenta_socket.c", i32 869, i32 28}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pcmcia/yenta_socket.c", i32 102, i32 2}
!133 = !{ptr @config_readb.__UNIQUE_ID_ddebug248, !132, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!134 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pcmcia/ti113x.h", i32 344, i32 2}
!136 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ti113x_use_isa_irq._entry, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @ti113x_use_isa_irq._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pcmcia/ti113x.h", i32 849, i32 3}
!142 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ti12xx_override._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @ti12xx_override._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/pcmcia/ti113x.h", i32 853, i32 3}
!147 = !{ptr @ti12xx_override._entry.48, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ti12xx_override._entry_ptr.50, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pcmcia/ti113x.h", i32 865, i32 2}
!151 = !{ptr @ti12xx_override._entry.51, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ti12xx_override._entry_ptr.53, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pcmcia/ti113x.h", i32 867, i32 2}
!157 = !{ptr @ti12xx_override._entry.56, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ti12xx_override._entry_ptr.58, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pcmcia/ti113x.h", i32 375, i32 2}
!163 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @ti12xx_irqroute_func0._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @ti12xx_irqroute_func0._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pcmcia/ti113x.h", i32 390, i32 2}
!168 = !{ptr @ti12xx_irqroute_func0._entry.63, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ti12xx_irqroute_func0._entry_ptr.65, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pcmcia/ti113x.h", i32 415, i32 6}
!172 = !{ptr @ti12xx_irqroute_func0._entry.66, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @ti12xx_irqroute_func0._entry_ptr.68, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pcmcia/ti113x.h", i32 431, i32 3}
!176 = !{ptr @ti12xx_irqroute_func0._entry.69, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @ti12xx_irqroute_func0._entry_ptr.71, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pcmcia/ti113x.h", i32 463, i32 3}
!180 = !{ptr @ti12xx_irqroute_func0._entry.72, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @ti12xx_irqroute_func0._entry_ptr.74, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pcmcia/ti113x.h", i32 475, i32 3}
!184 = !{ptr @ti12xx_irqroute_func0._entry.75, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @ti12xx_irqroute_func0._entry_ptr.77, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pcmcia/yenta_socket.c", i32 996, i32 3}
!188 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @yenta_probe_cb_irq._entry, !187, !"_entry", i1 false, i1 false}
!191 = !{ptr @yenta_probe_cb_irq._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pcmcia/ti113x.h", i32 548, i32 2}
!194 = !{ptr @ti12xx_irqroute_func1._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @ti12xx_irqroute_func1._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @ti12xx_irqroute_func1._entry.82, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/pcmcia/ti113x.h", i32 568, i32 2}
!198 = !{ptr @ti12xx_irqroute_func1._entry_ptr.83, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pcmcia/ti113x.h", i32 578, i32 5}
!201 = !{ptr @ti12xx_irqroute_func1._entry.84, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @ti12xx_irqroute_func1._entry_ptr.86, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @ti12xx_irqroute_func1._entry.87, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/pcmcia/ti113x.h", i32 616, i32 5}
!205 = !{ptr @ti12xx_irqroute_func1._entry_ptr.88, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pcmcia/ti113x.h", i32 632, i32 5}
!208 = !{ptr @ti12xx_irqroute_func1._entry.89, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @ti12xx_irqroute_func1._entry_ptr.91, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pcmcia/ti113x.h", i32 644, i32 3}
!212 = !{ptr @ti12xx_irqroute_func1._entry.92, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @ti12xx_irqroute_func1._entry_ptr.94, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pcmcia/ti113x.h", i32 893, i32 3}
!216 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ti1250_override._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @ti1250_override._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/pcmcia/ricoh.h", i32 181, i32 4}
!221 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @ricoh_set_clkrun.__UNIQUE_ID_ddebug257, !220, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!224 = !{ptr @ricoh_set_clkrun._entry, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/pcmcia/ricoh.h", i32 185, i32 4}
!226 = !{ptr @ricoh_set_clkrun._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/pcmcia/topic.h", i32 162, i32 3}
!229 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @topic95_override._entry, !228, !"_entry", i1 false, i1 false}
!232 = !{ptr @topic95_override._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/pcmcia/o2micro.h", i32 124, i32 3}
!235 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @o2micro_override.__UNIQUE_ID_ddebug258, !234, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pcmcia/o2micro.h", i32 146, i32 30}
!240 = !{ptr @.str.107, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pcmcia/o2micro.h", i32 148, i32 35}
!242 = !{ptr @.str.108, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pcmcia/o2micro.h", i32 150, i32 35}
!244 = !{ptr @.str.109, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pcmcia/o2micro.h", i32 151, i32 4}
!246 = !{ptr @o2micro_override._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @o2micro_override._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pcmcia/o2micro.h", i32 155, i32 4}
!250 = !{ptr @o2micro_override._entry.110, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @o2micro_override._entry_ptr.112, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pcmcia/o2micro.h", i32 162, i32 4}
!254 = !{ptr @o2micro_override._entry.113, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @o2micro_override._entry_ptr.115, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pcmcia/ti113x.h", i32 960, i32 2}
!258 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @ene_tune_bridge._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @ene_tune_bridge._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @ene_tune_tbl, !262, !"ene_tune_tbl", i1 false, i1 false}
!262 = !{!"../drivers/pcmcia/ti113x.h", i32 926, i32 29}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1036, i32 2}
!265 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @yenta_get_socket_capabilities._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @yenta_get_socket_capabilities._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = distinct !{null, !269, !"isa_interrupts", i1 false, i1 false}
!269 = !{!"../drivers/pcmcia/yenta_socket.c", i32 55, i32 12}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pcmcia/yenta_socket.c", i32 87, i32 2}
!272 = !{ptr @cb_readl.__UNIQUE_ID_ddebug246, !271, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1127, i32 3}
!275 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @yenta_fixup_parent_bridge._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @yenta_fixup_parent_bridge._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1138, i32 3}
!280 = !{ptr @yenta_fixup_parent_bridge._entry.123, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @yenta_fixup_parent_bridge._entry_ptr.125, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pcmcia/yenta_socket.c", i32 207, i32 8}
!284 = !{ptr @dev_attr_yenta_registers, !283, !"dev_attr_yenta_registers", i1 false, i1 false}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/pcmcia/yenta_socket.c", i32 181, i32 27}
!287 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/pcmcia/yenta_socket.c", i32 185, i32 41}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/pcmcia/yenta_socket.c", i32 187, i32 40}
!291 = !{ptr @.str.130, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/pcmcia/yenta_socket.c", i32 190, i32 39}
!293 = distinct !{null, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pcmcia/yenta_socket.c", i32 195, i32 26}
!295 = !{ptr @.str.132, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/pcmcia/yenta_socket.c", i32 201, i32 40}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pcmcia/yenta_socket.c", i32 203, i32 29}
!299 = !{ptr @yenta_pm_ops, !300, !"yenta_pm_ops", i1 false, i1 false}
!300 = !{!"../drivers/pcmcia/yenta_socket.c", i32 1346, i32 32}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{i64 2148523412, i64 2148523417, i64 2148523430, i64 2148523474, i64 2148523508, i64 2148523529}
!311 = !{i64 2154507650}
!312 = !{i64 5018009}
!313 = !{i64 5018427}
!314 = !{i64 2154508316}
!315 = !{i64 2154528495}
!316 = !{i64 5017812}
!317 = !{i64 5018207}
!318 = !{i64 2154528807}
!319 = !{!"auto-init"}
!320 = !{i64 2154502702}
!321 = !{i64 2154523537}
!322 = !{i8 0, i8 2}
!323 = !{i64 2154531313}
!324 = !{i64 2154531607}
!325 = !{i64 2154531928}
!326 = !{i64 2154532186}
