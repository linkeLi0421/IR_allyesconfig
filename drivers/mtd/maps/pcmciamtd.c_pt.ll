; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/pcmciamtd.c_pt.bc'
source_filename = "../drivers/mtd/maps/pcmciamtd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
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
%struct.pcmciamtd_dev = type { ptr, ptr, i32, i32, %struct.map_info, ptr, i32, [261 x i8] }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%union.map_word = type { [8 x i32] }
%union.cisparse_t = type { %struct.cistpl_cftable_entry_t }
%struct.cistpl_cftable_entry_t = type { i8, i16, i8, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_power_t, %struct.cistpl_timing_t, %struct.cistpl_io_t, %struct.cistpl_irq_t, %struct.cistpl_mem_t, i8 }
%struct.cistpl_power_t = type { i8, i8, [7 x i32] }
%struct.cistpl_timing_t = type { i32, i32, i32, i32, i32, i32 }
%struct.cistpl_io_t = type { i8, i8, [16 x %struct.anon.80] }
%struct.anon.80 = type { i32, i32 }
%struct.cistpl_irq_t = type { i32, i32 }
%struct.cistpl_mem_t = type { i8, i8, [8 x %struct.anon.81] }
%struct.anon.81 = type { i32, i32, i32 }
%struct.cistpl_format_t = type { i8, i8, i32, i32 }
%struct.cistpl_jedec_t = type { i8, [4 x %struct.anon.79] }
%struct.anon.79 = type { i8, i8 }
%struct.cistpl_device_t = type { i8, [4 x %struct.anon.77] }
%struct.anon.77 = type { i8, i8, i32, i32 }
%struct.cistpl_device_geo_t = type { i8, [4 x %struct.anon.82] }
%struct.anon.82 = type { i8, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file238 = internal constant [42 x i8] c"pcmciamtd.file=drivers/mtd/maps/pcmciamtd\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [22 x i8] c"pcmciamtd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [50 x i8] c"pcmciamtd.author=Simon Evans <spse@secret.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [54 x i8] c"pcmciamtd.description=PCMCIA Flash memory card driver\00", section ".modinfo", align 1
@__param_str_bankwidth = internal constant [20 x i8] c"pcmciamtd.bankwidth\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bankwidth = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_bankwidth = internal constant %struct.kernel_param { ptr @__param_str_bankwidth, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @bankwidth } }, section "__param", align 4
@__UNIQUE_ID_bankwidthtype242 = internal constant [33 x i8] c"pcmciamtd.parmtype=bankwidth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bankwidth243 = internal constant [70 x i8] c"pcmciamtd.parm=bankwidth:Set bankwidth (1=8 bit, 2=16 bit, default=2)\00", section ".modinfo", align 1
@__param_str_mem_speed = internal constant [20 x i8] c"pcmciamtd.mem_speed\00", align 1
@mem_speed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem_speed = internal constant %struct.kernel_param { ptr @__param_str_mem_speed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @mem_speed } }, section "__param", align 4
@__UNIQUE_ID_mem_speedtype244 = internal constant [33 x i8] c"pcmciamtd.parmtype=mem_speed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_speed245 = internal constant [55 x i8] c"pcmciamtd.parm=mem_speed:Set memory access speed in ns\00", section ".modinfo", align 1
@__param_str_force_size = internal constant [21 x i8] c"pcmciamtd.force_size\00", align 1
@force_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_size = internal constant %struct.kernel_param { ptr @__param_str_force_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @force_size } }, section "__param", align 4
@__UNIQUE_ID_force_sizetype246 = internal constant [34 x i8] c"pcmciamtd.parmtype=force_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_size247 = internal constant [59 x i8] c"pcmciamtd.parm=force_size:Force size of card in MiB (1-64)\00", section ".modinfo", align 1
@__param_str_setvpp = internal constant [17 x i8] c"pcmciamtd.setvpp\00", align 1
@setvpp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_setvpp = internal constant %struct.kernel_param { ptr @__param_str_setvpp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @setvpp } }, section "__param", align 4
@__UNIQUE_ID_setvpptype248 = internal constant [30 x i8] c"pcmciamtd.parmtype=setvpp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_setvpp249 = internal constant [77 x i8] c"pcmciamtd.parm=setvpp:Set Vpp (0=Never, 1=On writes, 2=Always on, default=0)\00", section ".modinfo", align 1
@__param_str_vpp = internal constant [14 x i8] c"pcmciamtd.vpp\00", align 1
@vpp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vpp = internal constant %struct.kernel_param { ptr @__param_str_vpp, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @vpp } }, section "__param", align 4
@__UNIQUE_ID_vpptype250 = internal constant [27 x i8] c"pcmciamtd.parmtype=vpp:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vpp251 = internal constant [71 x i8] c"pcmciamtd.parm=vpp:Vpp value in 1/10ths eg 33=3.3V 120=12V (Dangerous)\00", section ".modinfo", align 1
@__param_str_mem_type = internal constant [19 x i8] c"pcmciamtd.mem_type\00", align 1
@mem_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem_type = internal constant %struct.kernel_param { ptr @__param_str_mem_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @mem_type } }, section "__param", align 4
@__UNIQUE_ID_mem_typetype252 = internal constant [32 x i8] c"pcmciamtd.parmtype=mem_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mem_type253 = internal constant [75 x i8] c"pcmciamtd.parm=mem_type:Set Memory type (0=Flash, 1=RAM, 2=ROM, default=0)\00", section ".modinfo", align 1
@exit_pcmciamtd.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcmciamtd\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exit_pcmciamtd\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/maps/pcmciamtd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PCMCIA Flash memory card driver unloading\00", [54 x i8] zeroinitializer }, align 32
@pcmciamtd_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @pcmciamtd_probe, ptr @pcmciamtd_detach, ptr @pcmciamtd_suspend, ptr @pcmciamtd_resume, ptr null, ptr @pcmciamtd_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_pcmciamtd__306_752_init_pcmciamtd6 = internal global ptr @init_pcmciamtd, section ".initcall6.init", align 4
@__exitcall_exit_pcmciamtd = internal global ptr @exit_pcmciamtd, section ".exitcall.exit", align 4
@pcmciamtd_ids = internal constant { [23 x %struct.pcmcia_device_id], [308 x i8] } { [23 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 4, i16 0, i16 0, i8 1, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1417570012, i32 535639757, i32 921361697, i32 0], [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 921361697, i32 0, i32 0], [4 x ptr] [ptr @.str.98, ptr @.str.97, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 -1950003926, i32 0, i32 0], [4 x ptr] [ptr @.str.98, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 1844559422, i32 0, i32 0], [4 x ptr] [ptr @.str.98, ptr @.str.100, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2123577323, i32 -783508017, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2123577323, i32 -1562911013, i32 0, i32 0], [4 x ptr] [ptr @.str.101, ptr @.str.103, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1085138705, i32 341633628, i32 0, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1085138705, i32 1107709402, i32 0, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.106, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1085138705, i32 636378288, i32 0, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.107, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1085138705, i32 -544930088, i32 0, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.108, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1422968476, i32 -1391279460, i32 0, i32 0], [4 x ptr] [ptr @.str.109, ptr @.str.110, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1232508728, i32 771442608, i32 0, i32 0], [4 x ptr] [ptr @.str.111, ptr @.str.112, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 2127736199, i32 1734198267, i32 2062498149, i32 0], [4 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -335998635, i32 -2142019382, i32 0, i32 0], [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -335998635, i32 548847383, i32 0, i32 0], [4 x ptr] [ptr @.str.116, ptr @.str.118, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -108565585, i32 -1391779717, i32 0, i32 0], [4 x ptr] [ptr @.str.119, ptr @.str.120, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -108565585, i32 -388463443, i32 0, i32 0], [4 x ptr] [ptr @.str.119, ptr @.str.121, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1761770889, i32 1937398533, i32 0, i32 0], [4 x ptr] [ptr @.str.122, ptr @.str.123, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 98421319, i32 -405374006, i32 0, i32 0], [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 98421319, i32 2076387652, i32 0, i32 0], [4 x ptr] [ptr @.str.124, ptr @.str.126, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 1024, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [308 x i8] zeroinitializer }, align 32
@pcmciamtd_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcmciamtd_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev=0x%p\0A\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcmciamtd_config.probes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcmciamtd_config\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link=0x%p\0A\00", [21 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"requesting window with size = %luKiB memspeed = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ret = %d dev->win_size = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Got window of size %luKiB\0A\00", [37 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev->win_size = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 526, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot allocate memory window\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry_ptr = internal global ptr @pcmciamtd_config._entry, section ".printk_index", align 4
@pcmciamtd_config.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Allocated a window of %dKiB\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 537, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ioremap(%pR) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry_ptr.20 = internal global ptr @pcmciamtd_config._entry.18, section ".printk_index", align 4
@pcmciamtd_config.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.21, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mapped window dev = %p @ %pR, base = %p\0A\00", [55 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.22, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting Configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_ram\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_rom\00", [24 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.25, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Trying %s\0A\00", [21 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.26, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FAILED: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.27, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can not find an MTD\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d%ciB %s\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCMCIA Memory card\00", [45 x i8] zeroinitializer }, align 32
@pcmciamtd_config.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.30, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Using non remapping memory functions\0A\00", [58 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.2, i32 626, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not register the MTD device\0A\00", [61 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry_ptr.33 = internal global ptr @pcmciamtd_config._entry.31, section ".printk_index", align 4
@pcmciamtd_config._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.2, i32 630, ptr @.str.36, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtd%d: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcmciamtd_config._entry_ptr.37 = internal global ptr @pcmciamtd_config._entry.34, section ".printk_index", align 4
@card_settings.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"card_settings\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Found name: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@card_settings.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"size forced to %dM\0A\00", [44 x i8] zeroinitializer }, align 32
@card_settings.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bankwidth forced to %d\0A\00", [40 x i8] zeroinitializer }, align 32
@card_settings.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device: Size: %lu Width:%d Name: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_format.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmciamtd_cistpl_format\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Format type: %u, Error Detection: %u, offset = %u, length =%u\0A\00", [33 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_jedec.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcmciamtd_cistpl_jedec\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JEDEC: 0x%02x 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmciamtd_cistpl_device\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Common memory:\0A\00", [16 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Region %d, type = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Region %d, wp = %u\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Region %d, speed = %u ns\0A\00", [38 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.53, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Region %d, size = %u bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmciamtd_cistpl_geo\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"region: %d bankwidth = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"region: %d erase_block = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.57, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"region: %d read_block = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.58, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"region: %d write_block = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.59, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"region: %d partition = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.60, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"region: %d interleave = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmcia_copy_from_remap.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcmcia_copy_from_remap\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"to = %p from = %lu len = %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@pcmcia_copy_from_remap.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"memcpy from %p to %p len = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@remap_window.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"remap_window\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device removed\0A\00", [16 x i8] zeroinitializer }, align 32
@remap_window.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.66, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Remapping window from 0x%8.8x to 0x%8.8x\0A\00", [54 x i8] zeroinitializer }, align 32
@pcmcia_copy_to_remap.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmcia_copy_to_remap\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"to = %lu from = %p len = %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@pcmcia_copy_to_remap.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.63, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pcmcia_read8_remap.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_read8_remap\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ofs = 0x%08lx (%p) data = 0x%02lx\0A\00", [61 x i8] zeroinitializer }, align 32
@pcmcia_write8_remap.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_write8_remap\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adr = 0x%08lx (%p)  data = 0x%02lx\0A\00", [60 x i8] zeroinitializer }, align 32
@pcmcia_read16_remap.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_read16_remap\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ofs = 0x%08lx (%p) data = 0x%04lx\0A\00", [61 x i8] zeroinitializer }, align 32
@pcmcia_write16_remap.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmcia_write16_remap\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adr = 0x%08lx (%p)  data = 0x%04lx\0A\00", [60 x i8] zeroinitializer }, align 32
@pcmciamtd_set_vpp.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmciamtd_set_vpp\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dev = %p on = %d vpp = %d\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmcia_vpp_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcmcia_vpp_lock, i64 52), ptr getelementptr (i8, ptr @pcmcia_vpp_lock, i64 52) }, ptr @pcmcia_vpp_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pcmcia_vpp_refcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcmcia_vpp_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcmcia_vpp_lock\00", [16 x i8] zeroinitializer }, align 32
@pcmciamtd_release.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmciamtd_release\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link = 0x%p\0A\00", [19 x i8] zeroinitializer }, align 32
@pcmcia_read8.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.70, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcmcia_read8\00", [19 x i8] zeroinitializer }, align 32
@pcmcia_write8.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.72, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcmcia_write8\00", [18 x i8] zeroinitializer }, align 32
@pcmcia_read16.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.74, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcmcia_read16\00", [18 x i8] zeroinitializer }, align 32
@pcmcia_write16.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.76, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcmcia_write16\00", [17 x i8] zeroinitializer }, align 32
@pcmcia_copy_from.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.62, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcmcia_copy_from\00", [47 x i8] zeroinitializer }, align 32
@pcmcia_copy_to.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.68, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcmcia_copy_to\00", [17 x i8] zeroinitializer }, align 32
@pcmciamtd_detach.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.9, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcmciamtd_detach\00", [47 x i8] zeroinitializer }, align 32
@pcmciamtd_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.89, ptr @.str.2, i32 663, ptr @.str.36, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtd%d: Removing\0A\00", [47 x i8] zeroinitializer }, align 32
@pcmciamtd_detach._entry_ptr = internal global ptr @pcmciamtd_detach._entry, section ".printk_index", align 4
@pcmciamtd_suspend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmciamtd_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EVENT_PM_RESUME\0A\00", [47 x i8] zeroinitializer }, align 32
@pcmciamtd_resume.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcmciamtd_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EVENT_PM_SUSPEND\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO DATA\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCS-2M\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2MB SRAM\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"4MB FLASH\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8MB FLASH\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S2E20SW\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S2E8 SW\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intel\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SERIES2-02 \00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SERIES2-04 \00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SERIES2-20 \00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VALUE SERIES 100 \00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"KINGMAX TECHNOLOGY INC.\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SRAM 256K Bytes\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maxtor\00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MAXFL MobileMax Flash Memory Card\00", [62 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"M-Systems\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"M-SYS Flash Memory Card\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(c) M-Systems\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PRETEC\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  2MB SRAM CARD\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  4MB SRAM CARD\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEIKO EPSON\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WWB101EN20\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WWB513EN20\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMART Modular Technologies\00", [37 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" 4MB FLASH Card\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Starfish, Inc.\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REX-3000\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REX-4100\00", [23 x i8] zeroinitializer }, align 32
@init_pcmciamtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 731, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016pcmciamtd: bad bankwidth (%d), using default\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_pcmciamtd\00", [17 x i8] zeroinitializer }, align 32
@init_pcmciamtd._entry_ptr = internal global ptr @init_pcmciamtd._entry, section ".printk_index", align 4
@init_pcmciamtd._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016pcmciamtd: bad force_size (%d), using default\0A\00", [47 x i8] zeroinitializer }, align 32
@init_pcmciamtd._entry_ptr.131 = internal global ptr @init_pcmciamtd._entry.129, section ".printk_index", align 4
@init_pcmciamtd._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016pcmciamtd: bad mem_type (%d), using default\0A\00", [49 x i8] zeroinitializer }, align 32
@init_pcmciamtd._entry_ptr.134 = internal global ptr @init_pcmciamtd._entry.132, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"bankwidth\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 46, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [10 x i8] c"mem_speed\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 49, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"force_size\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 52, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"setvpp\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 58, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant [4 x i8] c"vpp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 55, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"mem_type\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 61, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 748, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"pcmciamtd_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 717, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"pcmciamtd_ids\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 686, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 678, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"probes\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 468, i32 15 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 468, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 468, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 471, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 504, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 508, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 516, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 523, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 526, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 530, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 536, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 541, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 556, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 567, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 569, i32 22 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 572, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 577, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 582, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 603, i32 50 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 603, i32 75 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 609, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 625, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 630, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 426, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 442, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 447, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 456, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 342, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 358, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 376, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 380, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 381, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 382, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 383, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 403, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 404, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 405, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 406, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 407, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 408, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 143, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 155, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 91, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 97, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 192, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 118, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 171, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 133, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 182, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 304, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [16 x i8] c"pcmcia_vpp_lock\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"pcmcia_vpp_refcnt\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 298, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 297, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 321, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 226, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 266, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 241, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 279, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 254, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 292, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 658, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 662, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 637, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 646, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 688, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 689, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 690, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 691, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 692, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 693, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 694, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 695, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 696, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 697, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 698, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 699, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 700, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 701, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 702, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 703, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 704, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 705, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 706, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 707, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 731, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 735, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.562 = private constant [32 x i8] c"../drivers/mtd/maps/pcmciamtd.c\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 739, i32 3 }
@llvm.compiler.used = appending global [176 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_bankwidth243, ptr @__UNIQUE_ID_bankwidthtype242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_force_size247, ptr @__UNIQUE_ID_force_sizetype246, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_mem_speed245, ptr @__UNIQUE_ID_mem_speedtype244, ptr @__UNIQUE_ID_mem_type253, ptr @__UNIQUE_ID_mem_typetype252, ptr @__UNIQUE_ID_setvpp249, ptr @__UNIQUE_ID_setvpptype248, ptr @__UNIQUE_ID_vpp251, ptr @__UNIQUE_ID_vpptype250, ptr @__exitcall_exit_pcmciamtd, ptr @__initcall__kmod_pcmciamtd__306_752_init_pcmciamtd6, ptr @__param_bankwidth, ptr @__param_force_size, ptr @__param_mem_speed, ptr @__param_mem_type, ptr @__param_setvpp, ptr @__param_vpp, ptr @exit_pcmciamtd, ptr @init_pcmciamtd._entry, ptr @init_pcmciamtd._entry.129, ptr @init_pcmciamtd._entry.132, ptr @init_pcmciamtd._entry_ptr, ptr @init_pcmciamtd._entry_ptr.131, ptr @init_pcmciamtd._entry_ptr.134, ptr @pcmciamtd_config._entry, ptr @pcmciamtd_config._entry.18, ptr @pcmciamtd_config._entry.31, ptr @pcmciamtd_config._entry.34, ptr @pcmciamtd_config._entry_ptr, ptr @pcmciamtd_config._entry_ptr.20, ptr @pcmciamtd_config._entry_ptr.33, ptr @pcmciamtd_config._entry_ptr.37, ptr @pcmciamtd_detach._entry, ptr @pcmciamtd_detach._entry_ptr, ptr @bankwidth, ptr @mem_speed, ptr @force_size, ptr @setvpp, ptr @vpp, ptr @mem_type, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pcmciamtd_driver, ptr @pcmciamtd_ids, ptr @.str.4, ptr @.str.5, ptr @pcmciamtd_config.probes, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @pcmcia_vpp_lock, ptr @pcmcia_vpp_refcnt, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bankwidth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setvpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_ids to i32), i32 1196, i32 1504, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_config.probes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_config._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_config._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_vpp_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_vpp_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmciamtd_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pcmciamtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pcmciamtd._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pcmciamtd._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_pcmciamtd() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_pcmciamtd.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_pcmciamtd, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_pcmciamtd.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @pcmciamtd_driver) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_pcmciamtd() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %switch = icmp ult i32 %0, 3
  br i1 %switch, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %0) #13
  store i32 2, ptr @bankwidth, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @force_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %2 = icmp ugt i32 %1, 64
  br i1 %2, label %do.end9, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %1) #13
  store i32 0, ptr @force_size, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  %3 = load i32, ptr @mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch27 = icmp ult i32 %3, 3
  br i1 %switch27, label %if.end12.if.end23_crit_edge, label %do.end20

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %3) #13
  store i32 0, ptr @mem_type, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end12.if.end23_crit_edge
  %call24 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @pcmciamtd_driver) #10
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_probe(ptr noundef %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 364) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_probe, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_probe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %call7 = tail call fastcc i32 @pcmciamtd_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmciamtd_detach(ptr noundef %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_detach.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_detach, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_detach.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.9, ptr noundef %link) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mtd_info = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mtd_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd_info, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %if.then4

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.pcmcia_device, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %mtd_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtd_info, align 4
  %index = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.90, i32 noundef %9) #13
  %10 = ptrtoint ptr %mtd_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtd_info, align 4
  tail call void @map_destroy(ptr noundef %11) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %do.end.if.end13_crit_edge
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_detach, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !358

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_release.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82, ptr noundef %link) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end13
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %do.end.i.pcmciamtd_release.exit_crit_edge, label %if.then4.i

do.end.i.pcmciamtd_release.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit

if.then4.i:                                       ; preds = %do.end.i
  %win_base.i = getelementptr inbounds %struct.pcmciamtd_dev, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %win_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %win_base.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.then4.i.pcmciamtd_release.exit_crit_edge, label %if.then6.i

if.then4.i.pcmciamtd_release.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %19) #10
  %20 = ptrtoint ptr %win_base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %win_base.i, align 4
  br label %pcmciamtd_release.exit

pcmciamtd_release.exit:                           ; preds = %if.then6.i, %if.then4.i.pcmciamtd_release.exit_crit_edge, %do.end.i.pcmciamtd_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_suspend(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_suspend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_suspend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_suspend.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_resume(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_resume.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_resume, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_resume.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.94) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcmciamtd_config(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  %new_name = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_name) #10
  %2 = ptrtoint ptr %new_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %new_name, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.9, ptr noundef %link) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call fastcc void @card_settings(ptr noundef %1, ptr noundef %link, ptr noundef nonnull %new_name)
  %pcmcia_map = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4
  %phys = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phys, align 4
  %copy_from = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %copy_from to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pcmcia_copy_from_remap, ptr %copy_from, align 4
  %copy_to = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 10
  %5 = ptrtoint ptr %copy_to to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcmcia_copy_to_remap, ptr %copy_to, align 4
  %bankwidth = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %spec.select601 = select i1 %cmp, ptr @pcmcia_read8_remap, ptr @pcmcia_read16_remap
  %spec.select602 = select i1 %cmp, ptr @pcmcia_write8_remap, ptr @pcmcia_write16_remap
  %8 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select601, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select602, ptr %10, align 4
  %12 = load i32, ptr @setvpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp14 = icmp eq i32 %12, 1
  br i1 %cmp14, label %if.then15, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %set_vpp = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 12
  %13 = ptrtoint ptr %set_vpp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pcmciamtd_set_vpp, ptr %set_vpp, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.if.end17_crit_edge
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %flags, align 4
  %18 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp20 = icmp eq i32 %19, 1
  %cond = select i1 %cmp20, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %flags23 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags23, align 4
  %or24 = or i32 %23, %cond
  store i32 %or24, ptr %flags23, align 4
  %24 = load ptr, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = load i32, ptr @force_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool27.not = icmp eq i32 %26, 0
  %shl = shl i32 %26, 20
  %spec.select = select i1 %tobool27.not, i32 67108864, i32 %shl
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %end, align 4
  %win_size = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %win_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %win_size, align 4
  br label %do.body31

do.body31:                                        ; preds = %do.cond116.do.body31_crit_edge, %if.end17
  %j.0 = phi i32 [ 0, %if.end17 ], [ %inc, %do.cond116.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then45)) #10
          to label %do.end51 [label %if.then45], !srcloc !358

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  %sub.i = add i32 %34, 1
  %add.i = sub i32 %sub.i, %36
  %shr = lshr i32 %add.i, 10
  %37 = load i32, ptr @mem_speed, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.10, i32 noundef %shr, i32 noundef %37) #10
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body31
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %40 = load i32, ptr @mem_speed, align 4
  %call54 = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %39, i32 noundef %40) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then67)) #10
          to label %do.end71 [label %if.then67], !srcloc !358

if.then67:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %win_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.11, i32 noundef %call54, i32 noundef %42) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool72.not = icmp eq i32 %call54, 0
  br i1 %tobool72.not, label %do.body91, label %do.cond116

do.body91:                                        ; preds = %do.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then103)) #10
          to label %cleanup [label %if.then103], !srcloc !358

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %end.i540 = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %end.i540 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end.i540, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 4
  %sub.i541 = add i32 %46, 1
  %add.i542 = sub i32 %sub.i541, %48
  %shr107 = lshr i32 %add.i542, 10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.12, i32 noundef %shr107) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then103, %do.body91
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %end.i543 = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %end.i543 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end.i543, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %sub.i544 = add i32 %52, 1
  %add.i545 = sub i32 %sub.i544, %54
  %55 = ptrtoint ptr %win_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i545, ptr %win_size, align 4
  br label %do.body122

do.cond116:                                       ; preds = %do.end71
  %inc = add i32 %j.0, 1
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %57, align 4
  %59 = load i32, ptr @force_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool77.not = icmp eq i32 %59, 0
  %shl79 = shl i32 %59, 20
  %spec.select506 = select i1 %tobool77.not, i32 67108864, i32 %shl79
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx, align 4
  %end85 = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %end85 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select506, ptr %end85, align 4
  %63 = load ptr, ptr %arrayidx, align 4
  %end88 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %end88 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end88, align 4
  %shr89 = lshr i32 %65, %inc
  store i32 %shr89, ptr %end88, align 4
  %66 = load ptr, ptr %arrayidx, align 4
  %end119 = getelementptr inbounds %struct.resource, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %end119 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end119, align 4
  %cmp120 = icmp ugt i32 %68, 4095
  br i1 %cmp120, label %do.cond116.do.body31_crit_edge, label %do.cond116.do.body122_crit_edge

do.cond116.do.body122_crit_edge:                  ; preds = %do.cond116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body122

do.cond116.do.body31_crit_edge:                   ; preds = %do.cond116
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31

do.body122:                                       ; preds = %do.cond116.do.body122_crit_edge, %cleanup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then134)) #10
          to label %do.end138 [label %if.then134], !srcloc !358

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %win_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.13, i32 noundef %70) #10
  br label %do.end138

do.end138:                                        ; preds = %if.then134, %do.body122
  %71 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool140.not = icmp eq i32 %72, 0
  br i1 %tobool140.not, label %do.end144, label %do.body147

do.end144:                                        ; preds = %do.end138
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %dev145 = getelementptr inbounds %struct.pcmcia_device, ptr %74, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.14) #13
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !358

if.then.i:                                        ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_release.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82, ptr noundef %link) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end144
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %end.i546 = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %end.i546 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %end.i546, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool3.not.i = icmp eq i32 %80, 0
  br i1 %tobool3.not.i, label %do.end.i.pcmciamtd_release.exit_crit_edge, label %if.then4.i

do.end.i.pcmciamtd_release.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit

if.then4.i:                                       ; preds = %do.end.i
  %win_base.i = getelementptr inbounds %struct.pcmciamtd_dev, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %win_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %win_base.i, align 4
  %tobool5.not.i = icmp eq ptr %82, null
  br i1 %tobool5.not.i, label %if.then4.i.pcmciamtd_release.exit_crit_edge, label %if.then6.i

if.then4.i.pcmciamtd_release.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %82) #10
  %83 = ptrtoint ptr %win_base.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %win_base.i, align 4
  br label %pcmciamtd_release.exit

pcmciamtd_release.exit:                           ; preds = %if.then6.i, %if.then4.i.pcmciamtd_release.exit_crit_edge, %do.end.i.pcmciamtd_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  br label %cleanup400

do.body147:                                       ; preds = %do.end138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then159)) #10
          to label %do.end164 [label %if.then159], !srcloc !358

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %win_size, align 4
  %shr161 = lshr i32 %85, 10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.17, i32 noundef %shr161) #10
  br label %do.end164

do.end164:                                        ; preds = %if.then159, %do.body147
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %end.i547 = getelementptr inbounds %struct.resource, ptr %87, i32 0, i32 1
  %90 = ptrtoint ptr %end.i547 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %end.i547, align 4
  %sub.i548 = sub i32 1, %89
  %add.i549 = add i32 %sub.i548, %91
  %call171 = tail call ptr @ioremap(i32 noundef %89, i32 noundef %add.i549) #10
  %win_base = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %win_base to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call171, ptr %win_base, align 4
  %tobool173.not = icmp eq ptr %call171, null
  br i1 %tobool173.not, label %do.end177, label %do.body183

do.end177:                                        ; preds = %do.end164
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %dev179 = getelementptr inbounds %struct.pcmcia_device, ptr %94, i32 0, i32 21
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.19, ptr noundef %96) #13
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then.i551)) #10
          to label %do.end.i555 [label %if.then.i551], !srcloc !358

if.then.i551:                                     ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_release.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82, ptr noundef %link) #10
  br label %do.end.i555

do.end.i555:                                      ; preds = %if.then.i551, %do.end177
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx, align 4
  %end.i553 = getelementptr inbounds %struct.resource, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %end.i553 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %end.i553, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool3.not.i554 = icmp eq i32 %102, 0
  br i1 %tobool3.not.i554, label %do.end.i555.pcmciamtd_release.exit560_crit_edge, label %if.then4.i558

do.end.i555.pcmciamtd_release.exit560_crit_edge:  ; preds = %do.end.i555
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit560

if.then4.i558:                                    ; preds = %do.end.i555
  %win_base.i556 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %win_base.i556 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %win_base.i556, align 4
  %tobool5.not.i557 = icmp eq ptr %104, null
  br i1 %tobool5.not.i557, label %if.then4.i558.pcmciamtd_release.exit560_crit_edge, label %if.then6.i559

if.then4.i558.pcmciamtd_release.exit560_crit_edge: ; preds = %if.then4.i558
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit560

if.then6.i559:                                    ; preds = %if.then4.i558
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %104) #10
  %105 = ptrtoint ptr %win_base.i556 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %win_base.i556, align 4
  br label %pcmciamtd_release.exit560

pcmciamtd_release.exit560:                        ; preds = %if.then6.i559, %if.then4.i558.pcmciamtd_release.exit560_crit_edge, %do.end.i555.pcmciamtd_release.exit560_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  br label %cleanup400

do.body183:                                       ; preds = %do.end164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then195)) #10
          to label %do.end201 [label %if.then195], !srcloc !358

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx, align 4
  %108 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %win_base, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.21, ptr noundef %1, ptr noundef %107, ptr noundef %109) #10
  br label %do.end201

do.end201:                                        ; preds = %if.then195, %do.body183
  %offset = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 3
  %110 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %offset, align 4
  %111 = ptrtoint ptr %1 to i32
  %map_priv_1 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 14
  %112 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %map_priv_1, align 4
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx, align 4
  %115 = ptrtoint ptr %114 to i32
  %map_priv_2 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 4, i32 15
  %116 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %map_priv_2, align 4
  %117 = load i32, ptr @vpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool206.not = icmp eq i32 %117, 0
  br i1 %tobool206.not, label %cond.false208, label %do.end201.cond.end210_crit_edge

do.end201.cond.end210_crit_edge:                  ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end210

cond.false208:                                    ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %link, align 8
  %Vpp = getelementptr inbounds %struct.pcmcia_socket, ptr %119, i32 0, i32 1, i32 3
  %120 = ptrtoint ptr %Vpp to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %Vpp, align 1
  %conv = zext i8 %121 to i32
  br label %cond.end210

cond.end210:                                      ; preds = %cond.false208, %do.end201.cond.end210_crit_edge
  %cond211 = phi i32 [ %conv, %cond.false208 ], [ %117, %do.end201.cond.end210_crit_edge ]
  %vpp = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 6
  %122 = ptrtoint ptr %vpp to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %cond211, ptr %vpp, align 4
  %123 = load i32, ptr @setvpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp212 = icmp eq i32 %123, 2
  %spec.select603 = select i1 %cmp212, i32 %cond211, i32 0
  %124 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 9
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %spec.select603, ptr %124, align 8
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %126 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %config_index, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then232)) #10
          to label %do.end235 [label %if.then232], !srcloc !358

if.then232:                                       ; preds = %cond.end210
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.22) #10
  br label %do.end235

do.end235:                                        ; preds = %if.then232, %cond.end210
  %call236 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237.not = icmp eq i32 %call236, 0
  br i1 %cmp237.not, label %if.end246, label %if.then239

if.then239:                                       ; preds = %do.end235
  %127 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %win_base, align 4
  %tobool241.not = icmp eq ptr %128, null
  br i1 %tobool241.not, label %if.then239.cleanup400_crit_edge, label %if.then242

if.then239.cleanup400_crit_edge:                  ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup400

if.then242:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %128) #10
  %129 = ptrtoint ptr %win_base to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %win_base, align 4
  br label %cleanup400

if.end246:                                        ; preds = %do.end235
  %130 = load i32, ptr @mem_type, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values)
  switch i32 %130, label %if.end246.do.body261_crit_edge [
    i32 1, label %if.end246.if.end303_crit_edge
    i32 2, label %if.then255
  ]

if.end246.if.end303_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end303

if.end246.do.body261_crit_edge:                   ; preds = %if.end246
  br label %do.body261

if.then255:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end303

do.body261:                                       ; preds = %for.inc.do.body261_crit_edge, %if.end246.do.body261_crit_edge
  %cmp259 = phi i1 [ false, %for.inc.do.body261_crit_edge ], [ true, %if.end246.do.body261_crit_edge ]
  %i.0597 = phi i32 [ 1, %for.inc.do.body261_crit_edge ], [ 0, %if.end246.do.body261_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then273)) #10
          to label %do.end277 [label %if.then273], !srcloc !358

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx274 = getelementptr [2 x ptr], ptr @pcmciamtd_config.probes, i32 0, i32 %i.0597
  %132 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx274, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.25, ptr noundef %133) #10
  br label %do.end277

do.end277:                                        ; preds = %if.then273, %do.body261
  %arrayidx278 = getelementptr [2 x ptr], ptr @pcmciamtd_config.probes, i32 0, i32 %i.0597
  %134 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx278, align 4
  %call280 = tail call ptr @do_map_probe(ptr noundef %135, ptr noundef %pcmcia_map) #10
  %tobool281.not = icmp eq ptr %call280, null
  br i1 %tobool281.not, label %do.body284, label %do.end277.if.end322_crit_edge

do.end277.if.end322_crit_edge:                    ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end322

do.body284:                                       ; preds = %do.end277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then296)) #10
          to label %for.inc [label %if.then296], !srcloc !358

if.then296:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.26, ptr noundef %135) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then296, %do.body284
  br i1 %cmp259, label %for.inc.do.body261_crit_edge, label %for.inc.do.body306_crit_edge

for.inc.do.body306_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body306

for.inc.do.body261_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body261

if.end303:                                        ; preds = %if.then255, %if.end246.if.end303_crit_edge
  %.str.24.sink = phi ptr [ @.str.24, %if.then255 ], [ @.str.23, %if.end246.if.end303_crit_edge ]
  %call257 = tail call ptr @do_map_probe(ptr noundef nonnull %.str.24.sink, ptr noundef %pcmcia_map) #10
  %tobool304.not = icmp eq ptr %call257, null
  br i1 %tobool304.not, label %if.end303.do.body306_crit_edge, label %if.end303.if.end322_crit_edge

if.end303.if.end322_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end322

if.end303.do.body306_crit_edge:                   ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body306

do.body306:                                       ; preds = %if.end303.do.body306_crit_edge, %for.inc.do.body306_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then318)) #10
          to label %do.end321 [label %if.then318], !srcloc !358

if.then318:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.27) #10
  br label %do.end321

do.end321:                                        ; preds = %if.then318, %do.body306
  %136 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then.i562)) #10
          to label %do.end.i566 [label %if.then.i562], !srcloc !358

if.then.i562:                                     ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_release.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82, ptr noundef %link) #10
  br label %do.end.i566

do.end.i566:                                      ; preds = %if.then.i562, %do.end321
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx, align 4
  %end.i564 = getelementptr inbounds %struct.resource, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %end.i564 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %end.i564, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool3.not.i565 = icmp eq i32 %141, 0
  br i1 %tobool3.not.i565, label %do.end.i566.pcmciamtd_release.exit571_crit_edge, label %if.then4.i569

do.end.i566.pcmciamtd_release.exit571_crit_edge:  ; preds = %do.end.i566
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit571

if.then4.i569:                                    ; preds = %do.end.i566
  %win_base.i567 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %137, i32 0, i32 1
  %142 = ptrtoint ptr %win_base.i567 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %win_base.i567, align 4
  %tobool5.not.i568 = icmp eq ptr %143, null
  br i1 %tobool5.not.i568, label %if.then4.i569.pcmciamtd_release.exit571_crit_edge, label %if.then6.i570

if.then4.i569.pcmciamtd_release.exit571_crit_edge: ; preds = %if.then4.i569
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcmciamtd_release.exit571

if.then6.i570:                                    ; preds = %if.then4.i569
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %143) #10
  %144 = ptrtoint ptr %win_base.i567 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %win_base.i567, align 4
  br label %pcmciamtd_release.exit571

pcmciamtd_release.exit571:                        ; preds = %if.then6.i570, %if.then4.i569.pcmciamtd_release.exit571_crit_edge, %do.end.i566.pcmciamtd_release.exit571_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  br label %cleanup400

if.end322:                                        ; preds = %if.end303.if.end322_crit_edge, %do.end277.if.end322_crit_edge
  %mtd.1591 = phi ptr [ %call257, %if.end303.if.end322_crit_edge ], [ %call280, %do.end277.if.end322_crit_edge ]
  %mtd_info = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 5
  %145 = ptrtoint ptr %mtd_info to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %mtd.1591, ptr %mtd_info, align 4
  %owner = getelementptr inbounds %struct.mtd_info, ptr %mtd.1591, i32 0, i32 55
  %146 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %owner, align 4
  %147 = ptrtoint ptr %new_name to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %new_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool323.not = icmp eq i32 %148, 0
  br i1 %tobool323.not, label %if.end322.if.end339_crit_edge, label %if.then324

if.end322.if.end339_crit_edge:                    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end339

if.then324:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #12
  %size325 = getelementptr inbounds %struct.mtd_info, ptr %mtd.1591, i32 0, i32 2
  %149 = ptrtoint ptr %size325 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %size325, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %150)
  %cmp326 = icmp ult i64 %150, 1048576
  %size.0.v.v = select i1 %cmp326, i64 10, i64 20
  %size.0.v = lshr i64 %150, %size.0.v.v
  %size.0 = trunc i64 %size.0.v to i32
  %unit.0 = select i1 %cmp326, i32 75, i32 77
  %mtd_name = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 7
  %call338 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mtd_name, i32 noundef 261, ptr noundef nonnull @.str.28, i32 noundef %size.0, i32 noundef %unit.0, ptr noundef nonnull @.str.29)
  br label %if.end339

if.end339:                                        ; preds = %if.then324, %if.end322.if.end339_crit_edge
  %size340 = getelementptr inbounds %struct.mtd_info, ptr %mtd.1591, i32 0, i32 2
  %151 = ptrtoint ptr %size340 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %size340, align 8
  %153 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %win_size, align 4
  %conv342 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %152, i64 %conv342)
  %cmp343.not = icmp ugt i64 %152, %conv342
  br i1 %cmp343.not, label %if.end339.if.end384_crit_edge, label %do.body346

if.end339.if.end384_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end384

do.body346:                                       ; preds = %if.end339
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_config.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_config, %if.then358)) #10
          to label %do.end361 [label %if.then358], !srcloc !358

if.then358:                                       ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_config.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.30) #10
  br label %do.end361

do.end361:                                        ; preds = %if.then358, %do.body346
  %155 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %win_base, align 4
  %157 = ptrtoint ptr %156 to i32
  %158 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %map_priv_2, align 4
  %159 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp367 = icmp eq i32 %160, 1
  %spec.select604 = select i1 %cmp367, ptr @pcmcia_read8, ptr @pcmcia_read16
  %spec.select605 = select i1 %cmp367, ptr @pcmcia_write8, ptr @pcmcia_write16
  %161 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %spec.select604, ptr %8, align 4
  %162 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %spec.select605, ptr %10, align 4
  %163 = ptrtoint ptr %copy_from to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @pcmcia_copy_from, ptr %copy_from, align 4
  %164 = ptrtoint ptr %copy_to to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @pcmcia_copy_to, ptr %copy_to, align 4
  br label %if.end384

if.end384:                                        ; preds = %do.end361, %if.end339.if.end384_crit_edge
  %call385 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %mtd.1591, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %do.end397, label %if.then387

if.then387:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @map_destroy(ptr noundef nonnull %mtd.1591) #10
  %165 = ptrtoint ptr %mtd_info to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %mtd_info, align 4
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %dev393 = getelementptr inbounds %struct.pcmcia_device, ptr %167, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev393, ptr noundef nonnull @.str.32) #13
  tail call fastcc void @pcmciamtd_release(ptr noundef %link)
  br label %cleanup400

do.end397:                                        ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #12
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %dev399 = getelementptr inbounds %struct.pcmcia_device, ptr %169, i32 0, i32 21
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd.1591, i32 0, i32 14
  %170 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd.1591, i32 0, i32 13
  %172 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev399, ptr noundef nonnull @.str.35, i32 noundef %171, ptr noundef %173) #13
  br label %cleanup400

cleanup400:                                       ; preds = %do.end397, %if.then387, %pcmciamtd_release.exit571, %if.then242, %if.then239.cleanup400_crit_edge, %pcmciamtd_release.exit560, %pcmciamtd_release.exit
  %retval.0 = phi i32 [ -19, %if.then387 ], [ 0, %do.end397 ], [ -19, %pcmciamtd_release.exit571 ], [ -19, %pcmciamtd_release.exit560 ], [ -19, %pcmciamtd_release.exit ], [ -19, %if.then242 ], [ -19, %if.then239.cleanup400_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @card_settings(ptr noundef %dev, ptr noundef %p_dev, ptr nocapture noundef writeonly %new_name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_id = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prod_id, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end:                                           ; preds = %entry
  %mtd_name = getelementptr inbounds %struct.pcmciamtd_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %mtd_name to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mtd_name, align 4
  %3 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prod_id, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.end.if.end.1_crit_edge, label %if.then8

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @strcat(ptr noundef %mtd_name, ptr noundef nonnull %4)
  br label %if.end.1

if.end.1:                                         ; preds = %if.then8, %if.end.if.end.1_crit_edge
  %strlen.1 = tail call i32 @strlen(ptr noundef %mtd_name) #15
  %endptr.1 = getelementptr i8, ptr %mtd_name, i32 %strlen.1
  %5 = ptrtoint ptr %endptr.1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 8192, ptr %endptr.1, align 1
  %arrayidx6.1 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.1, align 4
  %tobool7.not.1 = icmp eq ptr %7, null
  br i1 %tobool7.not.1, label %if.end.1.if.end.2_crit_edge, label %if.then8.1

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.then8.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %call13.1 = tail call ptr @strcat(ptr noundef %mtd_name, ptr noundef nonnull %7)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then8.1, %if.end.1.if.end.2_crit_edge
  %strlen.2 = tail call i32 @strlen(ptr noundef %mtd_name) #15
  %endptr.2 = getelementptr i8, ptr %mtd_name, i32 %strlen.2
  %8 = ptrtoint ptr %endptr.2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 8192, ptr %endptr.2, align 1
  %arrayidx6.2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 2
  %9 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6.2, align 4
  %tobool7.not.2 = icmp eq ptr %10, null
  br i1 %tobool7.not.2, label %if.end.2.if.end.3_crit_edge, label %if.then8.2

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

if.then8.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %call13.2 = tail call ptr @strcat(ptr noundef %mtd_name, ptr noundef nonnull %10)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then8.2, %if.end.2.if.end.3_crit_edge
  %strlen.3 = tail call i32 @strlen(ptr noundef %mtd_name) #15
  %endptr.3 = getelementptr i8, ptr %mtd_name, i32 %strlen.3
  %11 = ptrtoint ptr %endptr.3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 8192, ptr %endptr.3, align 1
  %arrayidx6.3 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 3
  %12 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.3, align 4
  %tobool7.not.3 = icmp eq ptr %13, null
  br i1 %tobool7.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.then8.3

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then8.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  %call13.3 = tail call ptr @strcat(ptr noundef %mtd_name, ptr noundef nonnull %13)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then8.3, %if.end.3.for.inc.3_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_settings.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_settings, %if.then19)) #10
          to label %if.end23 [label %if.then19], !srcloc !358

if.then19:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @card_settings.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.40, ptr noundef %mtd_name) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.inc.3, %entry.if.end23_crit_edge
  %call24 = tail call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext 65, ptr noundef nonnull @pcmciamtd_cistpl_format, ptr noundef null) #10
  %call25 = tail call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext 24, ptr noundef nonnull @pcmciamtd_cistpl_jedec, ptr noundef null) #10
  %call26 = tail call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext 1, ptr noundef nonnull @pcmciamtd_cistpl_device, ptr noundef %dev) #10
  %call27 = tail call i32 @pcmcia_loop_tuple(ptr noundef %p_dev, i8 noundef zeroext 30, ptr noundef nonnull @pcmciamtd_cistpl_geo, ptr noundef %dev) #10
  %pcmcia_map = getelementptr inbounds %struct.pcmciamtd_dev, ptr %dev, i32 0, i32 4
  %size = getelementptr inbounds %struct.pcmciamtd_dev, ptr %dev, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  br i1 %tobool28.not, label %if.then29, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108864, ptr %size, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end23.if.end32_crit_edge
  %bankwidth = getelementptr inbounds %struct.pcmciamtd_dev, ptr %dev, i32 0, i32 4, i32 6
  %17 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool34.not = icmp eq i32 %18, 0
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %bankwidth, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %20 = load i32, ptr @force_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool39.not = icmp eq i32 %20, 0
  br i1 %tobool39.not, label %if.end38.if.end59_crit_edge, label %if.then40

if.end38.if.end59_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %20, 20
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_settings.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_settings, %if.then55)) #10
          to label %if.end59 [label %if.then55], !srcloc !358

if.then55:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %22 = load i32, ptr @force_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @card_settings.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.41, i32 noundef %22) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then40, %if.end38.if.end59_crit_edge
  %23 = load i32, ptr @bankwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool60.not = icmp eq i32 %23, 0
  br i1 %tobool60.not, label %if.end59.if.end80_crit_edge, label %if.then61

if.end59.if.end80_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bankwidth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_settings.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_settings, %if.then76)) #10
          to label %if.end80 [label %if.then76], !srcloc !358

if.then76:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %25 = load i32, ptr @bankwidth, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @card_settings.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.42, i32 noundef %25) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.then61, %if.end59.if.end80_crit_edge
  %mtd_name81 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %dev, i32 0, i32 7
  %26 = ptrtoint ptr %pcmcia_map to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %mtd_name81, ptr %pcmcia_map, align 4
  %27 = ptrtoint ptr %mtd_name81 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mtd_name81, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool86.not = icmp eq i8 %28, 0
  br i1 %tobool86.not, label %if.then87, label %if.end80.do.body92_crit_edge

if.end80.do.body92_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call ptr @memcpy(ptr %mtd_name81, ptr @.str.29, i32 19)
  %30 = ptrtoint ptr %new_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %new_name, align 4
  br label %do.body92

do.body92:                                        ; preds = %if.then87, %if.end80.do.body92_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @card_settings.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@card_settings, %if.then104)) #10
          to label %do.end114 [label %if.then104], !srcloc !358

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %33 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bankwidth, align 4
  %shl109 = shl i32 %34, 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @card_settings.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.43, i32 noundef %32, i32 noundef %shl109, ptr noundef %mtd_name81) #10
  br label %do.end114

do.end114:                                        ; preds = %if.then104, %do.body92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_copy_from_remap(ptr nocapture noundef readonly %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %win_size1 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %win_size1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %win_size1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_from_remap, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.62, ptr noundef %to, i32 noundef %from, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not61 = icmp eq i32 %len, 0
  br i1 %tobool4.not61, label %do.end.cleanup30_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end.while.body_crit_edge
  %to.addr.064 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %to, %do.end.while.body_crit_edge ]
  %from.addr.063 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ %from, %do.end.while.body_crit_edge ]
  %len.addr.062 = phi i32 [ %sub28, %cleanup.while.body_crit_edge ], [ %len, %do.end.while.body_crit_edge ]
  %and = and i32 %from.addr.063, %sub
  %sub5 = sub i32 %4, %and
  %5 = tail call i32 @llvm.smin.i32(i32 %sub5, i32 %len.addr.062)
  %call8 = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %from.addr.063)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %while.body.cleanup30_crit_edge, label %do.body12

while.body.cleanup30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

do.body12:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_from_remap, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !358

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.63, ptr noundef nonnull %call8, ptr noundef %to.addr.064, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body12
  tail call void @mmiocpy(ptr noundef %to.addr.064, ptr noundef nonnull %call8, i32 noundef %5) #10
  %sub28 = sub i32 %len.addr.062, %5
  %add.ptr = getelementptr i8, ptr %to.addr.064, i32 %5
  %add = add i32 %5, %from.addr.063
  %tobool4.not = icmp eq i32 %sub28, 0
  br i1 %tobool4.not, label %cleanup.cleanup30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %while.body.cleanup30_crit_edge, %do.end.cleanup30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_copy_to_remap(ptr nocapture noundef readonly %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %win_size1 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %win_size1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %win_size1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_to_remap, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.68, i32 noundef %to, ptr noundef %from, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not61 = icmp eq i32 %len, 0
  br i1 %tobool4.not61, label %do.end.cleanup30_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.cleanup30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %do.end.while.body_crit_edge
  %to.addr.064 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ %to, %do.end.while.body_crit_edge ]
  %from.addr.063 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %from, %do.end.while.body_crit_edge ]
  %len.addr.062 = phi i32 [ %sub28, %cleanup.while.body_crit_edge ], [ %len, %do.end.while.body_crit_edge ]
  %and = and i32 %to.addr.064, %sub
  %sub5 = sub i32 %4, %and
  %5 = tail call i32 @llvm.smin.i32(i32 %sub5, i32 %len.addr.062)
  %call8 = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %to.addr.064)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %while.body.cleanup30_crit_edge, label %do.body12

while.body.cleanup30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

do.body12:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_to_remap, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !358

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.63, ptr noundef %from.addr.063, ptr noundef nonnull %call8, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body12
  tail call void @mmiocpy(ptr noundef nonnull %call8, ptr noundef %from.addr.063, i32 noundef %5) #10
  %sub28 = sub i32 %len.addr.062, %5
  %add = add i32 %5, %to.addr.064
  %add.ptr = getelementptr i8, ptr %from.addr.063, i32 %5
  %tobool4.not = icmp eq i32 %sub28, 0
  br i1 %tobool4.not, label %cleanup.cleanup30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %while.body.cleanup30_crit_edge, %do.end.cleanup30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_read8_remap(ptr noalias nocapture sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 32)
  %call = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %ofs)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call) #10, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %agg.result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read8_remap.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read8_remap, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !358

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_read8_remap.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.70, i32 noundef %ofs, ptr noundef nonnull %call, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_write8_remap(ptr nocapture noundef readonly %map, [8 x i32] %d.coerce, i32 noundef %adr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d.coerce.fca.0.extract = extractvalue [8 x i32] %d.coerce, 0
  %call = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %adr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write8_remap.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write8_remap, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_write8_remap.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.72, i32 noundef %adr, ptr noundef nonnull %call, i32 noundef %d.coerce.fca.0.extract) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %d.coerce.fca.0.extract to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call, i8 %conv) #10, !srcloc !362
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_read16_remap(ptr noalias nocapture sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 32)
  %call = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %ofs)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %call) #10, !srcloc !363
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %agg.result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read16_remap.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read16_remap, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !358

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_read16_remap.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.74, i32 noundef %ofs, ptr noundef nonnull %call, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_write16_remap(ptr nocapture noundef readonly %map, [8 x i32] %d.coerce, i32 noundef %adr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d.coerce.fca.0.extract = extractvalue [8 x i32] %d.coerce, 0
  %call = tail call fastcc ptr @remap_window(ptr noundef %map, i32 noundef %adr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write16_remap.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write16_remap, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_write16_remap.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.76, i32 noundef %adr, ptr noundef nonnull %call, i32 noundef %d.coerce.fca.0.extract) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %d.coerce.fca.0.extract to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %call, i16 %0) #10, !srcloc !366
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmciamtd_set_vpp(ptr nocapture noundef readonly %map, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_set_vpp.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_set_vpp, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vpp = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %vpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vpp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_set_vpp.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.78, ptr noundef %2, i32 noundef %on, i32 noundef %6) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcmcia_vpp_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool3.not = icmp eq i32 %on, 0
  %7 = load i32, ptr @pcmcia_vpp_refcnt, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  %inc = add i32 %7, 1
  store i32 %inc, ptr @pcmcia_vpp_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then5, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then5:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %vpp6 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %vpp6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vpp6, align 4
  %conv = trunc i32 %9 to i8
  br label %if.end14.sink.split

if.else:                                          ; preds = %do.end
  %dec = add i32 %7, -1
  store i32 %dec, ptr @pcmcia_vpp_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.then5
  %.sink = phi i8 [ %conv, %if.then5 ], [ 0, %if.else.if.end14.sink.split_crit_edge ]
  %call12 = tail call i32 @pcmcia_fixup_vpp(ptr noundef %4, i8 noundef zeroext %.sink) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge, %if.then4.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pcmcia_vpp_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmciamtd_release(ptr noundef %link) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_release.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82, ptr noundef %link) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end.if.end10_crit_edge, label %if.then4

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then4:                                         ; preds = %do.end
  %win_base = getelementptr inbounds %struct.pcmciamtd_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %win_base, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.then4.if.end10_crit_edge, label %if.then6

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %win_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %win_base, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then4.if.end10_crit_edge, %do.end.if.end10_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_read8(ptr noalias nocapture sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = call ptr @memset(ptr %agg.result, i32 0, i32 32)
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %8, i32 %ofs
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !359
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %agg.result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read8.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read8, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !358

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_read8.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.70, i32 noundef %ofs, ptr noundef %add.ptr, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_write8(ptr nocapture noundef readonly %map, [8 x i32] %d.coerce, i32 noundef %adr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d.coerce.fca.0.extract = extractvalue [8 x i32] %d.coerce, 0
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = inttoptr i32 %1 to ptr
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write8.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write8, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %2, i32 %adr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_write8.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.72, i32 noundef %adr, ptr noundef %add.ptr, i32 noundef %d.coerce.fca.0.extract) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %d.coerce.fca.0.extract to i8
  %add.ptr11 = getelementptr i8, ptr %2, i32 %adr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv) #10, !srcloc !362
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_read16(ptr noalias nocapture sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = call ptr @memset(ptr %agg.result, i32 0, i32 32)
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = inttoptr i32 %1 to ptr
  %add.ptr = getelementptr i8, ptr %8, i32 %ofs
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !363
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %agg.result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_read16.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_read16, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !358

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_read16.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.74, i32 noundef %ofs, ptr noundef %add.ptr, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_write16(ptr nocapture noundef readonly %map, [8 x i32] %d.coerce, i32 noundef %adr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d.coerce.fca.0.extract = extractvalue [8 x i32] %d.coerce, 0
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = inttoptr i32 %1 to ptr
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_write16.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_write16, %if.then5)) #10
          to label %do.body7 [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %2, i32 %adr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_write16.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.76, i32 noundef %adr, ptr noundef %add.ptr, i32 noundef %d.coerce.fca.0.extract) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  tail call void @arm_heavy_mb() #10
  %conv = trunc i32 %d.coerce.fca.0.extract to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add.ptr11 = getelementptr i8, ptr %2, i32 %adr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %8) #10, !srcloc !366
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_copy_from(ptr nocapture noundef readonly %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = inttoptr i32 %1 to ptr
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_from.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_from, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_from.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.62, ptr noundef %to, i32 noundef %from, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %add.ptr = getelementptr i8, ptr %2, i32 %from
  tail call void @mmiocpy(ptr noundef %to, ptr noundef %add.ptr, i32 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_copy_to(ptr nocapture noundef readonly %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %0 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_2, align 4
  %2 = inttoptr i32 %1 to ptr
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %3 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_1, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_copy_to.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_copy_to, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_copy_to.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.68, i32 noundef %to, ptr noundef %from, i32 noundef %len) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %add.ptr = getelementptr i8, ptr %2, i32 %to
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %from, i32 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_tuple(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_cistpl_format(ptr nocapture noundef readnone %p_dev, ptr noundef %tuple, ptr nocapture noundef readnone %priv_data) #3 align 64 {
entry:
  %parse = alloca %union.cisparse_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %parse) #10
  %0 = call ptr @memset(ptr %parse, i32 255, i32 372)
  %call = call i32 @pcmcia_parse_tuple(ptr noundef %tuple, ptr noundef nonnull %parse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_format.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_format, %if.then5)) #10
          to label %if.end7 [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %parse, align 4
  %conv = zext i8 %2 to i32
  %edc = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 1
  %3 = ptrtoint ptr %edc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %edc, align 1
  %conv6 = zext i8 %4 to i32
  %offset = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.cistpl_format_t, ptr %parse, i32 0, i32 3
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_format.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %conv6, i32 noundef %6, i32 noundef %8) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %parse) #10
  ret i32 -28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_cistpl_jedec(ptr nocapture noundef readnone %p_dev, ptr noundef %tuple, ptr nocapture noundef readnone %priv_data) #3 align 64 {
entry:
  %parse = alloca %union.cisparse_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %parse) #10
  %0 = call ptr @memset(ptr %parse, i32 255, i32 372)
  %call = call i32 @pcmcia_parse_tuple(ptr noundef %tuple, ptr noundef nonnull %parse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %parse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp19.not = icmp eq i8 %2, 0
  br i1 %cmp19.not, label %for.cond.preheader.if.end11_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_jedec.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_jedec, %if.then6)) #10
          to label %for.inc [label %if.then6], !srcloc !358

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 %i.020
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %4 to i32
  %info = getelementptr %struct.cistpl_jedec_t, ptr %parse, i32 0, i32 1, i32 %i.020, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %info, align 2
  %conv10 = zext i8 %6 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_jedec.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.47, i32 noundef %conv7, i32 noundef %conv10) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %do.body
  %inc = add nuw nsw i32 %i.020, 1
  %7 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %parse, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.if.end11_crit_edge

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end11:                                         ; preds = %for.inc.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %parse) #10
  ret i32 -28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_cistpl_device(ptr nocapture noundef readnone %p_dev, ptr noundef %tuple, ptr nocapture noundef writeonly %priv_data) #3 align 64 {
entry:
  %parse = alloca %union.cisparse_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %parse) #10
  %0 = call ptr @memset(ptr %parse, i32 255, i32 372)
  %call = call i32 @pcmcia_parse_tuple(ptr noundef %tuple, ptr noundef nonnull %parse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_device, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.49) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %size = getelementptr inbounds %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %size8 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %priv_data, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %size8, align 4
  %4 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp120.not = icmp eq i8 %5, 0
  br i1 %cmp120.not, label %do.end.cleanup_crit_edge, label %do.end.do.body10_crit_edge

do.end.do.body10_crit_edge:                       ; preds = %do.end
  br label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body10:                                        ; preds = %for.inc.do.body10_crit_edge, %do.end.do.body10_crit_edge
  %i.0121 = phi i32 [ %inc, %for.inc.do.body10_crit_edge ], [ 0, %do.end.do.body10_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_device, %if.then22)) #10
          to label %do.body29 [label %if.then22], !srcloc !358

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0121
  %6 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx24, align 4
  %conv25 = zext i8 %7 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.50, i32 noundef %i.0121, i32 noundef %conv25) #10
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %do.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_device, %if.then41)) #10
          to label %do.body48 [label %if.then41], !srcloc !358

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %wp = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0121, i32 1
  %8 = ptrtoint ptr %wp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wp, align 1
  %conv44 = zext i8 %9 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.51, i32 noundef %i.0121, i32 noundef %conv44) #10
  br label %do.body48

do.body48:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_device, %if.then60)) #10
          to label %do.body66 [label %if.then60], !srcloc !358

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #12
  %speed = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0121, i32 2
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.52, i32 noundef %i.0121, i32 noundef %11) #10
  br label %do.body66

do.body66:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_device, %if.then78)) #10
          to label %for.inc [label %if.then78], !srcloc !358

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #12
  %size81 = getelementptr %struct.cistpl_device_t, ptr %parse, i32 0, i32 1, i32 %i.0121, i32 3
  %12 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size81, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.53, i32 noundef %i.0121, i32 noundef %13) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then78, %do.body66
  %inc = add nuw nsw i32 %i.0121, 1
  %14 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %parse, align 4
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.do.body10_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.do.body10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %parse) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmciamtd_cistpl_geo(ptr nocapture noundef readnone %p_dev, ptr noundef %tuple, ptr nocapture noundef writeonly %priv_data) #3 align 64 {
entry:
  %parse = alloca %union.cisparse_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 372, ptr nonnull %parse) #10
  %0 = call ptr @memset(ptr %parse, i32 255, i32 372)
  %call = call i32 @pcmcia_parse_tuple(ptr noundef %tuple, ptr noundef nonnull %parse) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %geo = getelementptr inbounds %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1
  %1 = ptrtoint ptr %geo to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %geo, align 4
  %conv = zext i8 %2 to i32
  %bankwidth = getelementptr inbounds %struct.pcmciamtd_dev, ptr %priv_data, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %bankwidth, align 4
  %4 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp148.not = icmp eq i8 %5, 0
  br i1 %cmp148.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end.do.body_crit_edge
  %i.0149 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then7)) #10
          to label %do.body13 [label %if.then7], !srcloc !358

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9 = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 4
  %conv11 = zext i8 %7 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.55, i32 noundef %i.0149, i32 noundef %conv11) #10
  br label %do.body13

do.body13:                                        ; preds = %if.then7, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then25)) #10
          to label %do.body31 [label %if.then25], !srcloc !358

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %erase_block = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149, i32 1
  %8 = ptrtoint ptr %erase_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %erase_block, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.56, i32 noundef %i.0149, i32 noundef %9) #10
  br label %do.body31

do.body31:                                        ; preds = %if.then25, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then43)) #10
          to label %do.body49 [label %if.then43], !srcloc !358

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %read_block = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149, i32 2
  %10 = ptrtoint ptr %read_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_block, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.57, i32 noundef %i.0149, i32 noundef %11) #10
  br label %do.body49

do.body49:                                        ; preds = %if.then43, %do.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then61)) #10
          to label %do.body67 [label %if.then61], !srcloc !358

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %write_block = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149, i32 3
  %12 = ptrtoint ptr %write_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %write_block, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.58, i32 noundef %i.0149, i32 noundef %13) #10
  br label %do.body67

do.body67:                                        ; preds = %if.then61, %do.body49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then79)) #10
          to label %do.body85 [label %if.then79], !srcloc !358

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %partition = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149, i32 4
  %14 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %partition, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.59, i32 noundef %i.0149, i32 noundef %15) #10
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmciamtd_cistpl_geo, %if.then97)) #10
          to label %for.inc [label %if.then97], !srcloc !358

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  %interleave = getelementptr %struct.cistpl_device_geo_t, ptr %parse, i32 0, i32 1, i32 %i.0149, i32 5
  %16 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interleave, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.60, i32 noundef %i.0149, i32 noundef %17) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then97, %do.body85
  %inc = add nuw nsw i32 %i.0149, 1
  %18 = ptrtoint ptr %parse to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %parse, align 4
  %conv1 = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 372, ptr nonnull %parse) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_parse_tuple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @remap_window(ptr nocapture noundef readonly %map, i32 noundef %to) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %map_priv_2 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 15
  %3 = ptrtoint ptr %map_priv_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %map_priv_2, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %call = tail call ptr @pcmcia_dev_present(ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remap_window.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remap_window, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !358

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remap_window.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.65) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %win_size = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %win_size, align 4
  %neg = sub i32 0, %9
  %and = and i32 %neg, %to
  %offset7 = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp.not = icmp eq i32 %and, %11
  br i1 %cmp.not, label %if.end6.if.end32_crit_edge, label %do.body9

if.end6.if.end32_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remap_window.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remap_window, %if.then21)) #10
          to label %do.end25 [label %if.then21], !srcloc !358

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remap_window.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.66, i32 noundef %13, i32 noundef %and) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %call27 = tail call i32 @pcmcia_map_mem_page(ptr noundef %15, ptr noundef %5, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end30, label %do.end25.cleanup_crit_edge

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %offset7, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end6.if.end32_crit_edge
  %win_base = getelementptr inbounds %struct.pcmciamtd_dev, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %win_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %win_base, align 4
  %19 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %win_size, align 4
  %sub34 = add i32 %20, -1
  %and35 = and i32 %sub34, %to
  %add.ptr = getelementptr i8, ptr %18, i32 %and35
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end25.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi ptr [ %add.ptr, %if.end32 ], [ null, %if.then5 ], [ null, %do.end25.cleanup_crit_edge ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_fixup_vpp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !61, !62, !63, !64, !65, !67, !69, !70, !71, !73, !75, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !116, !118, !119, !121, !122, !124, !125, !127, !129, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !247, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !290, !292, !294, !295, !297, !299, !300, !302, !304, !306, !308, !309, !311, !312, !314, !315, !316, !318, !319, !321, !323, !324, !326, !328, !329, !331, !332, !334, !336, !338, !339, !340, !341, !343, !344, !345, !347, !348}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__UNIQUE_ID_file238, !1, !"__UNIQUE_ID_file238", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 63, i32 1}
!2 = !{ptr @__UNIQUE_ID_license239, !1, !"__UNIQUE_ID_license239", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 64, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 65, i32 1}
!7 = !{ptr @__param_bankwidth, !8, !"__param_bankwidth", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 66, i32 1}
!9 = !{ptr @__UNIQUE_ID_bankwidthtype242, !8, !"__UNIQUE_ID_bankwidthtype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_bankwidth243, !11, !"__UNIQUE_ID_bankwidth243", i1 false, i1 false}
!11 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 67, i32 1}
!12 = !{ptr @__param_mem_speed, !13, !"__param_mem_speed", i1 false, i1 false}
!13 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 68, i32 1}
!14 = !{ptr @__UNIQUE_ID_mem_speedtype244, !13, !"__UNIQUE_ID_mem_speedtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mem_speed245, !16, !"__UNIQUE_ID_mem_speed245", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 69, i32 1}
!17 = !{ptr @__param_force_size, !18, !"__param_force_size", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 70, i32 1}
!19 = !{ptr @__UNIQUE_ID_force_sizetype246, !18, !"__UNIQUE_ID_force_sizetype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_force_size247, !21, !"__UNIQUE_ID_force_size247", i1 false, i1 false}
!21 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 71, i32 1}
!22 = !{ptr @__param_setvpp, !23, !"__param_setvpp", i1 false, i1 false}
!23 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 72, i32 1}
!24 = !{ptr @__UNIQUE_ID_setvpptype248, !23, !"__UNIQUE_ID_setvpptype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_setvpp249, !26, !"__UNIQUE_ID_setvpp249", i1 false, i1 false}
!26 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 73, i32 1}
!27 = !{ptr @__param_vpp, !28, !"__param_vpp", i1 false, i1 false}
!28 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 74, i32 1}
!29 = !{ptr @__UNIQUE_ID_vpptype250, !28, !"__UNIQUE_ID_vpptype250", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_vpp251, !31, !"__UNIQUE_ID_vpp251", i1 false, i1 false}
!31 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 75, i32 1}
!32 = !{ptr @__param_mem_type, !33, !"__param_mem_type", i1 false, i1 false}
!33 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 76, i32 1}
!34 = !{ptr @__UNIQUE_ID_mem_typetype252, !33, !"__UNIQUE_ID_mem_typetype252", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_mem_type253, !36, !"__UNIQUE_ID_mem_type253", i1 false, i1 false}
!36 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 77, i32 1}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 748, i32 2}
!39 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @exit_pcmciamtd.__UNIQUE_ID_ddebug305, !38, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!43 = !{ptr @__initcall__kmod_pcmciamtd__306_752_init_pcmciamtd6, !44, !"__initcall__kmod_pcmciamtd__306_752_init_pcmciamtd6", i1 false, i1 false}
!44 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 752, i32 1}
!45 = !{ptr @__exitcall_exit_pcmciamtd, !46, !"__exitcall_exit_pcmciamtd", i1 false, i1 false}
!46 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 753, i32 1}
!47 = !{ptr @mem_speed, !48, !"mem_speed", i1 false, i1 false}
!48 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 49, i32 12}
!49 = !{ptr @force_size, !50, !"force_size", i1 false, i1 false}
!50 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 52, i32 12}
!51 = !{ptr @vpp, !52, !"vpp", i1 false, i1 false}
!52 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 55, i32 12}
!53 = !{ptr @setvpp, !54, !"setvpp", i1 false, i1 false}
!54 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 58, i32 12}
!55 = !{ptr @mem_type, !56, !"mem_type", i1 false, i1 false}
!56 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 61, i32 12}
!57 = !{ptr @__param_str_bankwidth, !8, !"__param_str_bankwidth", i1 false, i1 false}
!58 = !{ptr @bankwidth, !59, !"bankwidth", i1 false, i1 false}
!59 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 46, i32 12}
!60 = !{ptr @__param_str_mem_speed, !13, !"__param_str_mem_speed", i1 false, i1 false}
!61 = !{ptr @__param_str_force_size, !18, !"__param_str_force_size", i1 false, i1 false}
!62 = !{ptr @__param_str_setvpp, !23, !"__param_str_setvpp", i1 false, i1 false}
!63 = !{ptr @__param_str_vpp, !28, !"__param_str_vpp", i1 false, i1 false}
!64 = !{ptr @__param_str_mem_type, !33, !"__param_str_mem_type", i1 false, i1 false}
!65 = !{ptr @pcmciamtd_driver, !66, !"pcmciamtd_driver", i1 false, i1 false}
!66 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 717, i32 29}
!67 = !{ptr @.str.4, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 678, i32 2}
!69 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pcmciamtd_probe.__UNIQUE_ID_ddebug304, !68, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!71 = !{ptr @.str.6, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 468, i32 28}
!73 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 468, i32 43}
!75 = !{ptr @pcmciamtd_config.probes, !76, !"probes", i1 false, i1 false}
!76 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 468, i32 15}
!77 = !{ptr @.str.8, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 471, i32 2}
!79 = !{ptr @.str.9, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug289, !78, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!81 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 504, i32 3}
!83 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug290, !82, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!84 = !{ptr @.str.11, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 508, i32 3}
!86 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug291, !85, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!87 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 516, i32 4}
!89 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug292, !88, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!90 = !{ptr @.str.13, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 523, i32 2}
!92 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug293, !91, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!93 = !{ptr @.str.14, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 526, i32 3}
!95 = !{ptr @.str.15, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pcmciamtd_config._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @pcmciamtd_config._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.17, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 530, i32 2}
!101 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug294, !100, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!102 = !{ptr @.str.19, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 536, i32 3}
!104 = !{ptr @pcmciamtd_config._entry.18, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @pcmciamtd_config._entry_ptr.20, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 541, i32 2}
!108 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug295, !107, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!109 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 556, i32 2}
!111 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug296, !110, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!112 = !{ptr @.str.23, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 567, i32 22}
!114 = !{ptr @.str.24, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 569, i32 22}
!116 = !{ptr @.str.25, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 572, i32 4}
!118 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug297, !117, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!119 = !{ptr @.str.26, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 577, i32 4}
!121 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug298, !120, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!122 = !{ptr @.str.27, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 582, i32 3}
!124 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug299, !123, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!125 = !{ptr @.str.28, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 603, i32 50}
!127 = !{ptr @.str.29, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 603, i32 75}
!129 = !{ptr @.str.30, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 609, i32 3}
!131 = !{ptr @pcmciamtd_config.__UNIQUE_ID_ddebug300, !130, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!132 = !{ptr @.str.32, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 625, i32 3}
!134 = !{ptr @pcmciamtd_config._entry.31, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @pcmciamtd_config._entry_ptr.33, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 630, i32 2}
!138 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pcmciamtd_config._entry.34, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @pcmciamtd_config._entry_ptr.37, !137, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 422, i32 27}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 426, i32 3}
!145 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @card_settings.__UNIQUE_ID_ddebug285, !144, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!147 = !{ptr @.str.41, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 442, i32 3}
!149 = !{ptr @card_settings.__UNIQUE_ID_ddebug286, !148, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!150 = !{ptr @.str.42, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 447, i32 3}
!152 = !{ptr @card_settings.__UNIQUE_ID_ddebug287, !151, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 456, i32 2}
!155 = !{ptr @card_settings.__UNIQUE_ID_ddebug288, !154, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!156 = !{ptr @.str.44, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 342, i32 3}
!158 = !{ptr @.str.45, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @pcmciamtd_cistpl_format.__UNIQUE_ID_ddebug272, !157, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 358, i32 4}
!162 = !{ptr @.str.47, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @pcmciamtd_cistpl_jedec.__UNIQUE_ID_ddebug273, !161, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 376, i32 2}
!166 = !{ptr @.str.49, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug274, !165, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!168 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 380, i32 3}
!170 = !{ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug275, !169, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 381, i32 3}
!173 = !{ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug276, !172, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!174 = !{ptr @.str.52, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 382, i32 3}
!176 = !{ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug277, !175, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!177 = !{ptr @.str.53, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 383, i32 3}
!179 = !{ptr @pcmciamtd_cistpl_device.__UNIQUE_ID_ddebug278, !178, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!180 = !{ptr @.str.54, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 403, i32 3}
!182 = !{ptr @.str.55, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug279, !181, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!184 = !{ptr @.str.56, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 404, i32 3}
!186 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug280, !185, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!187 = !{ptr @.str.57, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 405, i32 3}
!189 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug281, !188, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!190 = !{ptr @.str.58, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 406, i32 3}
!192 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug282, !191, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!193 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 407, i32 3}
!195 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug283, !194, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!196 = !{ptr @.str.60, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 408, i32 3}
!198 = !{ptr @pcmciamtd_cistpl_geo.__UNIQUE_ID_ddebug284, !197, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!199 = !{ptr @.str.61, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 143, i32 2}
!201 = !{ptr @.str.62, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug258, !200, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!203 = !{ptr @.str.63, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 155, i32 3}
!205 = !{ptr @pcmcia_copy_from_remap.__UNIQUE_ID_ddebug259, !204, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!206 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 91, i32 3}
!208 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @remap_window.__UNIQUE_ID_ddebug254, !207, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!210 = !{ptr @.str.66, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 97, i32 3}
!212 = !{ptr @remap_window.__UNIQUE_ID_ddebug255, !211, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!213 = !{ptr @.str.67, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 192, i32 2}
!215 = !{ptr @.str.68, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug262, !214, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!217 = !{ptr @pcmcia_copy_to_remap.__UNIQUE_ID_ddebug263, !218, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!218 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 204, i32 3}
!219 = !{ptr @.str.69, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 118, i32 2}
!221 = !{ptr @.str.70, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @pcmcia_read8_remap.__UNIQUE_ID_ddebug256, !220, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!223 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 171, i32 2}
!225 = !{ptr @.str.72, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @pcmcia_write8_remap.__UNIQUE_ID_ddebug260, !224, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!227 = !{ptr @.str.73, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 133, i32 2}
!229 = !{ptr @.str.74, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @pcmcia_read16_remap.__UNIQUE_ID_ddebug257, !228, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!231 = !{ptr @.str.75, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 182, i32 2}
!233 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @pcmcia_write16_remap.__UNIQUE_ID_ddebug261, !232, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!235 = !{ptr @.str.77, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 304, i32 2}
!237 = !{ptr @.str.78, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @pcmciamtd_set_vpp.__UNIQUE_ID_ddebug270, !236, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!239 = !{ptr @.str.79, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 297, i32 8}
!241 = !{ptr @.str.80, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @pcmcia_vpp_lock, !240, !"pcmcia_vpp_lock", i1 false, i1 false}
!243 = !{ptr @pcmcia_vpp_refcnt, !244, !"pcmcia_vpp_refcnt", i1 false, i1 false}
!244 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 298, i32 12}
!245 = !{ptr @.str.81, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 321, i32 2}
!247 = !{ptr @.str.82, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @pcmciamtd_release.__UNIQUE_ID_ddebug271, !246, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!249 = !{ptr @.str.83, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 226, i32 2}
!251 = !{ptr @pcmcia_read8.__UNIQUE_ID_ddebug264, !250, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!252 = !{ptr @.str.84, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 266, i32 2}
!254 = !{ptr @pcmcia_write8.__UNIQUE_ID_ddebug267, !253, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!255 = !{ptr @.str.85, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 241, i32 2}
!257 = !{ptr @pcmcia_read16.__UNIQUE_ID_ddebug265, !256, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!258 = !{ptr @.str.86, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 279, i32 2}
!260 = !{ptr @pcmcia_write16.__UNIQUE_ID_ddebug268, !259, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!261 = !{ptr @.str.87, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 254, i32 2}
!263 = !{ptr @pcmcia_copy_from.__UNIQUE_ID_ddebug266, !262, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!264 = !{ptr @.str.88, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 292, i32 2}
!266 = !{ptr @pcmcia_copy_to.__UNIQUE_ID_ddebug269, !265, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!267 = !{ptr @.str.89, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 658, i32 2}
!269 = !{ptr @pcmciamtd_detach.__UNIQUE_ID_ddebug303, !268, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!270 = !{ptr @.str.90, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 662, i32 3}
!272 = !{ptr @pcmciamtd_detach._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @pcmciamtd_detach._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 637, i32 2}
!276 = !{ptr @.str.92, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @pcmciamtd_suspend.__UNIQUE_ID_ddebug301, !275, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 646, i32 2}
!280 = !{ptr @.str.94, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @pcmciamtd_resume.__UNIQUE_ID_ddebug302, !279, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!282 = !{ptr @.str.95, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 688, i32 2}
!284 = !{ptr @.str.96, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.97, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.98, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 689, i32 2}
!288 = !{ptr @.str.99, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 690, i32 2}
!290 = !{ptr @.str.100, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 691, i32 2}
!292 = !{ptr @.str.101, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 692, i32 2}
!294 = !{ptr @.str.102, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.103, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 693, i32 2}
!297 = !{ptr @.str.104, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 694, i32 2}
!299 = !{ptr @.str.105, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.106, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 695, i32 2}
!302 = !{ptr @.str.107, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 696, i32 2}
!304 = !{ptr @.str.108, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 697, i32 2}
!306 = !{ptr @.str.109, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 698, i32 2}
!308 = !{ptr @.str.110, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.111, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 699, i32 2}
!311 = !{ptr @.str.112, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.113, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 700, i32 2}
!314 = !{ptr @.str.114, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.115, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.116, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 701, i32 2}
!318 = !{ptr @.str.117, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.118, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 702, i32 2}
!321 = !{ptr @.str.119, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 703, i32 2}
!323 = !{ptr @.str.120, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.121, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 704, i32 2}
!326 = !{ptr @.str.122, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 705, i32 2}
!328 = !{ptr @.str.123, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.124, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 706, i32 2}
!331 = !{ptr @.str.125, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.126, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 707, i32 2}
!334 = !{ptr @pcmciamtd_ids, !335, !"pcmciamtd_ids", i1 false, i1 false}
!335 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 686, i32 38}
!336 = !{ptr @.str.127, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 731, i32 3}
!338 = !{ptr @.str.128, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @init_pcmciamtd._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @init_pcmciamtd._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.130, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 735, i32 3}
!343 = !{ptr @init_pcmciamtd._entry.129, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @init_pcmciamtd._entry_ptr.131, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.133, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/mtd/maps/pcmciamtd.c", i32 739, i32 3}
!347 = !{ptr @init_pcmciamtd._entry.132, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @init_pcmciamtd._entry_ptr.134, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{i64 2148971736, i64 2148971741, i64 2148971754, i64 2148971798, i64 2148971832, i64 2148971853}
!359 = !{i64 4946094}
!360 = !{i64 2154710399}
!361 = !{i64 2154722964}
!362 = !{i64 4945699}
!363 = !{i64 4945476}
!364 = !{i64 2154713228}
!365 = !{i64 2154725615}
!366 = !{i64 4945276}
!367 = !{i64 2154730832}
!368 = !{i64 2154741442}
!369 = !{i64 2154733815}
!370 = !{i64 2154744227}
