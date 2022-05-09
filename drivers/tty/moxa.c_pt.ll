; ModuleID = '/llk/IR_all_yes/drivers/tty/moxa.c_pt.bc'
source_filename = "../drivers/tty/moxa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
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
%struct.moxa_board_conf = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mon_str = type { i32, [128 x i32], [128 x i32] }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.moxa_port = type { %struct.tty_port, ptr, ptr, i32, i32, i32, i8, i8, i8 }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.anon.75 = type { i32, [2 x i8], i8, i8, [8 x i8], [5 x i16] }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.moxaq_str = type { i32, i32 }
%struct.mxser_mstatus = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }

@__UNIQUE_ID_author240 = internal constant [25 x i8] c"moxa.author=William Chen\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [68 x i8] c"moxa.description=MOXA Intellio Family Multiport Board Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [27 x i8] c"moxa.file=drivers/tty/moxa\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [17 x i8] c"moxa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [27 x i8] c"moxa.firmware=c218tunx.cod\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [27 x i8] c"moxa.firmware=cp204unx.cod\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [27 x i8] c"moxa.firmware=c320tunx.cod\00", section ".modinfo", align 1
@__param_str_type = internal constant [10 x i8] c"moxa.type\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_type = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_uint, ptr @type }, align 4
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_type } }, section "__param", align 4
@__UNIQUE_ID_typetype247 = internal constant [33 x i8] c"moxa.parmtype=type:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_type248 = internal constant [41 x i8] c"moxa.parm=type:card type: C218=2, C320=4\00", section ".modinfo", align 1
@__param_str_baseaddr = internal constant [14 x i8] c"moxa.baseaddr\00", align 1
@__param_arr_baseaddr = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_ulong, ptr @baseaddr }, align 4
@__param_baseaddr = internal constant %struct.kernel_param { ptr @__param_str_baseaddr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 2, %union.anon.68 { ptr @__param_arr_baseaddr } }, section "__param", align 4
@__UNIQUE_ID_baseaddrtype249 = internal constant [38 x i8] c"moxa.parmtype=baseaddr:array of ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_baseaddr250 = internal constant [32 x i8] c"moxa.parm=baseaddr:base address\00", section ".modinfo", align 1
@__param_str_numports = internal constant [14 x i8] c"moxa.numports\00", align 1
@__param_arr_numports = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_uint, ptr @numports }, align 4
@__param_numports = internal constant %struct.kernel_param { ptr @__param_str_numports, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_numports } }, section "__param", align 4
@__UNIQUE_ID_numportstype251 = internal constant [37 x i8] c"moxa.parmtype=numports:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_numports252 = internal constant [47 x i8] c"moxa.parm=numports:numports (ignored for C218)\00", section ".modinfo", align 1
@__param_str_ttymajor = internal constant [14 x i8] c"moxa.ttymajor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ttymajor = internal global { i32, [28 x i8] } { i32 172, [28 x i8] zeroinitializer }, align 32
@__param_ttymajor = internal constant %struct.kernel_param { ptr @__param_str_ttymajor, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @ttymajor } }, section "__param", align 4
@__UNIQUE_ID_ttymajortype253 = internal constant [27 x i8] c"moxa.parmtype=ttymajor:int\00", section ".modinfo", align 1
@moxa_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @moxa_pcibrds, ptr @moxa_pci_probe, ptr @moxa_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@moxa_boards = internal global { [4 x %struct.moxa_board_conf], [48 x i8] } zeroinitializer, align 32
@moxaTimer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @moxa_poll, i32 0, %struct.lockdep_map { ptr @.str.61, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@moxaDriver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_moxa__256_1425_moxa_init6 = internal global ptr @moxa_init, section ".initcall6.init", align 4
@__exitcall_moxa_exit = internal global ptr @moxa_exit, section ".exitcall.exit", align 4
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@type = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@baseaddr = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@numports = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moxa\00", [27 x i8] zeroinitializer }, align 32
@moxa_pcibrds = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 5011, i32 8576, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5011, i32 12800, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5011, i32 8256, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't enable pci device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"moxa_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/tty/moxa.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry_ptr = internal global ptr @moxa_pci_probe._entry, section ".printk_index", align 4
@moxa_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1252, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"more than %u MOXA Intellio family boards found. Board is ignored.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry_ptr.9 = internal global ptr @moxa_pci_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"moxa-base\00", [22 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't request pci region 2\0A\00", [36 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry_ptr.13 = internal global ptr @moxa_pci_probe._entry.11, section ".printk_index", align 4
@moxa_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't remap io space 2\0A\00", [40 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry_ptr.16 = internal global ptr @moxa_pci_probe._entry.14, section ".printk_index", align 4
@moxa_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1294, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"board '%s' ready (%u ports, firmware loaded)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@moxa_pci_probe._entry_ptr.20 = internal global ptr @moxa_pci_probe._entry.17, section ".printk_index", align 4
@moxa_brdname = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [44 x i8] zeroinitializer }, align 32
@moxa_init_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cannot allocate memory for ports\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"moxa_init_board\00", [16 x i8] zeroinitializer }, align 32
@moxa_init_board._entry_ptr = internal global ptr @moxa_init_board._entry, section ".printk_index", align 4
@moxa_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @moxa_carrier_raised, ptr @moxa_dtr_rts, ptr @moxa_shutdown, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c218tunx.cod\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cp204unx.cod\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c320tunx.cod\00", [19 x i8] zeroinitializer }, align 32
@moxa_init_board._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"\013MOXA: request_firmware failed. Make sure you've placed '%s' file into your firmware loader directory (e.g. /lib/firmware)\0A\00", [35 x i8] zeroinitializer }, align 32
@moxa_init_board._entry_ptr.28 = internal global ptr @moxa_init_board._entry.26, section ".printk_index", align 4
@moxa_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@moxafunc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"moxafunc_lock\00", [18 x i8] zeroinitializer }, align 32
@moxa_wait_finish._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.moxa_wait_finish = private unnamed_addr constant [17 x i8] c"moxa_wait_finish\00", align 1
@moxa_wait_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.moxa_wait_finish, ptr @.str.3, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014moxa function expired\0A\00", [39 x i8] zeroinitializer }, align 32
@moxa_wait_finish._entry_ptr = internal global ptr @moxa_wait_finish._entry, section ".printk_index", align 4
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"too short (even header won't fit)\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bad magic: %.8x\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not for linux, type is %u\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not for this card, model is %u\00", [33 x i8] zeroinitializer }, align 32
@moxa_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014MOXA firmware: unexpected input at offset %u, but going on\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moxa_load_fw\00", [19 x i8] zeroinitializer }, align 32
@moxa_load_fw._entry_ptr = internal global ptr @moxa_load_fw._entry, section ".printk_index", align 4
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too few entries in fw file\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bad length: %u (should be %u)\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read above\00", [21 x i8] zeroinitializer }, align 32
@moxa_load_fw._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013firmware failed to load, reason: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@moxa_load_fw._entry_ptr.43 = internal global ptr @moxa_load_fw._entry.41, section ".printk_index", align 4
@moxa_load_bios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013MOXA: bios upload failed -- CPU/Basic module not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"moxa_load_bios\00", [17 x i8] zeroinitializer }, align 32
@moxa_load_bios._entry_ptr = internal global ptr @moxa_load_bios._entry, section ".printk_index", align 4
@moxa_load_bios._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013MOXA: bios upload failed -- board not found\0A\00", [49 x i8] zeroinitializer }, align 32
@moxa_load_bios._entry_ptr.48 = internal global ptr @moxa_load_bios._entry.46, section ".printk_index", align 4
@moxa_load_320b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013MOXA: invalid 320 bios -- too short\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"moxa_load_320b\00", [17 x i8] zeroinitializer }, align 32
@moxa_load_320b._entry_ptr = internal global ptr @moxa_load_320b._entry, section ".printk_index", align 4
@moxa_load_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013MOXA: bios length is not even\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"moxa_load_code\00", [17 x i8] zeroinitializer }, align 32
@moxa_load_code._entry_ptr = internal global ptr @moxa_load_code._entry, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"moxa_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"C218 Turbo PCI series\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"C218 Turbo ISA series\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"C320 Turbo PCI series\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"C320 Turbo ISA series\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CP-204J series\00", [17 x i8] zeroinitializer }, align 32
@moxa_openlock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @moxa_openlock, i64 52), ptr getelementptr (i8, ptr @moxa_openlock, i64 52) }, ptr @moxa_openlock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"moxa_openlock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"moxa_openlock\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/tty/moxa.c:719\00", [41 x i8] zeroinitializer }, align 32
@moxaLowWaterChk = internal global { i1, [31 x i8] } zeroinitializer, align 32
@moxaLog = internal global { %struct.mon_str, [284 x i8] } zeroinitializer, align 32
@moxa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016MOXA Intellio family driver version %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"moxa_init\00", [22 x i8] zeroinitializer }, align 32
@moxa_init._entry_ptr = internal global ptr @moxa_init._entry, section ".printk_index", align 4
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.0k\00", [27 x i8] zeroinitializer }, align 32
@moxa_service_port = internal global { %struct.tty_port, [128 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyMX\00", [26 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@moxa_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @moxa_open, ptr @moxa_close, ptr null, ptr null, ptr @moxa_write, ptr null, ptr null, ptr @moxa_write_room, ptr @moxa_chars_in_buffer, ptr @moxa_ioctl, ptr null, ptr @moxa_set_termios, ptr null, ptr null, ptr @moxa_stop, ptr @moxa_start, ptr @moxa_hangup, ptr @moxa_break_ctl, ptr @moxa_flush_buffer, ptr null, ptr null, ptr null, ptr @moxa_tiocmget, ptr @moxa_tiocmset, ptr null, ptr null, ptr @moxa_get_serial_info, ptr @moxa_set_serial_info, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@moxa_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.3, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013can't register MOXA Smartio tty driver!\0A\00", [53 x i8] zeroinitializer }, align 32
@moxa_init._entry_ptr.68 = internal global ptr @moxa_init._entry.66, section ".printk_index", align 4
@moxa_init.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.69, i8 1, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Moxa board %2d: %s board(baseAddr=%lx)\0A\00", [56 x i8] zeroinitializer }, align 32
@moxa_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.3, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013MOXA: can't remap %lx\0A\00", [39 x i8] zeroinitializer }, align 32
@moxa_init._entry_ptr.72 = internal global ptr @moxa_init._entry.70, section ".printk_index", align 4
@moxa_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.3, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016MOXA isa board found at 0x%.8lx and ready (%u ports, firmware loaded)\0A\00", [55 x i8] zeroinitializer }, align 32
@moxa_init._entry_ptr.75 = internal global ptr @moxa_init._entry.73, section ".printk_index", align 4
@moxa_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.63, ptr @.str.3, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Can't register MOXA pci driver!\0A\00", [61 x i8] zeroinitializer }, align 32
@moxa_init._entry_ptr.78 = internal global ptr @moxa_init._entry.76, section ".printk_index", align 4
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.moxa_pci_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 0, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.moxa_init_board = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.25, ptr @.str.25, ptr @.str.24], [44 x i8] zeroinitializer }, align 32
@switch.table.moxa_init_board.82 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 536, i16 536, i16 800, i16 800, i16 516], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 1047, i64 1051, i64 1089]
@__sancov_gen_cov_switch_values.88 = internal global [8 x i64] [i64 6, i64 32, i64 1025, i64 1026, i64 1047, i64 1051, i64 1052, i64 1089]
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"ttymajor\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 457, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"moxa_pci_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1315, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"moxa_boards\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 414, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"moxaTimer\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"moxaDriver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 718, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 465, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"baseaddr\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 464, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"numports\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 466, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1316, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"moxa_pcibrds\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 387, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1241, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1251, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1258, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1260, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1266, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1293, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"moxa_brdname\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 377, i32 14 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1131, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"moxa_port_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 712, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1146, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1149, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1152, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1158, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"moxa_lock\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"moxafunc_lock\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 532, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 542, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1051, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1055, i32 16 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1059, i32 16 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1063, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1073, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1076, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1083, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1091, i32 14 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1116, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 789, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 798, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 808, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 951, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 462, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 379, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 380, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 381, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 382, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 383, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [14 x i8] c"moxa_openlock\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 461, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 719, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant [16 x i8] c"moxaLowWaterChk\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [8 x i8] c"moxaLog\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 458, i32 23 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1330, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [18 x i8] c"moxa_service_port\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 467, i32 24 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1341, i32 21 }
@___asan_gen_.342 = private unnamed_addr constant [9 x i8] c"moxa_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 693, i32 36 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1355, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1367, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1376, i32 5 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1386, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private constant [22 x i8] c"../drivers/tty/moxa.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 1398, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 174, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [28 x i8] c"switch.table.moxa_pci_probe\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"switch.table.moxa_init_board\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [32 x i8] c"switch.table.moxa_init_board.82\00", align 1
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_baseaddr250, ptr @__UNIQUE_ID_baseaddrtype249, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_numports252, ptr @__UNIQUE_ID_numportstype251, ptr @__UNIQUE_ID_ttymajortype253, ptr @__UNIQUE_ID_type248, ptr @__UNIQUE_ID_typetype247, ptr @__exitcall_moxa_exit, ptr @__initcall__kmod_moxa__256_1425_moxa_init6, ptr @__param_baseaddr, ptr @__param_numports, ptr @__param_ttymajor, ptr @__param_type, ptr @moxa_exit, ptr @moxa_init._entry, ptr @moxa_init._entry.66, ptr @moxa_init._entry.70, ptr @moxa_init._entry.73, ptr @moxa_init._entry.76, ptr @moxa_init._entry_ptr, ptr @moxa_init._entry_ptr.68, ptr @moxa_init._entry_ptr.72, ptr @moxa_init._entry_ptr.75, ptr @moxa_init._entry_ptr.78, ptr @moxa_init_board._entry, ptr @moxa_init_board._entry.26, ptr @moxa_init_board._entry_ptr, ptr @moxa_init_board._entry_ptr.28, ptr @moxa_load_320b._entry, ptr @moxa_load_320b._entry_ptr, ptr @moxa_load_bios._entry, ptr @moxa_load_bios._entry.46, ptr @moxa_load_bios._entry_ptr, ptr @moxa_load_bios._entry_ptr.48, ptr @moxa_load_code._entry, ptr @moxa_load_code._entry_ptr, ptr @moxa_load_fw._entry, ptr @moxa_load_fw._entry.41, ptr @moxa_load_fw._entry_ptr, ptr @moxa_load_fw._entry_ptr.43, ptr @moxa_pci_probe._entry, ptr @moxa_pci_probe._entry.11, ptr @moxa_pci_probe._entry.14, ptr @moxa_pci_probe._entry.17, ptr @moxa_pci_probe._entry.6, ptr @moxa_pci_probe._entry_ptr, ptr @moxa_pci_probe._entry_ptr.13, ptr @moxa_pci_probe._entry_ptr.16, ptr @moxa_pci_probe._entry_ptr.20, ptr @moxa_pci_probe._entry_ptr.9, ptr @moxa_wait_finish._entry, ptr @moxa_wait_finish._entry_ptr, ptr @ttymajor, ptr @moxa_pci_driver, ptr @moxa_boards, ptr @moxaTimer, ptr @moxaDriver, ptr @type, ptr @baseaddr, ptr @numports, ptr @.str, ptr @moxa_pcibrds, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @moxa_brdname, ptr @.str.21, ptr @.str.22, ptr @moxa_port_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @moxa_lock, ptr @moxafunc_lock, ptr @.str.29, ptr @moxa_wait_finish._rs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @moxa_openlock, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @moxaLowWaterChk, ptr @moxaLog, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @moxa_service_port, ptr @.str.65, ptr @moxa_ops, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.81, ptr @switch.table.moxa_pci_probe, ptr @switch.table.moxa_init_board, ptr @switch.table.moxa_init_board.82], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttymajor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_boards to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxaTimer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxaDriver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseaddr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pcibrds to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_brdname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init_board._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxafunc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_wait_finish._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_wait_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_fw._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_bios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_bios._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_320b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_load_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_openlock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxaLowWaterChk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxaLog to i32), i32 1028, i32 1312, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_service_port to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxa_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.moxa_pci_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.moxa_init_board to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.moxa_init_board.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moxa_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @moxa_pci_driver) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ready = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.05, i32 3
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.05
  tail call fastcc void @moxa_board_deinit(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @moxaTimer) #9
  %2 = load ptr, ptr @moxaDriver, align 4
  tail call void @tty_unregister_driver(ptr noundef %2) #9
  %3 = load ptr, ptr @moxaDriver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxa_board_deinit(ptr noundef %brd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @moxa_openlock, i32 noundef 0) #9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @moxa_lock) #9
  %ready = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 3
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ready, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @moxa_lock) #9
  %numPorts = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 1
  %1 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp65.not = icmp eq i32 %2, 0
  br i1 %cmp65.not, label %entry.for.cond4.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 4
  br label %for.body

for.cond4.preheader:                              ; preds = %for.inc.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %ports7 = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 4
  br label %for.body6

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %a.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.moxa_port, ptr %4, i32 %a.066
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx, i32 0, i32 11
  %5 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_port_tty_hangup(ptr noundef %arrayidx, i1 noundef zeroext false) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %a.066, 1
  %7 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numPorts, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond4.preheader_crit_edge

for.inc.for.cond4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader
  %a.167 = phi i32 [ 0, %for.cond4.preheader ], [ %inc11, %for.body6.for.body6_crit_edge ]
  %9 = ptrtoint ptr %ports7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports7, align 4
  %arrayidx8 = getelementptr %struct.moxa_port, ptr %10, i32 %a.167
  tail call void @tty_port_destroy(ptr noundef %arrayidx8) #9
  %inc11 = add nuw nsw i32 %a.167, 1
  %exitcond.not = icmp eq i32 %inc11, 32
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

while.cond.preheader:                             ; preds = %for.body6
  %11 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1568.not76 = icmp eq i32 %12, 0
  br i1 %cmp1568.not76, label %while.cond.preheader.for.end26.thread_crit_edge, label %while.cond.preheader.for.body16.lr.ph_crit_edge

while.cond.preheader.for.body16.lr.ph_crit_edge:  ; preds = %while.cond.preheader
  br label %for.body16.lr.ph

while.cond.preheader.for.end26.thread_crit_edge:  ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26.thread

for.end26.thread:                                 ; preds = %if.end28.for.end26.thread_crit_edge, %while.cond.preheader.for.end26.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  br label %while.end

for.body16.lr.ph:                                 ; preds = %if.end28.for.body16.lr.ph_crit_edge, %while.cond.preheader.for.body16.lr.ph_crit_edge
  %13 = phi i32 [ %19, %if.end28.for.body16.lr.ph_crit_edge ], [ %12, %while.cond.preheader.for.body16.lr.ph_crit_edge ]
  %14 = ptrtoint ptr %ports7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports7, align 4
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %opened.070 = phi i32 [ 0, %for.body16.lr.ph ], [ %spec.select, %for.body16.for.body16_crit_edge ]
  %a.269 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc25, %for.body16.for.body16_crit_edge ]
  %iflags.i62 = getelementptr %struct.moxa_port, ptr %15, i32 %a.269, i32 0, i32 11
  %16 = ptrtoint ptr %iflags.i62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %iflags.i62, align 4
  %and1.i.i63 = and i32 %17, 1
  %spec.select = add i32 %and1.i.i63, %opened.070
  %inc25 = add nuw i32 %a.269, 1
  %exitcond73.not = icmp eq i32 %inc25, %13
  br i1 %exitcond73.not, label %for.end26, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end26:                                        ; preds = %for.body16
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %for.end26.while.end_crit_edge, label %if.end28

for.end26.while.end_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end28:                                         ; preds = %for.end26
  tail call void @msleep(i32 noundef 50) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @moxa_openlock, i32 noundef 0) #9
  %18 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numPorts, align 4
  %cmp1568.not = icmp eq i32 %19, 0
  br i1 %cmp1568.not, label %if.end28.for.end26.thread_crit_edge, label %if.end28.for.body16.lr.ph_crit_edge

if.end28.for.body16.lr.ph_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.lr.ph

if.end28.for.end26.thread_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26.thread

while.end:                                        ; preds = %for.end26.while.end_crit_edge, %for.end26.thread
  %sub.ptr.lhs.cast = ptrtoint ptr %brd to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @moxa_boards to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %mul = shl nsw i32 %sub.ptr.div, 5
  %20 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3171.not = icmp eq i32 %21, 0
  br i1 %cmp3171.not, label %while.end.for.end35_crit_edge, label %while.end.for.body32_crit_edge

while.end.for.body32_crit_edge:                   ; preds = %while.end
  br label %for.body32

while.end.for.end35_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %while.end.for.body32_crit_edge
  %a.372 = phi i32 [ %inc34, %for.body32.for.body32_crit_edge ], [ 0, %while.end.for.body32_crit_edge ]
  %22 = load ptr, ptr @moxaDriver, align 4
  %add = add i32 %a.372, %mul
  tail call void @tty_unregister_device(ptr noundef %22, i32 noundef %add) #9
  %inc34 = add nuw i32 %a.372, 1
  %23 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %numPorts, align 4
  %cmp31 = icmp ult i32 %inc34, %24
  br i1 %cmp31, label %for.body32.for.body32_crit_edge, label %for.body32.for.end35_crit_edge

for.body32.for.end35_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.end35:                                        ; preds = %for.body32.for.end35_crit_edge, %while.end.for.end35_crit_edge
  %basemem = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 5
  %25 = ptrtoint ptr %basemem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %basemem, align 4
  tail call void @iounmap(ptr noundef %26) #9
  %27 = ptrtoint ptr %basemem to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %basemem, align 4
  %28 = ptrtoint ptr %ports7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports7, align 4
  tail call void @kfree(ptr noundef %29) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.64) #12
  tail call void @tty_port_init(ptr noundef nonnull @moxa_service_port) #9
  %call2 = tail call ptr @__tty_alloc_driver(i32 noundef 129, ptr noundef null, i32 noundef 12) #9
  store ptr %call2, ptr @moxaDriver, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 5
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.65, ptr %name, align 4
  %2 = load i32, ptr @ttymajor, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3261, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9600, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 12, i32 7
  %10 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 9600, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call2, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @moxa_ops, ptr %ops.i, align 4
  tail call void @tty_port_link_device(ptr noundef nonnull @moxa_service_port, ptr noundef %call2, i32 noundef 128) #9
  %12 = load ptr, ptr @moxaDriver, align 4
  %call8 = tail call i32 @tty_register_driver(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.for.body_crit_edge, label %do.end12

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  %13 = load ptr, ptr @moxaDriver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %13) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %isabrds.0112 = phi i32 [ %isabrds.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %brd.0111 = phi ptr [ %brd.1, %for.inc.for.body_crit_edge ], [ @moxa_boards, %if.end.for.body_crit_edge ]
  %i.0108 = phi i32 [ %inc67, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @baseaddr, i32 0, i32 %i.0108
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %for.body.for.end_crit_edge, label %if.end18

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %for.body
  %arrayidx19 = getelementptr [4 x i32], ptr @type, i32 0, i32 %i.0108
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end18.for.inc_crit_edge [
    i32 2, label %if.end18.do.body24_crit_edge
    i32 4, label %if.end18.do.body24_crit_edge113
  ]

if.end18.do.body24_crit_edge113:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.end18.do.body24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body24:                                        ; preds = %if.end18.do.body24_crit_edge, %if.end18.do.body24_crit_edge113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxa_init.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxa_init, %if.then30)) #9
          to label %do.end36 [label %if.then30], !srcloc !233

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %isabrds.0112, 1
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19, align 4
  %sub = add i32 %20, -1
  %arrayidx32 = getelementptr [5 x ptr], ptr @moxa_brdname, i32 0, i32 %sub
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @moxa_init.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.69, i32 noundef %add, ptr noundef %22, i32 noundef %24) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body24
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19, align 4
  %27 = ptrtoint ptr %brd.0111 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %brd.0111, align 4
  %28 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp39 = icmp eq i32 %28, 2
  br i1 %cmp39, label %do.end36.cond.end_crit_edge, label %cond.false

do.end36.cond.end_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx40 = getelementptr [4 x i32], ptr @numports, i32 0, i32 %i.0108
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx40, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end36.cond.end_crit_edge
  %cond = phi i32 [ %30, %cond.false ], [ 8, %do.end36.cond.end_crit_edge ]
  %numPorts = getelementptr inbounds %struct.moxa_board_conf, ptr %brd.0111, i32 0, i32 1
  %31 = ptrtoint ptr %numPorts to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %numPorts, align 4
  %busType = getelementptr inbounds %struct.moxa_board_conf, ptr %brd.0111, i32 0, i32 2
  %32 = ptrtoint ptr %busType to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %busType, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %call42 = tail call ptr @ioremap(i32 noundef %34, i32 noundef 16384) #9
  %basemem = getelementptr inbounds %struct.moxa_board_conf, ptr %brd.0111, i32 0, i32 5
  %35 = ptrtoint ptr %basemem to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call42, ptr %basemem, align 4
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %do.end48, label %if.end52

do.end48:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %37) #12
  br label %for.inc

if.end52:                                         ; preds = %cond.end
  %call53 = tail call fastcc i32 @moxa_init_board(ptr noundef %brd.0111, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end61, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %basemem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %basemem, align 4
  tail call void @iounmap(ptr noundef %39) #9
  %40 = ptrtoint ptr %basemem to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %basemem, align 4
  br label %for.inc

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %numPorts, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %42, i32 noundef %44) #12
  %incdec.ptr = getelementptr %struct.moxa_board_conf, ptr %brd.0111, i32 1
  %inc = add i32 %isabrds.0112, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end61, %if.then55, %do.end48, %if.end18.for.inc_crit_edge
  %brd.1 = phi ptr [ %brd.0111, %if.then55 ], [ %incdec.ptr, %do.end61 ], [ %brd.0111, %do.end48 ], [ %brd.0111, %if.end18.for.inc_crit_edge ]
  %isabrds.1 = phi i32 [ %isabrds.0112, %if.then55 ], [ %inc, %do.end61 ], [ %isabrds.0112, %do.end48 ], [ %isabrds.0112, %if.end18.for.inc_crit_edge ]
  %inc67 = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc67, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %isabrds.0.lcssa = phi i32 [ %isabrds.0112, %for.body.for.end_crit_edge ], [ %isabrds.1, %for.inc.for.end_crit_edge ]
  %call68 = tail call i32 @__pci_register_driver(ptr noundef nonnull @moxa_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %for.end.cleanup_crit_edge, label %do.end73

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end73:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isabrds.0.lcssa)
  %tobool76.not = icmp eq i32 %isabrds.0.lcssa, 0
  %spec.select = select i1 %tobool76.not, i32 %call68, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %for.end.cleanup_crit_edge, %do.end12, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %do.end12 ], [ 0, %for.end.cleanup_crit_edge ], [ %spec.select, %do.end73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds ([4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 0, i32 5), align 4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %for.body.preheader.if.end11_crit_edge, label %for.inc

for.body.preheader.if.end11_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %3 = load ptr, ptr getelementptr inbounds ([4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 1, i32 5), align 4
  %cmp2.1 = icmp eq ptr %3, null
  br i1 %cmp2.1, label %for.inc.if.end11_crit_edge, label %for.inc.1

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.inc.1:                                        ; preds = %for.inc
  %4 = load ptr, ptr getelementptr inbounds ([4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 2, i32 5), align 4
  %cmp2.2 = icmp eq ptr %4, null
  br i1 %cmp2.2, label %for.inc.1.if.end11_crit_edge, label %for.inc.2

for.inc.1.if.end11_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load ptr, ptr getelementptr inbounds ([4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 3, i32 5), align 4
  %cmp2.3 = icmp eq ptr %5, null
  br i1 %cmp2.3, label %for.inc.2.if.end11_crit_edge, label %for.inc.3

for.inc.2.if.end11_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.7, i32 noundef 4) #12
  br label %cleanup

if.end11:                                         ; preds = %for.inc.2.if.end11_crit_edge, %for.inc.1.if.end11_crit_edge, %for.inc.if.end11_crit_edge, %for.body.preheader.if.end11_crit_edge
  %i.084.lcssa = phi i32 [ 0, %for.body.preheader.if.end11_crit_edge ], [ 1, %for.inc.if.end11_crit_edge ], [ 2, %for.inc.1.if.end11_crit_edge ], [ 3, %for.inc.2.if.end11_crit_edge ]
  %arrayidx12 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.084.lcssa
  %call13 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull @.str.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %arrayidx21 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx21, align 8
  %call22 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 16384) #9
  %basemem23 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.084.lcssa, i32 5
  %8 = ptrtoint ptr %basemem23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %basemem23, align 4
  %cmp25 = icmp eq ptr %call22, null
  br i1 %cmp25, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.15) #12
  br label %err_reg

if.end31:                                         ; preds = %if.end20
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %arrayidx12, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 5
  br i1 %10, label %switch.lookup, label %if.end31.sw.epilog_crit_edge

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.moxa_pci_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end31.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end31.sw.epilog_crit_edge ]
  %numPorts34 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.084.lcssa, i32 1
  %12 = ptrtoint ptr %numPorts34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %numPorts34, align 4
  %busType = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.084.lcssa, i32 2
  %13 = ptrtoint ptr %busType to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %busType, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call36 = tail call fastcc i32 @moxa_init_board(ptr noundef %arrayidx12, ptr noundef %dev35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %err_base

if.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx12, ptr %driver_data.i.i, align 4
  %sub = add i32 %1, -1
  %arrayidx44 = getelementptr [5 x ptr], ptr @moxa_brdname, i32 0, i32 %sub
  %15 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx44, align 4
  %numPorts45 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.084.lcssa, i32 1
  %17 = ptrtoint ptr %numPorts45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numPorts45, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev35, ptr noundef nonnull @.str.18, ptr noundef %16, i32 noundef %18) #12
  br label %cleanup

err_base:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %basemem23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %basemem23, align 4
  tail call void @iounmap(ptr noundef %20) #9
  %21 = ptrtoint ptr %basemem23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %basemem23, align 4
  br label %err_reg

err_reg:                                          ; preds = %err_base, %do.end29
  %retval1.0 = phi i32 [ -12, %do.end29 ], [ %call36, %err_base ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end39, %do.end18, %for.inc.3, %do.end
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %call, %do.end ], [ -19, %for.inc.3 ], [ %call13, %do.end18 ], [ %retval1.0, %err_reg ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @moxa_board_deinit(ptr noundef %1)
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @moxa_init_board(ptr noundef %brd, ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  %rsn.i = alloca [64 x i8], align 1
  %lens.i = alloca [5 x i16], align 2
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !234
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19200, i32 noundef 3520, i32 noundef 3) #13
  %ports = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 4
  %1 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i.i, ptr %ports, align 4
  %cmp = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp, label %do.end, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.079 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call1.i.i.i.i, %entry.for.body_crit_edge ]
  tail call void @tty_port_init(ptr noundef %p.079) #9
  %ops = getelementptr inbounds %struct.tty_port, ptr %p.079, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @moxa_port_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.moxa_port, ptr %p.079, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %type, align 4
  %cflag = getelementptr inbounds %struct.moxa_port, ptr %p.079, i32 0, i32 4
  %4 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3261, ptr %cflag, align 4
  %inc = add nuw nsw i32 %i.080, 1
  %incdec.ptr = getelementptr %struct.moxa_port, ptr %p.079, i32 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %5 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %brd, align 4
  %switch.tableidx = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 5
  br i1 %7, label %switch.lookup, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.moxa_init_board, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %for.end.sw.epilog_crit_edge
  %file.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %for.end.sw.epilog_crit_edge ]
  %call7 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %file.0, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %file.0) #12
  br label %err_free

if.end14:                                         ; preds = %sw.epilog
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rsn.i) #9
  %13 = call ptr @memset(ptr %rsn.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %lens.i) #9
  %14 = getelementptr inbounds [5 x i16], ptr %lens.i, i32 0, i32 1
  %15 = getelementptr inbounds [5 x i16], ptr %lens.i, i32 0, i32 2
  %16 = getelementptr inbounds [5 x i16], ptr %lens.i, i32 0, i32 3
  %17 = getelementptr inbounds [5 x i16], ptr %lens.i, i32 0, i32 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp.i = icmp ult i32 %19, 32
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = call ptr @memcpy(ptr %rsn.i, ptr @.str.32, i32 34)
  br label %moxa_load_fw.exit

if.end.i:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875574320, i32 %22)
  %cmp1.not.i = icmp eq i32 %22, 875574320
  br i1 %cmp1.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsn.i, ptr noundef nonnull @.str.33, i32 noundef %23) #9
  br label %moxa_load_fw.exit

if.end6.i:                                        ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.anon.75, ptr %12, i32 0, i32 2
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp7.not.i = icmp eq i8 %25, 3
  br i1 %cmp7.not.i, label %if.end14.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %25 to i32
  %call13.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsn.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i) #9
  br label %moxa_load_fw.exit

if.end14.i:                                       ; preds = %if.end6.i
  %model.i = getelementptr inbounds %struct.anon.75, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %model.i, align 1
  %28 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %brd, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %29, label %sw.default.i.i [
    i32 2, label %if.end14.i.sw.bb.i.i_crit_edge
    i32 1, label %if.end14.i.sw.bb.i.i_crit_edge109
    i32 5, label %sw.bb2.i.i
  ]

if.end14.i.sw.bb.i.i_crit_edge109:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end14.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end14.i.sw.bb.i.i_crit_edge, %if.end14.i.sw.bb.i.i_crit_edge109
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.not.i.i = icmp eq i8 %27, 1
  br i1 %cmp.not.i.i, label %sw.bb.i.i.if.end21.i_crit_edge, label %sw.bb.i.i.if.then16.i_crit_edge

sw.bb.i.i.if.then16.i_crit_edge:                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

sw.bb.i.i.if.end21.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

sw.bb2.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp4.not.i.i = icmp eq i8 %27, 3
  br i1 %cmp4.not.i.i, label %sw.bb2.i.i.if.end21.i_crit_edge, label %sw.bb2.i.i.if.then16.i_crit_edge

sw.bb2.i.i.if.then16.i_crit_edge:                 ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

sw.bb2.i.i.if.end21.i_crit_edge:                  ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

sw.default.i.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp9.not.i.i = icmp eq i8 %27, 2
  br i1 %cmp9.not.i.i, label %sw.default.i.i.if.end21.i_crit_edge, label %sw.default.i.i.if.then16.i_crit_edge

sw.default.i.i.if.then16.i_crit_edge:             ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

sw.default.i.i.if.end21.i_crit_edge:              ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then16.i:                                      ; preds = %sw.default.i.i.if.then16.i_crit_edge, %sw.bb2.i.i.if.then16.i_crit_edge, %sw.bb.i.i.if.then16.i_crit_edge
  %conv19.i = zext i8 %27 to i32
  %call20.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsn.i, ptr noundef nonnull @.str.35, i32 noundef %conv19.i) #9
  br label %moxa_load_fw.exit

if.end21.i:                                       ; preds = %sw.default.i.i.if.end21.i_crit_edge, %sw.bb2.i.i.if.end21.i_crit_edge, %sw.bb.i.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp24.i = icmp eq i8 %27, 2
  %arrayidx.i = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 0
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  %34 = ptrtoint ptr %lens.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %lens.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool32.not.i = icmp eq i16 %32, 0
  br i1 %tobool32.not.i, label %if.end21.i.if.then54.i_crit_edge, label %land.lhs.true.i

if.end21.i.if.then54.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %conv31.i = zext i16 %33 to i32
  %add.i = add nuw nsw i32 %conv31.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp36.not.i = icmp ugt i32 %add.i, %19
  br i1 %cmp36.not.i, label %land.lhs.true.i.if.end57.i_crit_edge, label %land.lhs.true38.i

land.lhs.true.i.if.end57.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

land.lhs.true38.i:                                ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %arrayidx40.i = getelementptr i8, ptr %36, i32 32
  %37 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32647, i16 %38)
  %cmp.not.i172.i = icmp eq i16 %38, -32647
  br i1 %cmp.not.i172.i, label %land.lhs.true38.i.if.end57.i_crit_edge, label %do.end46.i

land.lhs.true38.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end46.i:                                       ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 32) #12
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end48.4.i.if.then54.i_crit_edge, %if.end48.3.i.if.then54.i_crit_edge, %if.end57.1.i.if.then54.i_crit_edge, %if.end57.i.if.then54.i_crit_edge, %if.end21.i.if.then54.i_crit_edge
  %39 = call ptr @memcpy(ptr %rsn.i, ptr @.str.38, i32 27)
  br label %moxa_load_fw.exit

if.end57.i:                                       ; preds = %do.end46.i, %land.lhs.true38.i.if.end57.i_crit_edge, %land.lhs.true.i.if.end57.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.1.i, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #9
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool32.not.1.i = icmp eq i16 %41, 0
  br i1 %tobool32.not.1.i, label %if.end57.i.if.then54.i_crit_edge, label %land.lhs.true.1.i

if.end57.i.if.then54.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.i

land.lhs.true.1.i:                                ; preds = %if.end57.i
  %conv31.1.i = zext i16 %42 to i32
  %add.1.i = add nuw nsw i32 %add.i, %conv31.1.i
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %45)
  %cmp36.not.1.i = icmp ugt i32 %add.1.i, %45
  br i1 %cmp36.not.1.i, label %land.lhs.true.1.i.if.end57.1.i_crit_edge, label %land.lhs.true38.1.i

land.lhs.true.1.i.if.end57.1.i_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.1.i

land.lhs.true38.1.i:                              ; preds = %land.lhs.true.1.i
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %arrayidx40.1.i = getelementptr i8, ptr %47, i32 %add.i
  %48 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx40.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32647, i16 %49)
  %cmp.not.i172.1.i = icmp eq i16 %49, -32647
  br i1 %cmp.not.i172.1.i, label %land.lhs.true38.1.i.if.end57.1.i_crit_edge, label %do.end46.1.i

land.lhs.true38.1.i.if.end57.1.i_crit_edge:       ; preds = %land.lhs.true38.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.1.i

do.end46.1.i:                                     ; preds = %land.lhs.true38.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add.i) #12
  br label %if.end57.1.i

if.end57.1.i:                                     ; preds = %do.end46.1.i, %land.lhs.true38.1.i.if.end57.1.i_crit_edge, %land.lhs.true.1.i.if.end57.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.2.i, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51) #9
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool32.not.2.i = icmp eq i16 %51, 0
  br i1 %tobool32.not.2.i, label %if.end57.1.i.if.then54.i_crit_edge, label %land.lhs.true.2.i

if.end57.1.i.if.then54.i_crit_edge:               ; preds = %if.end57.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.i

land.lhs.true.2.i:                                ; preds = %if.end57.1.i
  %conv31.2.i = zext i16 %52 to i32
  %add.2.i = add nuw nsw i32 %add.1.i, %conv31.2.i
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2.i, i32 %55)
  %cmp36.not.2.i = icmp ugt i32 %add.2.i, %55
  br i1 %cmp36.not.2.i, label %land.lhs.true.2.i.if.end57.2.i_crit_edge, label %land.lhs.true38.2.i

land.lhs.true.2.i.if.end57.2.i_crit_edge:         ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.2.i

land.lhs.true38.2.i:                              ; preds = %land.lhs.true.2.i
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %arrayidx40.2.i = getelementptr i8, ptr %57, i32 %add.1.i
  %58 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx40.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32647, i16 %59)
  %cmp.not.i172.2.i = icmp eq i16 %59, -32647
  br i1 %cmp.not.i172.2.i, label %land.lhs.true38.2.i.if.end57.2.i_crit_edge, label %do.end46.2.i

land.lhs.true38.2.i.if.end57.2.i_crit_edge:       ; preds = %land.lhs.true38.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.2.i

do.end46.2.i:                                     ; preds = %land.lhs.true38.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add.1.i) #12
  br label %if.end57.2.i

if.end57.2.i:                                     ; preds = %do.end46.2.i, %land.lhs.true38.2.i.if.end57.2.i_crit_edge, %land.lhs.true.2.i.if.end57.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.3.i, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool32.not.3.i = icmp eq i16 %61, 0
  br i1 %tobool32.not.3.i, label %if.end48.3.i, label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %if.end57.2.i
  %conv31.3.i = zext i16 %62 to i32
  %add.3.i = add nuw nsw i32 %add.2.i, %conv31.3.i
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3.i, i32 %65)
  %cmp36.not.3.i = icmp ugt i32 %add.3.i, %65
  br i1 %cmp36.not.3.i, label %land.lhs.true.3.i.if.end57.3.i_crit_edge, label %land.lhs.true38.3.i

land.lhs.true.3.i.if.end57.3.i_crit_edge:         ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.3.i

land.lhs.true38.3.i:                              ; preds = %land.lhs.true.3.i
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %arrayidx40.3.i = getelementptr i8, ptr %67, i32 %add.2.i
  %68 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx40.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32647, i16 %69)
  %cmp.not.i172.3.i = icmp eq i16 %69, -32647
  br i1 %cmp.not.i172.3.i, label %land.lhs.true38.3.i.if.end57.3.i_crit_edge, label %do.end46.3.i

land.lhs.true38.3.i.if.end57.3.i_crit_edge:       ; preds = %land.lhs.true38.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.3.i

do.end46.3.i:                                     ; preds = %land.lhs.true38.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add.2.i) #12
  br label %if.end57.3.i

if.end48.3.i:                                     ; preds = %if.end57.2.i
  br i1 %cmp24.i, label %if.end48.3.i.if.then54.i_crit_edge, label %if.end57.3.i.thread

if.end48.3.i.if.then54.i_crit_edge:               ; preds = %if.end48.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.i

if.end57.3.i:                                     ; preds = %do.end46.3.i, %land.lhs.true38.3.i.if.end57.3.i_crit_edge, %land.lhs.true.3.i.if.end57.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 4
  %70 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.4.i, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #9
  %73 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool32.not.4.i = icmp eq i16 %71, 0
  br i1 %tobool32.not.4.i, label %if.end48.4.i, label %if.end57.3.i.land.lhs.true.4.i_crit_edge

if.end57.3.i.land.lhs.true.4.i_crit_edge:         ; preds = %if.end57.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4.i

if.end57.3.i.thread:                              ; preds = %if.end48.3.i
  %.pre = zext i16 %62 to i32
  %.pre86 = add nuw nsw i32 %add.2.i, %.pre
  %arrayidx.4.i91 = getelementptr %struct.anon.75, ptr %12, i32 0, i32 5, i32 4
  %74 = ptrtoint ptr %arrayidx.4.i91 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.4.i91, align 2
  %76 = call i16 @llvm.bswap.i16(i16 %75) #9
  %77 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool32.not.4.i92 = icmp eq i16 %75, 0
  br i1 %tobool32.not.4.i92, label %if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge, label %if.end57.3.i.thread.land.lhs.true.4.i_crit_edge

if.end57.3.i.thread.land.lhs.true.4.i_crit_edge:  ; preds = %if.end57.3.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.4.i

if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge: ; preds = %if.end57.3.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.4.i.if.end57.4.i_crit_edge

land.lhs.true.4.i:                                ; preds = %if.end57.3.i.thread.land.lhs.true.4.i_crit_edge, %if.end57.3.i.land.lhs.true.4.i_crit_edge
  %78 = phi i16 [ %76, %if.end57.3.i.thread.land.lhs.true.4.i_crit_edge ], [ %72, %if.end57.3.i.land.lhs.true.4.i_crit_edge ]
  %conv59.3.i.pre-phi96 = phi i32 [ %.pre, %if.end57.3.i.thread.land.lhs.true.4.i_crit_edge ], [ %conv31.3.i, %if.end57.3.i.land.lhs.true.4.i_crit_edge ]
  %add60.3.i.pre-phi93 = phi i32 [ %.pre86, %if.end57.3.i.thread.land.lhs.true.4.i_crit_edge ], [ %add.3.i, %if.end57.3.i.land.lhs.true.4.i_crit_edge ]
  %conv31.4.i = zext i16 %78 to i32
  %add.4.i = add nuw nsw i32 %add60.3.i.pre-phi93, %conv31.4.i
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4.i, i32 %80)
  %cmp36.not.4.i = icmp ugt i32 %add.4.i, %80
  br i1 %cmp36.not.4.i, label %land.lhs.true.4.i.if.end57.4.i_crit_edge, label %land.lhs.true38.4.i

land.lhs.true.4.i.if.end57.4.i_crit_edge:         ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.4.i

land.lhs.true38.4.i:                              ; preds = %land.lhs.true.4.i
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %arrayidx40.4.i = getelementptr i8, ptr %82, i32 %add60.3.i.pre-phi93
  %83 = ptrtoint ptr %arrayidx40.4.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx40.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32647, i16 %84)
  %cmp.not.i172.4.i = icmp eq i16 %84, -32647
  br i1 %cmp.not.i172.4.i, label %land.lhs.true38.4.i.if.end57.4.i_crit_edge, label %do.end46.4.i

land.lhs.true38.4.i.if.end57.4.i_crit_edge:       ; preds = %land.lhs.true38.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.4.i

do.end46.4.i:                                     ; preds = %land.lhs.true38.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %add60.3.i.pre-phi93) #12
  br label %if.end57.4.i

if.end48.4.i:                                     ; preds = %if.end57.3.i
  br i1 %cmp24.i, label %if.end48.4.i.if.then54.i_crit_edge, label %if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge

if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge: ; preds = %if.end48.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.4.i.if.end57.4.i_crit_edge

if.end48.4.i.if.then54.i_crit_edge:               ; preds = %if.end48.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54.i

if.end48.4.i.if.end57.4.i_crit_edge:              ; preds = %if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge, %if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge
  %add60.3.i.pre-phi94101 = phi i32 [ %add.3.i, %if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ], [ %.pre86, %if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ]
  %conv59.3.i.pre-phi97100 = phi i32 [ %conv31.3.i, %if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ], [ %.pre, %if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ]
  %85 = phi i16 [ %72, %if.end48.4.i.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ], [ %76, %if.end57.3.i.thread.if.end48.4.i.if.end57.4.i_crit_edge_crit_edge ]
  %.pre87 = zext i16 %85 to i32
  %.pre88 = add nuw nsw i32 %add60.3.i.pre-phi94101, %.pre87
  br label %if.end57.4.i

if.end57.4.i:                                     ; preds = %if.end48.4.i.if.end57.4.i_crit_edge, %do.end46.4.i, %land.lhs.true38.4.i.if.end57.4.i_crit_edge, %land.lhs.true.4.i.if.end57.4.i_crit_edge
  %conv59.3.i.pre-phi95 = phi i32 [ %conv59.3.i.pre-phi97100, %if.end48.4.i.if.end57.4.i_crit_edge ], [ %conv59.3.i.pre-phi96, %do.end46.4.i ], [ %conv59.3.i.pre-phi96, %land.lhs.true38.4.i.if.end57.4.i_crit_edge ], [ %conv59.3.i.pre-phi96, %land.lhs.true.4.i.if.end57.4.i_crit_edge ]
  %add60.4.i.pre-phi = phi i32 [ %.pre88, %if.end48.4.i.if.end57.4.i_crit_edge ], [ %add.4.i, %do.end46.4.i ], [ %add.4.i, %land.lhs.true38.4.i.if.end57.4.i_crit_edge ], [ %add.4.i, %land.lhs.true.4.i.if.end57.4.i_crit_edge ]
  %86 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add60.4.i.pre-phi, i32 %87)
  %cmp62.not.i = icmp eq i32 %add60.4.i.pre-phi, %87
  br i1 %cmp62.not.i, label %if.end68.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.end57.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call67.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %rsn.i, ptr noundef nonnull @.str.39, i32 noundef %87, i32 noundef %add60.4.i.pre-phi) #9
  br label %moxa_load_fw.exit

if.end68.i:                                       ; preds = %if.end57.4.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 32
  %88 = call ptr @memcpy(ptr %rsn.i, ptr @.str.40, i32 11)
  %basemem.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 5
  %89 = ptrtoint ptr %basemem.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %basemem.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  call void @arm_heavy_mb() #9
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 8176
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 -128) #9, !srcloc !236
  call void @msleep(i32 noundef 10) #9
  call void @mmioset(ptr noundef %90, i32 noundef 0, i32 noundef 4096) #9
  call void @mmiocpy(ptr noundef %90, ptr noundef %add.ptr.i, i32 noundef %conv31.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #9, !srcloc !236
  call void @msleep(i32 noundef 2000) #9
  %91 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %brd, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %92, label %sw.default.i175.i [
    i32 2, label %if.end68.i.sw.bb.i174.i_crit_edge
    i32 1, label %if.end68.i.sw.bb.i174.i_crit_edge110
    i32 5, label %sw.bb9.i.i
  ]

if.end68.i.sw.bb.i174.i_crit_edge110:             ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i174.i

if.end68.i.sw.bb.i174.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i174.i

sw.bb.i174.i:                                     ; preds = %if.end68.i.sw.bb.i174.i_crit_edge, %if.end68.i.sw.bb.i174.i_crit_edge110
  %add.ptr5.i.i = getelementptr i8, ptr %90, i32 2052
  %94 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  call void @__sanitizer_cov_trace_const_cmp2(i16 6146, i16 %94)
  %cmp.not.i173.i = icmp eq i16 %94, 6146
  br i1 %cmp.not.i173.i, label %sw.bb.i174.i.if.end76.i_crit_edge, label %sw.bb.i174.i.moxa_load_bios.exit.i_crit_edge

sw.bb.i174.i.moxa_load_bios.exit.i_crit_edge:     ; preds = %sw.bb.i174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_bios.exit.i

sw.bb.i174.i.if.end76.i_crit_edge:                ; preds = %sw.bb.i174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

sw.bb9.i.i:                                       ; preds = %if.end68.i
  %add.ptr12.i.i = getelementptr i8, ptr %90, i32 2052
  %95 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  call void @__sanitizer_cov_trace_const_cmp2(i16 1026, i16 %95)
  %cmp17.not.i.i = icmp eq i16 %95, 1026
  br i1 %cmp17.not.i.i, label %sw.bb9.i.i.if.end76.i_crit_edge, label %sw.bb9.i.i.moxa_load_bios.exit.i_crit_edge

sw.bb9.i.i.moxa_load_bios.exit.i_crit_edge:       ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_bios.exit.i

sw.bb9.i.i.if.end76.i_crit_edge:                  ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

sw.default.i175.i:                                ; preds = %if.end68.i
  %add.ptr24.i.i = getelementptr i8, ptr %90, i32 2052
  %96 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp2(i16 8195, i16 %96)
  %cmp29.not.i.i = icmp eq i16 %96, 8195
  br i1 %cmp29.not.i.i, label %if.end32.i.i, label %sw.default.i175.i.moxa_load_bios.exit.i_crit_edge

sw.default.i175.i.moxa_load_bios.exit.i_crit_edge: ; preds = %sw.default.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_bios.exit.i

if.end32.i.i:                                     ; preds = %sw.default.i175.i
  %add.ptr23.i.i = getelementptr i8, ptr %90, i32 2048
  %97 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  call void @__sanitizer_cov_trace_const_cmp2(i16 1280, i16 %97)
  %cmp41.not.i.i = icmp eq i16 %97, 1280
  br i1 %cmp41.not.i.i, label %if.end32.i.i.if.end76.i_crit_edge, label %if.end32.i.i.moxa_load_bios.exit.i_crit_edge

if.end32.i.i.moxa_load_bios.exit.i_crit_edge:     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_bios.exit.i

if.end32.i.i.if.end76.i_crit_edge:                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

moxa_load_bios.exit.i:                            ; preds = %if.end32.i.i.moxa_load_bios.exit.i_crit_edge, %sw.default.i175.i.moxa_load_bios.exit.i_crit_edge, %sw.bb9.i.i.moxa_load_bios.exit.i_crit_edge, %sw.bb.i174.i.moxa_load_bios.exit.i_crit_edge
  %.str.47.sink.i.i = phi ptr [ @.str.44, %if.end32.i.i.moxa_load_bios.exit.i_crit_edge ], [ @.str.47, %sw.bb.i174.i.moxa_load_bios.exit.i_crit_edge ], [ @.str.47, %sw.bb9.i.i.moxa_load_bios.exit.i_crit_edge ], [ @.str.47, %sw.default.i175.i.moxa_load_bios.exit.i_crit_edge ]
  %call54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.47.sink.i.i) #12
  br label %moxa_load_fw.exit

if.end76.i:                                       ; preds = %if.end32.i.i.if.end76.i_crit_edge, %sw.bb9.i.i.if.end76.i_crit_edge, %sw.bb.i174.i.if.end76.i_crit_edge
  %add82.i = add nuw nsw i32 %conv31.1.i, %conv31.i
  %add.ptr83.i = getelementptr i8, ptr %add.ptr.i, i32 %add82.i
  %98 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %model.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %99)
  %cmp87.i = icmp eq i8 %99, 2
  br i1 %cmp87.i, label %if.then89.i, label %if.end76.i.if.end104.i_crit_edge

if.end76.i.if.end104.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.then89.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 7168, i16 %52)
  %cmp.i.i = icmp ult i16 %52, 7168
  br i1 %cmp.i.i, label %moxa_load_320b.exit.i, label %if.end95.i

moxa_load_320b.exit.i:                            ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %moxa_load_fw.exit

if.end95.i:                                       ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %basemem.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %basemem.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  call void @arm_heavy_mb() #9
  %sub.i.i = add nsw i32 %conv31.2.i, -7168
  %conv.i.i = add i16 %52, -7170
  %102 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %add.ptr5.i178.i = getelementptr i8, ptr %101, i32 2060
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i178.i, i16 %102) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  call void @arm_heavy_mb() #9
  %add.ptr9.i.i = getelementptr i8, ptr %101, i32 8176
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 1) #9, !srcloc !236
  %add.ptr10.i.i = getelementptr i8, ptr %101, i32 8192
  call void @mmiocpy(ptr noundef %add.ptr10.i.i, ptr noundef %add.ptr83.i, i32 noundef 7168) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i.i, i8 2) #9, !srcloc !236
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr83.i, i32 7168
  call void @mmiocpy(ptr noundef %add.ptr10.i.i, ptr noundef %add.ptr16.i.i, i32 noundef %sub.i.i) #9
  %add101.i = add nuw nsw i32 %conv59.3.i.pre-phi95, %conv31.2.i
  %add.ptr102.i = getelementptr i8, ptr %add.ptr83.i, i32 %add101.i
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end95.i, %if.end76.i.if.end104.i_crit_edge
  %lenp.0.i = phi i32 [ 4, %if.end95.i ], [ 2, %if.end76.i.if.end104.i_crit_edge ]
  %ptr.0.i = phi ptr [ %add.ptr102.i, %if.end95.i ], [ %add.ptr83.i, %if.end76.i.if.end104.i_crit_edge ]
  %arrayidx105.i = getelementptr [5 x i16], ptr %lens.i, i32 0, i32 %lenp.0.i
  %103 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx105.i, align 2
  %conv106.i = zext i16 %104 to i32
  %105 = ptrtoint ptr %basemem.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %basemem.i.i, align 4
  %rem.i.i = and i32 %conv106.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i182.i

do.end.i182.i:                                    ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i181.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %moxa_load_fw.exit

if.end.i.i:                                       ; preds = %if.end104.i
  %107 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %brd, align 4
  %switch.tableidx105 = add i32 %108, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx105)
  %109 = icmp ult i32 %switch.tableidx105, 5
  br i1 %109, label %switch.lookup104, label %if.end.i.i.sw.epilog.i.i.i_crit_edge

if.end.i.i.sw.epilog.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i

switch.lookup104:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep106 = getelementptr inbounds [5 x i16], ptr @switch.table.moxa_init_board.82, i32 0, i32 %switch.tableidx105
  %110 = ptrtoint ptr %switch.gep106 to i32
  call void @__asan_load2_noabort(i32 %110)
  %switch.load107 = load i16, ptr %switch.gep106, align 2
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %switch.lookup104, %if.end.i.i.sw.epilog.i.i.i_crit_edge
  %keycode.0.i.i.i = phi i16 [ 800, %if.end.i.i.sw.epilog.i.i.i_crit_edge ], [ %switch.load107, %switch.lookup104 ]
  %shr.i.i.i = lshr i32 %conv106.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %104)
  %cmp2363.not.i.i.i = icmp ult i16 %104, 2
  br i1 %cmp2363.not.i.i.i, label %sw.epilog.i.i.i.do.body.preheader.i.i.i_crit_edge, label %for.body.preheader.i.i.i

sw.epilog.i.i.i.do.body.preheader.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader.i.i.i

for.body.preheader.i.i.i:                         ; preds = %sw.epilog.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %shr.i.i.i, i32 1) #9
  br label %for.body.i.i.i

do.body.preheader.i.i.i:                          ; preds = %for.body.i.i.i.do.body.preheader.i.i.i_crit_edge, %sw.epilog.i.i.i.do.body.preheader.i.i.i_crit_edge
  %usum.0.lcssa.i.i.i = phi i16 [ 0, %sw.epilog.i.i.i.do.body.preheader.i.i.i_crit_edge ], [ %add.i.i.i, %for.body.i.i.i.do.body.preheader.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %106, i32 3840
  %add.ptr16.i.i.i = getelementptr i8, ptr %106, i32 2054
  %add.ptr20.i.i.i = getelementptr i8, ptr %106, i32 2052
  %111 = call i16 @llvm.bswap.i16(i16 %usum.0.lcssa.i.i.i) #9
  %add.ptr53.i.i.i = getelementptr i8, ptr %106, i32 2056
  %add.ptr81.i.i.i = getelementptr i8, ptr %106, i32 2058
  br label %do.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.0365.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %usum.0364.i.i.i = phi i16 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %arrayidx.i.i.i = getelementptr i16, ptr %ptr.0.i, i32 %i.0365.i.i.i
  %112 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i.i.i, align 2
  %114 = call i16 @llvm.bswap.i16(i16 %113) #9
  %add.i.i.i = add i16 %114, %usum.0364.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0365.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.do.body.preheader.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.do.body.preheader.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader.i.i.i

do.body.i.i.i:                                    ; preds = %for.end76.i.i.i.do.body.i.i.i_crit_edge, %do.body.preheader.i.i.i
  %retry.0.i.i.i = phi i32 [ %inc77.i.i.i, %for.end76.i.i.i.do.body.i.i.i_crit_edge ], [ 0, %do.body.preheader.i.i.i ]
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %for.end33.i.i.i.while.cond.i.i.i_crit_edge, %do.body.i.i.i
  %j.0.i.i.i = phi i32 [ 0, %do.body.i.i.i ], [ %add13.i.i.i, %for.end33.i.i.i.while.cond.i.i.i_crit_edge ]
  %wlen.0.i.i.i = phi i32 [ %shr.i.i.i, %do.body.i.i.i ], [ %sub.i.i.i, %for.end33.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wlen.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %wlen.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body46.i.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %115 = call i32 @llvm.umin.i32(i32 %wlen.0.i.i.i, i32 2048) #9
  %sub.i.i.i = sub i32 %wlen.0.i.i.i, %115
  %add.ptr11.i.i.i = getelementptr i8, ptr %ptr.0.i, i32 %j.0.i.i.i
  %shl.i.i.i = shl nuw nsw i32 %115, 1
  call void @mmiocpy(ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr11.i.i.i, i32 noundef %shl.i.i.i) #9
  %add13.i.i.i = add i32 %shl.i.i.i, %j.0.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  call void @arm_heavy_mb() #9
  %conv15.i.i.i = trunc i32 %115 to i16
  %116 = call i16 @llvm.bswap.i16(i16 %conv15.i.i.i) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i.i.i, i16 %116) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i.i.i, i16 0) #9, !srcloc !244
  br label %for.body24.i.i.i

for.body24.i.i.i:                                 ; preds = %if.end.i.i.i.for.body24.i.i.i_crit_edge, %while.body.i.i.i
  %i.1366.i.i.i = phi i32 [ 0, %while.body.i.i.i ], [ %inc32.i.i.i, %if.end.i.i.i.for.body24.i.i.i_crit_edge ]
  %117 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i.i.i) #9, !srcloc !238
  %118 = call i16 @llvm.bswap.i16(i16 %117) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %keycode.0.i.i.i)
  %cmp29.i.i.i = icmp eq i16 %118, %keycode.0.i.i.i
  br i1 %cmp29.i.i.i, label %for.body24.i.i.i.for.end33.i.i.i_crit_edge, label %if.end.i.i.i

for.body24.i.i.i.for.end33.i.i.i_crit_edge:       ; preds = %for.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33.i.i.i

if.end.i.i.i:                                     ; preds = %for.body24.i.i.i
  call void @msleep(i32 noundef 10) #9
  %inc32.i.i.i = add nuw nsw i32 %i.1366.i.i.i, 1
  %exitcond371.not.i.i.i = icmp eq i32 %inc32.i.i.i, 100
  br i1 %exitcond371.not.i.i.i, label %if.end.i.i.i.for.end33.i.i.i_crit_edge, label %if.end.i.i.i.for.body24.i.i.i_crit_edge

if.end.i.i.i.for.body24.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24.i.i.i

if.end.i.i.i.for.end33.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33.i.i.i

for.end33.i.i.i:                                  ; preds = %if.end.i.i.i.for.end33.i.i.i_crit_edge, %for.body24.i.i.i.for.end33.i.i.i_crit_edge
  %119 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i.i.i) #9, !srcloc !238
  %120 = call i16 @llvm.bswap.i16(i16 %119) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %cmp42.not.i.i.i = icmp eq i16 %120, %keycode.0.i.i.i
  br i1 %cmp42.not.i.i.i, label %for.end33.i.i.i.while.cond.i.i.i_crit_edge, label %for.end33.i.i.i.moxa_load_fw.exit_crit_edge

for.end33.i.i.i.moxa_load_fw.exit_crit_edge:      ; preds = %for.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

for.end33.i.i.i.while.cond.i.i.i_crit_edge:       ; preds = %for.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

do.body46.i.i.i:                                  ; preds = %while.cond.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i.i.i, i16 0) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53.i.i.i, i16 %111) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i.i.i, i16 0) #9, !srcloc !244
  br label %for.body61.i.i.i

for.body61.i.i.i:                                 ; preds = %if.end73.i.i.i.for.body61.i.i.i_crit_edge, %do.body46.i.i.i
  %i.2367.i.i.i = phi i32 [ 0, %do.body46.i.i.i ], [ %inc75.i.i.i, %if.end73.i.i.i.for.body61.i.i.i_crit_edge ]
  %121 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i.i.i) #9, !srcloc !238
  %122 = call i16 @llvm.bswap.i16(i16 %121) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  call void @__sanitizer_cov_trace_cmp2(i16 %122, i16 %keycode.0.i.i.i)
  %cmp70.i.i.i = icmp eq i16 %122, %keycode.0.i.i.i
  br i1 %cmp70.i.i.i, label %for.body61.i.i.i.for.end76.i.i.i_crit_edge, label %if.end73.i.i.i

for.body61.i.i.i.for.end76.i.i.i_crit_edge:       ; preds = %for.body61.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76.i.i.i

if.end73.i.i.i:                                   ; preds = %for.body61.i.i.i
  call void @msleep(i32 noundef 10) #9
  %inc75.i.i.i = add nuw nsw i32 %i.2367.i.i.i, 1
  %exitcond372.not.i.i.i = icmp eq i32 %inc75.i.i.i, 100
  br i1 %exitcond372.not.i.i.i, label %if.end73.i.i.i.for.end76.i.i.i_crit_edge, label %if.end73.i.i.i.for.body61.i.i.i_crit_edge

if.end73.i.i.i.for.body61.i.i.i_crit_edge:        ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61.i.i.i

if.end73.i.i.i.for.end76.i.i.i_crit_edge:         ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76.i.i.i

for.end76.i.i.i:                                  ; preds = %if.end73.i.i.i.for.end76.i.i.i_crit_edge, %for.body61.i.i.i.for.end76.i.i.i_crit_edge
  %123 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81.i.i.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp86.not.i.i.i = icmp ne i8 %123, 1
  %inc77.i.i.i = add nuw nsw i32 %retry.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retry.0.i.i.i)
  %cmp88.i.i.i = icmp ult i32 %retry.0.i.i.i, 2
  %or.cond.i.i.i = select i1 %cmp86.not.i.i.i, i1 %cmp88.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %for.end76.i.i.i.do.body.i.i.i_crit_edge, label %do.end90.i.i.i

for.end76.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %for.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

do.end90.i.i.i:                                   ; preds = %for.end76.i.i.i
  %124 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr81.i.i.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp98.not.i.i.i = icmp eq i8 %124, 1
  br i1 %cmp98.not.i.i.i, label %do.body102.i.i.i, label %do.end90.i.i.i.moxa_load_fw.exit_crit_edge

do.end90.i.i.i.moxa_load_fw.exit_crit_edge:       ; preds = %do.end90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

do.body102.i.i.i:                                 ; preds = %do.end90.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i.i.i, i16 0) #9, !srcloc !244
  %add.ptr112.i.i.i = getelementptr i8, ptr %106, i32 264
  br label %for.body109.i.i.i

for.body109.i.i.i:                                ; preds = %if.end120.i.i.i.for.body109.i.i.i_crit_edge, %do.body102.i.i.i
  %i.3368.i.i.i = phi i32 [ 0, %do.body102.i.i.i ], [ %inc122.i.i.i, %if.end120.i.i.i.for.body109.i.i.i_crit_edge ]
  %125 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %125)
  %cmp117.i.i.i = icmp eq i16 %125, 1028
  br i1 %cmp117.i.i.i, label %for.body109.i.i.i.for.end123.i.i.i_crit_edge, label %if.end120.i.i.i

for.body109.i.i.i.for.end123.i.i.i_crit_edge:     ; preds = %for.body109.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end123.i.i.i

if.end120.i.i.i:                                  ; preds = %for.body109.i.i.i
  call void @msleep(i32 noundef 10) #9
  %inc122.i.i.i = add nuw nsw i32 %i.3368.i.i.i, 1
  %exitcond373.not.i.i.i = icmp eq i32 %inc122.i.i.i, 600
  br i1 %exitcond373.not.i.i.i, label %if.end120.i.i.i.for.end123.i.i.i_crit_edge, label %if.end120.i.i.i.for.body109.i.i.i_crit_edge

if.end120.i.i.i.for.body109.i.i.i_crit_edge:      ; preds = %if.end120.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body109.i.i.i

if.end120.i.i.i.for.end123.i.i.i_crit_edge:       ; preds = %if.end120.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end123.i.i.i

for.end123.i.i.i:                                 ; preds = %if.end120.i.i.i.for.end123.i.i.i_crit_edge, %for.body109.i.i.i.for.end123.i.i.i_crit_edge
  %126 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %126)
  %cmp131.not.i.i.i = icmp eq i16 %126, 1028
  br i1 %cmp131.not.i.i.i, label %if.end134.i.i.i, label %for.end123.i.i.i.moxa_load_fw.exit_crit_edge

for.end123.i.i.i.moxa_load_fw.exit_crit_edge:     ; preds = %for.end123.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

if.end134.i.i.i:                                  ; preds = %for.end123.i.i.i
  %127 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %brd, align 4
  %.off.i.i.i = add i32 %128, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i.i)
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %if.then141.i.i.i, label %if.end134.i.i.i.do.body171.i.i.i_crit_edge

if.end134.i.i.i.do.body171.i.i.i_crit_edge:       ; preds = %if.end134.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body171.i.i.i

if.then141.i.i.i:                                 ; preds = %if.end134.i.i.i
  %busType.i.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 2
  %129 = ptrtoint ptr %busType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %busType.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp142.i.i.i = icmp eq i32 %130, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %add.ptr148.i.i.i = getelementptr i8, ptr %106, i32 286
  br i1 %cmp142.i.i.i, label %do.body145.i.i.i, label %do.body157.i.i.i

do.body145.i.i.i:                                 ; preds = %if.then141.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr148.i.i.i, i16 56) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  call void @arm_heavy_mb() #9
  %add.ptr152.i.i.i = getelementptr i8, ptr %106, i32 288
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr152.i.i.i, i16 57) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  call void @arm_heavy_mb() #9
  %add.ptr156.i.i.i = getelementptr i8, ptr %106, i32 290
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr156.i.i.i, i16 21359) #9, !srcloc !244
  br label %do.body171.i.i.i

do.body157.i.i.i:                                 ; preds = %if.then141.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr148.i.i.i, i16 50) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  call void @arm_heavy_mb() #9
  %add.ptr164.i.i.i = getelementptr i8, ptr %106, i32 288
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr164.i.i.i, i16 52) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  call void @arm_heavy_mb() #9
  %add.ptr168.i.i.i = getelementptr i8, ptr %106, i32 290
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr168.i.i.i, i16 8014) #9, !srcloc !244
  br label %do.body171.i.i.i

do.body171.i.i.i:                                 ; preds = %do.body157.i.i.i, %do.body145.i.i.i, %if.end134.i.i.i.do.body171.i.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %add.ptr174.i.i.i = getelementptr i8, ptr %106, i32 284
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr174.i.i.i, i16 256) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr112.i.i.i, i16 0) #9, !srcloc !244
  br label %for.body182.i.i.i

for.body182.i.i.i:                                ; preds = %if.end193.i.i.i.for.body182.i.i.i_crit_edge, %do.body171.i.i.i
  %i.4369.i.i.i = phi i32 [ 0, %do.body171.i.i.i ], [ %inc195.i.i.i, %if.end193.i.i.i.for.body182.i.i.i_crit_edge ]
  %131 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %131)
  %cmp190.i.i.i = icmp eq i16 %131, 1028
  br i1 %cmp190.i.i.i, label %for.body182.i.i.i.for.end196.i.i.i_crit_edge, label %if.end193.i.i.i

for.body182.i.i.i.for.end196.i.i.i_crit_edge:     ; preds = %for.body182.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end196.i.i.i

if.end193.i.i.i:                                  ; preds = %for.body182.i.i.i
  call void @msleep(i32 noundef 10) #9
  %inc195.i.i.i = add nuw nsw i32 %i.4369.i.i.i, 1
  %exitcond374.not.i.i.i = icmp eq i32 %inc195.i.i.i, 500
  br i1 %exitcond374.not.i.i.i, label %if.end193.i.i.i.for.end196.i.i.i_crit_edge, label %if.end193.i.i.i.for.body182.i.i.i_crit_edge

if.end193.i.i.i.for.body182.i.i.i_crit_edge:      ; preds = %if.end193.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body182.i.i.i

if.end193.i.i.i.for.end196.i.i.i_crit_edge:       ; preds = %if.end193.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end196.i.i.i

for.end196.i.i.i:                                 ; preds = %if.end193.i.i.i.for.end196.i.i.i_crit_edge, %for.body182.i.i.i.for.end196.i.i.i_crit_edge
  %132 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %132)
  %cmp204.not.i.i.i = icmp eq i16 %132, 1028
  br i1 %cmp204.not.i.i.i, label %if.end207.i.i.i, label %for.end196.i.i.i.moxa_load_fw.exit_crit_edge

for.end196.i.i.i.moxa_load_fw.exit_crit_edge:     ; preds = %for.end196.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

if.end207.i.i.i:                                  ; preds = %for.end196.i.i.i
  %133 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %brd, align 4
  %.off361.i.i.i = add i32 %134, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off361.i.i.i)
  %switch362.i.i.i = icmp ult i32 %.off361.i.i.i, 2
  br i1 %switch362.i.i.i, label %if.then215.i.i.i, label %if.end207.i.i.i.if.end5.i.i_crit_edge

if.end207.i.i.i.if.end5.i.i_crit_edge:            ; preds = %if.end207.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then215.i.i.i:                                 ; preds = %if.end207.i.i.i
  %add.ptr218.i.i.i = getelementptr i8, ptr %106, i32 272
  %135 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr218.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %cmp223.i.i.i = icmp eq i16 %135, 0
  br i1 %cmp223.i.i.i, label %if.then215.i.i.i.moxa_load_fw.exit_crit_edge, label %if.end226.i.i.i

if.then215.i.i.i.moxa_load_fw.exit_crit_edge:     ; preds = %if.then215.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

if.end226.i.i.i:                                  ; preds = %if.then215.i.i.i
  %136 = call i16 @llvm.bswap.i16(i16 %135) #9
  %conv222.i.i.i = zext i16 %136 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv222.i.i.i, 3
  %numPorts.i.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 1
  %137 = ptrtoint ptr %numPorts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %mul.i.i.i, ptr %numPorts.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  call void @arm_heavy_mb() #9
  %add.ptr231.i.i.i = getelementptr i8, ptr %106, i32 274
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr231.i.i.i, i16 %135) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr112.i.i.i, i16 0) #9, !srcloc !244
  br label %for.body239.i.i.i

for.body239.i.i.i:                                ; preds = %if.end250.i.i.i.for.body239.i.i.i_crit_edge, %if.end226.i.i.i
  %i.5370.i.i.i = phi i32 [ 0, %if.end226.i.i.i ], [ %inc252.i.i.i, %if.end250.i.i.i.for.body239.i.i.i_crit_edge ]
  %138 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %138)
  %cmp247.i.i.i = icmp eq i16 %138, 1028
  br i1 %cmp247.i.i.i, label %for.body239.i.i.i.for.end253.i.i.i_crit_edge, label %if.end250.i.i.i

for.body239.i.i.i.for.end253.i.i.i_crit_edge:     ; preds = %for.body239.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end253.i.i.i

if.end250.i.i.i:                                  ; preds = %for.body239.i.i.i
  call void @msleep(i32 noundef 10) #9
  %inc252.i.i.i = add nuw nsw i32 %i.5370.i.i.i, 1
  %exitcond375.not.i.i.i = icmp eq i32 %inc252.i.i.i, 600
  br i1 %exitcond375.not.i.i.i, label %if.end250.i.i.i.for.end253.i.i.i_crit_edge, label %if.end250.i.i.i.for.body239.i.i.i_crit_edge

if.end250.i.i.i.for.body239.i.i.i_crit_edge:      ; preds = %if.end250.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body239.i.i.i

if.end250.i.i.i.for.end253.i.i.i_crit_edge:       ; preds = %if.end250.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end253.i.i.i

for.end253.i.i.i:                                 ; preds = %if.end250.i.i.i.for.end253.i.i.i_crit_edge, %for.body239.i.i.i.for.end253.i.i.i_crit_edge
  %139 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr112.i.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %139)
  %cmp261.not.i.i.i = icmp eq i16 %139, 1028
  br i1 %cmp261.not.i.i.i, label %for.end253.i.i.i.if.end5.i.i_crit_edge, label %for.end253.i.i.i.moxa_load_fw.exit_crit_edge

for.end253.i.i.i.moxa_load_fw.exit_crit_edge:     ; preds = %for.end253.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_load_fw.exit

for.end253.i.i.i.if.end5.i.i_crit_edge:           ; preds = %for.end253.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %for.end253.i.i.i.if.end5.i.i_crit_edge, %if.end207.i.i.i.if.end5.i.i_crit_edge
  %intNdx.i.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 6
  %140 = ptrtoint ptr %intNdx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %106, ptr %intNdx.i.i.i, align 4
  %add.ptr267.i.i.i = getelementptr i8, ptr %106, i32 4
  %intPend.i.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 7
  %141 = ptrtoint ptr %intPend.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr267.i.i.i, ptr %intPend.i.i.i, align 4
  %add.ptr268.i.i.i = getelementptr i8, ptr %106, i32 8
  %intTable.i.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 8
  %142 = ptrtoint ptr %intTable.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr268.i.i.i, ptr %intTable.i.i.i, align 4
  %143 = ptrtoint ptr %brd to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %brd, align 4
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %144, label %sw.default.i187.i [
    i32 2, label %if.end5.i.i.sw.bb.i183.i_crit_edge
    i32 1, label %if.end5.i.i.sw.bb.i183.i_crit_edge111
    i32 5, label %if.end5.i.i.sw.bb.i183.i_crit_edge112
  ]

if.end5.i.i.sw.bb.i183.i_crit_edge112:            ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i183.i

if.end5.i.i.sw.bb.i183.i_crit_edge111:            ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i183.i

if.end5.i.i.sw.bb.i183.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i183.i

sw.bb.i183.i:                                     ; preds = %if.end5.i.i.sw.bb.i183.i_crit_edge, %if.end5.i.i.sw.bb.i183.i_crit_edge111, %if.end5.i.i.sw.bb.i183.i_crit_edge112
  %numPorts.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 1
  %146 = ptrtoint ptr %numPorts.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %numPorts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp347.i.i = icmp sgt i32 %147, 0
  br i1 %cmp347.i.i, label %for.body.lr.ph.i.i, label %sw.bb.i183.i.if.end18_crit_edge

sw.bb.i183.i.if.end18_crit_edge:                  ; preds = %sw.bb.i183.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.lr.ph.i.i:                               ; preds = %sw.bb.i183.i
  %148 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ports, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %106, i32 1024
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %port.0349.i.i = phi ptr [ %149, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0348.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %board.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.0349.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %board.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %brd, ptr %board.i.i, align 4
  %DCDState.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.0349.i.i, i32 0, i32 6
  %151 = ptrtoint ptr %DCDState.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %DCDState.i.i, align 4
  %mul.i.i = mul i32 %i.0348.i.i, 96
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i184.i, i32 %mul.i.i
  %tableAddr.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.0349.i.i, i32 0, i32 2
  %152 = ptrtoint ptr %tableAddr.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %add.ptr6.i.i, ptr %tableAddr.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  call void @arm_heavy_mb() #9
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 18
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 -225) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  call void @arm_heavy_mb() #9
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 20
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i.i, i16 -129) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  call void @arm_heavy_mb() #9
  %153 = trunc i32 %i.0348.i.i to i16
  %154 = mul i16 %153, 5
  %conv.i185.i = add i16 %154, 3
  %155 = call i16 @llvm.bswap.i16(i16 %conv.i185.i) #9
  %add.ptr20.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i.i, i16 %155) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  call void @arm_heavy_mb() #9
  %156 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20.i.i) #9, !srcloc !238
  %157 = call i16 @llvm.bswap.i16(i16 %156) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  %add29.i.i = add i16 %157, 1
  %158 = call i16 @llvm.bswap.i16(i16 %add29.i.i) #9
  %add.ptr31.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31.i.i, i16 %158) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  call void @arm_heavy_mb() #9
  %conv37.i.i = add i16 %154, 4
  %159 = call i16 @llvm.bswap.i16(i16 %conv37.i.i) #9
  %add.ptr38.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38.i.i, i16 %159) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  call void @arm_heavy_mb() #9
  %160 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38.i.i) #9, !srcloc !238
  %161 = call i16 @llvm.bswap.i16(i16 %160) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %add49.i.i = add i16 %161, 4
  %162 = call i16 @llvm.bswap.i16(i16 %add49.i.i) #9
  %add.ptr51.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51.i.i, i16 %162) #9, !srcloc !244
  %inc.i.i = add nuw nsw i32 %i.0348.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.moxa_port, ptr %port.0349.i.i, i32 1
  %163 = ptrtoint ptr %numPorts.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %numPorts.i.i, align 4
  %cmp.i186.i = icmp slt i32 %inc.i.i, %164
  br i1 %cmp.i186.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end18_crit_edge

for.body.i.i.if.end18_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

sw.default.i187.i:                                ; preds = %if.end5.i.i
  %numPorts54.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 1
  %165 = ptrtoint ptr %numPorts54.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %numPorts54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp55350.i.i = icmp sgt i32 %166, 0
  br i1 %cmp55350.i.i, label %for.body57.lr.ph.i.i, label %sw.default.i187.i.if.end18_crit_edge

sw.default.i187.i.if.end18_crit_edge:             ; preds = %sw.default.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body57.lr.ph.i.i:                             ; preds = %sw.default.i187.i
  %167 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ports, align 4
  %add.ptr60.i.i = getelementptr i8, ptr %106, i32 1024
  br label %for.body57.i.i

for.body57.i.i:                                   ; preds = %for.inc258.i.i.for.body57.i.i_crit_edge, %for.body57.lr.ph.i.i
  %port.1353.i.i = phi ptr [ %168, %for.body57.lr.ph.i.i ], [ %incdec.ptr260.i.i, %for.inc258.i.i.for.body57.i.i_crit_edge ]
  %i.1351.i.i = phi i32 [ 0, %for.body57.lr.ph.i.i ], [ %inc259.i.i, %for.inc258.i.i.for.body57.i.i_crit_edge ]
  %board58.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.1353.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %board58.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %brd, ptr %board58.i.i, align 4
  %DCDState59.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.1353.i.i, i32 0, i32 6
  %170 = ptrtoint ptr %DCDState59.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %DCDState59.i.i, align 4
  %mul61.i.i = mul i32 %i.1351.i.i, 96
  %add.ptr62.i.i = getelementptr i8, ptr %add.ptr60.i.i, i32 %mul61.i.i
  %tableAddr63.i.i = getelementptr inbounds %struct.moxa_port, ptr %port.1353.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %tableAddr63.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr62.i.i, ptr %tableAddr63.i.i, align 4
  %172 = ptrtoint ptr %numPorts54.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %numPorts54.i.i, align 4
  %174 = add i32 %173, -8
  %175 = call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 29) #9
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %175, label %for.body57.i.i.for.inc258.i.i_crit_edge [
    i32 0, label %do.body67.i.i
    i32 1, label %do.body116.i.i
    i32 2, label %do.body165.i.i
    i32 3, label %do.body211.i.i
  ]

for.body57.i.i.for.inc258.i.i_crit_edge:          ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc258.i.i

do.body67.i.i:                                    ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  call void @arm_heavy_mb() #9
  %add.ptr70.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 18
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70.i.i, i16 -225) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  call void @arm_heavy_mb() #9
  %add.ptr74.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 20
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74.i.i, i16 -129) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %177 = trunc i32 %i.1351.i.i to i16
  %178 = mul i16 %177, 5
  %conv80.i.i = add i16 %178, 3
  %179 = call i16 @llvm.bswap.i16(i16 %conv80.i.i) #9
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81.i.i, i16 %179) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  call void @arm_heavy_mb() #9
  %180 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr81.i.i) #9, !srcloc !238
  %181 = call i16 @llvm.bswap.i16(i16 %180) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  %add92.i.i = add i16 %181, 1
  %182 = call i16 @llvm.bswap.i16(i16 %add92.i.i) #9
  %add.ptr94.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr94.i.i, i16 %182) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  call void @arm_heavy_mb() #9
  %conv100.i.i = add i16 %178, 4
  %183 = call i16 @llvm.bswap.i16(i16 %conv100.i.i) #9
  %add.ptr101.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr101.i.i, i16 %183) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  call void @arm_heavy_mb() #9
  %184 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr101.i.i) #9, !srcloc !238
  %185 = call i16 @llvm.bswap.i16(i16 %184) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  %add112.i.i = add i16 %185, 4
  %186 = call i16 @llvm.bswap.i16(i16 %add112.i.i) #9
  %add.ptr114.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr114.i.i, i16 %186) #9, !srcloc !244
  br label %for.inc258.i.i

do.body116.i.i:                                   ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  call void @arm_heavy_mb() #9
  %add.ptr119.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 18
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr119.i.i, i16 -225) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !291
  call void @arm_heavy_mb() #9
  %add.ptr123.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 20
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr123.i.i, i16 -193) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !292
  call void @arm_heavy_mb() #9
  %187 = trunc i32 %i.1351.i.i to i16
  %188 = mul i16 %187, 3
  %conv129.i.i = add i16 %188, 3
  %189 = call i16 @llvm.bswap.i16(i16 %conv129.i.i) #9
  %add.ptr130.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr130.i.i, i16 %189) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !293
  call void @arm_heavy_mb() #9
  %190 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr130.i.i) #9, !srcloc !238
  %191 = call i16 @llvm.bswap.i16(i16 %190) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !294
  %add141.i.i = add i16 %191, 1
  %192 = call i16 @llvm.bswap.i16(i16 %add141.i.i) #9
  %add.ptr143.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr143.i.i, i16 %192) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !295
  call void @arm_heavy_mb() #9
  %conv149.i.i = add i16 %188, 4
  %193 = call i16 @llvm.bswap.i16(i16 %conv149.i.i) #9
  %add.ptr150.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr150.i.i, i16 %193) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !296
  call void @arm_heavy_mb() #9
  %194 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr150.i.i) #9, !srcloc !238
  %195 = call i16 @llvm.bswap.i16(i16 %194) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !297
  %add161.i.i = add i16 %195, 2
  %196 = call i16 @llvm.bswap.i16(i16 %add161.i.i) #9
  %add.ptr163.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr163.i.i, i16 %196) #9, !srcloc !244
  br label %for.inc258.i.i

do.body165.i.i:                                   ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !298
  call void @arm_heavy_mb() #9
  %add.ptr168.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 18
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr168.i.i, i16 -225) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !299
  call void @arm_heavy_mb() #9
  %add.ptr172.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 20
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr172.i.i, i16 -225) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !300
  call void @arm_heavy_mb() #9
  %i.1.tr.i.i = trunc i32 %i.1351.i.i to i16
  %197 = shl i16 %i.1.tr.i.i, 1
  %conv178.i.i = add i16 %197, 3
  %198 = call i16 @llvm.bswap.i16(i16 %conv178.i.i) #9
  %add.ptr179.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr179.i.i, i16 %198) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !301
  call void @arm_heavy_mb() #9
  %199 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr179.i.i) #9, !srcloc !238
  %200 = call i16 @llvm.bswap.i16(i16 %199) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !302
  %add190.i.i = add i16 %200, 1
  %201 = call i16 @llvm.bswap.i16(i16 %add190.i.i) #9
  %add.ptr192.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr192.i.i, i16 %201) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !303
  call void @arm_heavy_mb() #9
  %conv198.i.i = add i16 %197, 4
  %202 = call i16 @llvm.bswap.i16(i16 %conv198.i.i) #9
  %add.ptr199.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr199.i.i, i16 %202) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  call void @arm_heavy_mb() #9
  %203 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr199.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !305
  %add.ptr209.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr209.i.i, i16 %203) #9, !srcloc !244
  br label %for.inc258.i.i

do.body211.i.i:                                   ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !306
  call void @arm_heavy_mb() #9
  %add.ptr214.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 18
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr214.i.i, i16 -241) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !307
  call void @arm_heavy_mb() #9
  %add.ptr218.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 20
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr218.i.i, i16 -241) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !308
  call void @arm_heavy_mb() #9
  %add.ptr222.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 24
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr222.i.i, i16 16) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !309
  call void @arm_heavy_mb() #9
  %204 = trunc i32 %i.1351.i.i to i16
  %conv228.i.i = add i16 %204, 3
  %205 = call i16 @llvm.bswap.i16(i16 %conv228.i.i) #9
  %add.ptr229.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 26
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr229.i.i, i16 %205) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !310
  call void @arm_heavy_mb() #9
  %206 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr229.i.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !311
  %conv239.i.i = zext i8 %206 to i16
  %207 = shl nuw i16 %conv239.i.i, 8
  %add.ptr240.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 30
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr240.i.i, i16 %207) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !312
  call void @arm_heavy_mb() #9
  %add.ptr247.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 28
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr247.i.i, i16 %205) #9, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !313
  call void @arm_heavy_mb() #9
  %208 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr247.i.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !314
  %add.ptr257.i.i = getelementptr i8, ptr %add.ptr62.i.i, i32 32
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr257.i.i, i16 %208) #9, !srcloc !244
  br label %for.inc258.i.i

for.inc258.i.i:                                   ; preds = %do.body211.i.i, %do.body165.i.i, %do.body116.i.i, %do.body67.i.i, %for.body57.i.i.for.inc258.i.i_crit_edge
  %inc259.i.i = add nuw nsw i32 %i.1351.i.i, 1
  %incdec.ptr260.i.i = getelementptr %struct.moxa_port, ptr %port.1353.i.i, i32 1
  %209 = ptrtoint ptr %numPorts54.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %numPorts54.i.i, align 4
  %cmp55.i.i = icmp slt i32 %inc259.i.i, %210
  br i1 %cmp55.i.i, label %for.inc258.i.i.for.body57.i.i_crit_edge, label %for.inc258.i.i.if.end18_crit_edge

for.inc258.i.i.if.end18_crit_edge:                ; preds = %for.inc258.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.inc258.i.i.for.body57.i.i_crit_edge:          ; preds = %for.inc258.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i.i

moxa_load_fw.exit:                                ; preds = %for.end253.i.i.i.moxa_load_fw.exit_crit_edge, %if.then215.i.i.i.moxa_load_fw.exit_crit_edge, %for.end196.i.i.i.moxa_load_fw.exit_crit_edge, %for.end123.i.i.i.moxa_load_fw.exit_crit_edge, %do.end90.i.i.i.moxa_load_fw.exit_crit_edge, %for.end33.i.i.i.moxa_load_fw.exit_crit_edge, %do.end.i182.i, %moxa_load_320b.exit.i, %moxa_load_bios.exit.i, %if.then64.i, %if.then54.i, %if.then16.i, %if.then9.i, %if.then2.i, %if.then.i
  %ret.0.i = phi i32 [ -22, %if.then.i ], [ -22, %if.then2.i ], [ -22, %if.then9.i ], [ -22, %if.then16.i ], [ -22, %if.then54.i ], [ -22, %if.then64.i ], [ -5, %moxa_load_bios.exit.i ], [ -22, %moxa_load_320b.exit.i ], [ -5, %for.end253.i.i.i.moxa_load_fw.exit_crit_edge ], [ -5, %if.then215.i.i.i.moxa_load_fw.exit_crit_edge ], [ -5, %for.end196.i.i.i.moxa_load_fw.exit_crit_edge ], [ -5, %for.end123.i.i.i.moxa_load_fw.exit_crit_edge ], [ -5, %do.end90.i.i.i.moxa_load_fw.exit_crit_edge ], [ -22, %do.end.i182.i ], [ -5, %for.end33.i.i.i.moxa_load_fw.exit_crit_edge ]
  %call116.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %rsn.i) #12
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %lens.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rsn.i) #9
  %211 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %212) #9
  br label %err_free

if.end18:                                         ; preds = %for.inc258.i.i.if.end18_crit_edge, %sw.default.i187.i.if.end18_crit_edge, %for.body.i.i.if.end18_crit_edge, %sw.bb.i183.i.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %lens.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rsn.i) #9
  %213 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %214) #9
  call void @_raw_spin_lock_bh(ptr noundef nonnull @moxa_lock) #9
  %ready = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 3
  %215 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 1, ptr %ready, align 4
  %216 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @moxaTimer, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i75.not = icmp eq ptr %216, null
  br i1 %tobool.not.i.i75.not, label %if.then21, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %217 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %217, 2
  %call22 = call i32 @mod_timer(ptr noundef nonnull @moxaTimer, i32 noundef %add) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @moxa_lock) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %brd to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @moxa_boards to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %mul = shl nsw i32 %sub.ptr.div, 5
  %numPorts = getelementptr inbounds %struct.moxa_board_conf, ptr %brd, i32 0, i32 1
  %218 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp2581.not = icmp eq i32 %219, 0
  br i1 %cmp2581.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body26_crit_edge

if.end23.for.body26_crit_edge:                    ; preds = %if.end23
  br label %for.body26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end23.for.body26_crit_edge
  %i.182 = phi i32 [ %inc32, %for.body26.for.body26_crit_edge ], [ 0, %if.end23.for.body26_crit_edge ]
  %220 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.moxa_port, ptr %221, i32 %i.182
  %222 = load ptr, ptr @moxaDriver, align 4
  %add29 = add i32 %i.182, %mul
  %call30 = call ptr @tty_port_register_device(ptr noundef %arrayidx, ptr noundef %222, i32 noundef %add29, ptr noundef %dev) #9
  %inc32 = add nuw i32 %i.182, 1
  %223 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %numPorts, align 4
  %cmp25 = icmp ult i32 %inc32, %224
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.body26.cleanup_crit_edge

for.body26.cleanup_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

err_free:                                         ; preds = %moxa_load_fw.exit, %do.end11
  %ret.0 = phi i32 [ %call7, %do.end11 ], [ %ret.0.i, %moxa_load_fw.exit ]
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %err_free
  %i.283 = phi i32 [ 0, %err_free ], [ %inc41, %for.body36.for.body36_crit_edge ]
  %225 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ports, align 4
  %arrayidx38 = getelementptr %struct.moxa_port, ptr %226, i32 %i.283
  call void @tty_port_destroy(ptr noundef %arrayidx38) #9
  %inc41 = add nuw nsw i32 %i.283, 1
  %exitcond85.not = icmp eq i32 %inc41, 32
  br i1 %exitcond85.not, label %for.end42, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

for.end42:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ports, align 4
  call void @kfree(ptr noundef %228) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %for.body26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %for.end42 ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %for.body26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_carrier_raised(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %DCDState = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %DCDState to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %DCDState, align 4
  %conv = zext i8 %1 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_dtr_rts(ptr nocapture noundef %port, i32 noundef %onoff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not.i = icmp ne i32 %onoff, 0
  %spec.select.i = zext i1 %tobool.not.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not.i = icmp eq i32 %onoff, 0
  %0 = or i8 %spec.select.i, 2
  %mode.1.i = select i1 %tobool2.not.i, i8 %spec.select.i, i8 %0
  %lineCtrl.i = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %lineCtrl.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %mode.1.i, ptr %lineCtrl.i, align 1
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr.i, align 4
  %conv8.i = zext i8 %mode.1.i to i16
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext 7, i16 noundef zeroext %conv8.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_shutdown(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %1, i16 noundef zeroext 21, i16 noundef zeroext 0) #9
  tail call fastcc void @moxafunc(ptr noundef %1, i16 noundef zeroext 29, i16 noundef zeroext 1028) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !244
  tail call fastcc void @moxafunc(ptr noundef %1, i16 noundef zeroext 3, i16 noundef zeroext 1028) #9
  %2 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext 10, i16 noundef zeroext 2) #9
  %lowChkFlag.i = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 8
  %4 = ptrtoint ptr %lowChkFlag.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %lowChkFlag.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 10
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %entry.MoxaPortFlushData.exit_crit_edge, label %if.then.i.i

entry.MoxaPortFlushData.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortFlushData.exit

if.then.i.i:                                      ; preds = %entry
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #9, !srcloc !238
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %add.ptr10.i.i = getelementptr i8, ptr %3, i32 2
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i) #9, !srcloc !238
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  %add.ptr16.i.i = getelementptr i8, ptr %3, i32 18
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i.i) #9, !srcloc !238
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  %sub.i.i = sub i16 %10, %8
  %and23.i.i = and i16 %12, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %and23.i.i)
  %cmp.i.i = icmp ult i16 %and23.i.i, 55
  br i1 %cmp.i.i, label %if.then27.i.i, label %if.then.i.i.MoxaPortFlushData.exit_crit_edge

if.then.i.i.MoxaPortFlushData.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortFlushData.exit

if.then27.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext 16, i16 noundef zeroext 0) #9
  br label %MoxaPortFlushData.exit

MoxaPortFlushData.exit:                           ; preds = %if.then27.i.i, %if.then.i.i.MoxaPortFlushData.exit_crit_edge, %entry.MoxaPortFlushData.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxafunc(ptr noundef %ofsAddr, i16 noundef zeroext %cmd, i16 noundef zeroext %arg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @moxafunc_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !320
  tail call void @arm_heavy_mb() #9
  %0 = tail call i16 @llvm.bswap.i16(i16 %arg)
  %add.ptr = getelementptr i8, ptr %ofsAddr, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  tail call void @arm_heavy_mb() #9
  %1 = tail call i16 @llvm.bswap.i16(i16 %cmd)
  %add.ptr11 = getelementptr i8, ptr %ofsAddr, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %1) #9, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 50
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 0
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.body.i.moxa_wait_finish.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.body.i.moxa_wait_finish.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit

while.end.i:                                      ; preds = %while.cond.i
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12.not.i = icmp eq i16 %5, 0
  br i1 %cmp12.not.i, label %while.end.i.moxa_wait_finish.exit_crit_edge, label %if.then14.i

while.end.i.moxa_wait_finish.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit

if.then14.i:                                      ; preds = %while.end.i
  %call15.i = tail call i32 @___ratelimit(ptr noundef nonnull @moxa_wait_finish._rs, ptr noundef nonnull @__func__.moxa_wait_finish) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i, label %if.then14.i.moxa_wait_finish.exit_crit_edge, label %do.end.i

if.then14.i.moxa_wait_finish.exit_crit_edge:      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit

do.end.i:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %moxa_wait_finish.exit

moxa_wait_finish.exit:                            ; preds = %do.end.i, %if.then14.i.moxa_wait_finish.exit_crit_edge, %while.end.i.moxa_wait_finish.exit_crit_edge, %while.body.i.moxa_wait_finish.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @moxafunc_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_poll(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  %dst.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @moxa_lock) #9
  br label %for.body

for.body:                                         ; preds = %for.inc42.for.body_crit_edge, %entry
  %card.084 = phi i32 [ 0, %entry ], [ %inc43, %for.inc42.for.body_crit_edge ]
  %served.083 = phi i32 [ 0, %entry ], [ %served.1, %for.inc42.for.body_crit_edge ]
  %ready = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 3
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc42_crit_edge, label %if.end

for.body.for.inc42_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

if.end:                                           ; preds = %for.body
  %inc = add i32 %served.083, 1
  %intPend = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 7
  %2 = ptrtoint ptr %intPend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intPend, align 4
  %4 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2 = icmp eq i8 %4, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intTable = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 8
  %5 = ptrtoint ptr %intTable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intTable, align 4
  %intNdx = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 6
  %7 = ptrtoint ptr %intNdx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intNdx, align 4
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !325
  %conv10 = zext i8 %9 to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %conv10
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %ip.0 = phi ptr [ %add.ptr, %if.then4 ], [ null, %if.end.if.end11_crit_edge ]
  %numPorts = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 1
  %10 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1374.not = icmp eq i32 %11, 0
  br i1 %cmp1374.not, label %if.end11.for.end_crit_edge, label %for.body15.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body15.lr.ph:                                 ; preds = %if.end11
  %ports = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 4
  %tobool17.not = icmp eq ptr %ip.0, null
  br label %for.body15

for.body15:                                       ; preds = %moxa_poll_port.exit.for.body15_crit_edge, %for.body15.lr.ph
  %port.075 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc21, %moxa_poll_port.exit.for.body15_crit_edge ]
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %arrayidx16 = getelementptr %struct.moxa_port, ptr %13, i32 %port.075
  %add.ptr19 = getelementptr i16, ptr %ip.0, i32 %port.075
  %call.i = call ptr @tty_port_tty_get(ptr noundef %arrayidx16) #9
  %iflags.i.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx16, i32 0, i32 11
  %14 = ptrtoint ptr %iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %iflags.i.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  %tobool.not.i = icmp eq ptr %call.i, null
  %statusflags32.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 5
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body15
  %16 = ptrtoint ptr %statusflags32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %statusflags32.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.i = icmp eq i32 %18, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %tableAddr.i.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 2
  %19 = ptrtoint ptr %tableAddr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tableAddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !238
  %22 = call i16 @llvm.bswap.i16(i16 %21) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %add.ptr4.i.i = getelementptr i8, ptr %20, i32 6
  %23 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i.i) #9, !srcloc !238
  %24 = call i16 @llvm.bswap.i16(i16 %23) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %add.ptr10.i.i = getelementptr i8, ptr %20, i32 20
  %25 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i) #9, !srcloc !238
  %26 = call i16 @llvm.bswap.i16(i16 %25) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %conv.i.i = zext i16 %24 to i32
  %conv14.i.i = zext i16 %22 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv14.i.i
  %conv15.i.i = zext i16 %26 to i32
  %and.i.i = and i32 %sub.i.i, %conv15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i, label %if.then7.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef %statusflags32.i) #9
  call void @tty_wakeup(ptr noundef nonnull %call.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %statusflags32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %statusflags32.i, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not.i = icmp eq i32 %29, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true12.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true12.i:                                ; preds = %if.end.i
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stopped.i, align 4, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool13.not.i = icmp eq i8 %31, 0
  br i1 %tobool13.not.i, label %land.lhs.true14.i, label %land.lhs.true12.i.if.end20.i_crit_edge

land.lhs.true12.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true14.i:                                ; preds = %land.lhs.true12.i
  %tableAddr.i3.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 2
  %32 = ptrtoint ptr %tableAddr.i3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tableAddr.i3.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %33, i32 4
  %34 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i4.i) #9, !srcloc !238
  %35 = call i16 @llvm.bswap.i16(i16 %34) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %add.ptr4.i5.i = getelementptr i8, ptr %33, i32 6
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i5.i) #9, !srcloc !238
  %37 = call i16 @llvm.bswap.i16(i16 %36) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %add.ptr10.i6.i = getelementptr i8, ptr %33, i32 20
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i6.i) #9, !srcloc !238
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %conv.i7.i = zext i16 %37 to i32
  %conv14.i8.i = zext i16 %35 to i32
  %sub.i9.i = sub nsw i32 %conv.i7.i, %conv14.i8.i
  %conv15.i10.i = zext i16 %39 to i32
  %and.i11.i = and i32 %sub.i9.i, %conv15.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %and.i11.i)
  %cmp16.i = icmp ult i32 %and.i11.i, 257
  br i1 %cmp16.i, label %if.then18.i, label %land.lhs.true14.i.if.end20.i_crit_edge

land.lhs.true14.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then18.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 2, ptr noundef %statusflags32.i) #9
  call void @tty_wakeup(ptr noundef nonnull %call.i) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %land.lhs.true14.i.if.end20.i_crit_edge, %land.lhs.true12.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end20.i.if.end33.i_crit_edge, label %land.lhs.true22.i

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

land.lhs.true22.i:                                ; preds = %if.end20.i
  %flags.i.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 16
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i12.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i12.i)
  %tobool.i13.not.i = icmp eq i32 %and1.i.i12.i, 0
  br i1 %tobool.i13.not.i, label %land.lhs.true24.i, label %land.lhs.true22.i.if.end33.i_crit_edge

land.lhs.true22.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

land.lhs.true24.i:                                ; preds = %land.lhs.true22.i
  %tableAddr.i14.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 2
  %42 = ptrtoint ptr %tableAddr.i14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tableAddr.i14.i, align 4
  %44 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #9, !srcloc !238
  %45 = call i16 @llvm.bswap.i16(i16 %44) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  %add.ptr4.i15.i = getelementptr i8, ptr %43, i32 2
  %46 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i15.i) #9, !srcloc !238
  %47 = call i16 @llvm.bswap.i16(i16 %46) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr10.i16.i = getelementptr i8, ptr %43, i32 18
  %48 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i16.i) #9, !srcloc !238
  %49 = call i16 @llvm.bswap.i16(i16 %48) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  %conv.i17.i = zext i16 %47 to i32
  %conv14.i18.i = zext i16 %45 to i32
  %sub.i19.i = sub nsw i32 %conv.i17.i, %conv14.i18.i
  %conv15.i20.i = zext i16 %49 to i32
  %and.i21.i = and i32 %sub.i19.i, %conv15.i20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %cmp26.not.i = icmp eq i32 %and.i21.i, 0
  br i1 %cmp26.not.i, label %land.lhs.true24.i.if.end33.i_crit_edge, label %if.then28.i

land.lhs.true24.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %land.lhs.true24.i
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx16, i32 0, i32 1
  %50 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tty2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst.i.i) #9
  %52 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %dst.i.i, align 4, !annotation !234
  %53 = ptrtoint ptr %tableAddr.i14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tableAddr.i14.i, align 4
  %board.i.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 1
  %55 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board.i.i, align 4
  %basemem.i.i = getelementptr inbounds %struct.moxa_board_conf, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %basemem.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %basemem.i.i, align 4
  %59 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #9, !srcloc !238
  %60 = call i16 @llvm.bswap.i16(i16 %59) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  %add.ptr6.i.i = getelementptr i8, ptr %54, i32 2
  %61 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i.i) #9, !srcloc !238
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  %add.ptr12.i.i = getelementptr i8, ptr %54, i32 18
  %63 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i.i) #9, !srcloc !238
  %64 = call i16 @llvm.bswap.i16(i16 %63) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  %add.ptr18.i.i = getelementptr i8, ptr %54, i32 26
  %65 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18.i.i) #9, !srcloc !238
  %66 = call i16 @llvm.bswap.i16(i16 %65) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  %add.ptr24.i.i = getelementptr i8, ptr %54, i32 30
  %67 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr24.i.i) #9, !srcloc !238
  %68 = call i16 @llvm.bswap.i16(i16 %67) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  %conv.i23.i = zext i16 %62 to i32
  %conv28.i.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %60)
  %cmp.not.i.i = icmp ult i16 %62, %60
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i24.i = sub nsw i32 %conv.i23.i, %conv28.i.i
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv35.i.i = zext i16 %64 to i32
  %sub34.i.i = sub nsw i32 1, %conv28.i.i
  %add.i.i = add nsw i32 %sub34.i.i, %conv.i23.i
  %add36.i.i = add nsw i32 %add.i.i, %conv35.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %sub.i24.i, %cond.true.i.i ], [ %add36.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp37.i.i = icmp eq i32 %cond.i.i, 0
  br i1 %cmp37.i.i, label %cond.end.i.i.MoxaPortReadData.exit.i_crit_edge, label %if.end.i.i

cond.end.i.i.MoxaPortReadData.exit.i_crit_edge:   ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortReadData.exit.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  %index.i.i = getelementptr inbounds %struct.tty_struct, ptr %51, i32 0, i32 5
  %69 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.mon_str, ptr @moxaLog, i32 0, i32 1, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i, align 4
  %add39.i.i = add i32 %72, %cond.i.i
  store i32 %add39.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %67)
  %cmp42.i.i = icmp eq i16 %65, %67
  br i1 %cmp42.i.i, label %while.body.preheader.i.i, label %do.body99.lr.ph.i.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i
  %add.ptr47.i.i = getelementptr i8, ptr %54, i32 22
  %73 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr47.i.i) #9, !srcloc !238
  %74 = call i16 @llvm.bswap.i16(i16 %73) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @arm_heavy_mb() #9
  %add.ptr51.i.i = getelementptr i8, ptr %58, i32 8176
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51.i.i, i16 %65) #9, !srcloc !244
  %add.ptr54.i.i = getelementptr i8, ptr %58, i32 8192
  %conv55.i.i = zext i16 %74 to i32
  %add.ptr56.i.i = getelementptr i8, ptr %add.ptr54.i.i, i32 %conv55.i.i
  %conv68.i.i = zext i16 %64 to i32
  %add69.i.i = add nuw nsw i32 %conv68.i.i, 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %count.07.i.i = phi i32 [ %sub87.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %cond.i.i, %while.body.preheader.i.i ]
  %head.06.i.i = phi i16 [ %conv86.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %60, %while.body.preheader.i.i ]
  %conv57.i.i = zext i16 %head.06.i.i to i32
  %add.ptr58.i.i = getelementptr i8, ptr %add.ptr56.i.i, i32 %conv57.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %head.06.i.i)
  %cmp61.not.i.i = icmp ult i16 %62, %head.06.i.i
  %conv.pn.i.i = select i1 %cmp61.not.i.i, i32 %add69.i.i, i32 %conv.i23.i
  %cond73.i.i = sub nsw i32 %conv.pn.i.i, %conv57.i.i
  %75 = call i32 @llvm.umin.i32(i32 %cond73.i.i, i32 %count.07.i.i) #9
  %call82.i.i = call i32 @tty_prepare_flip_string(ptr noundef %arrayidx16, ptr noundef nonnull %dst.i.i, i32 noundef %75) #9
  %76 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dst.i.i, align 4
  call void @mmiocpy(ptr noundef %77, ptr noundef %add.ptr58.i.i, i32 noundef %call82.i.i) #9
  %78 = trunc i32 %call82.i.i to i16
  %79 = add i16 %head.06.i.i, %78
  %conv86.i.i = and i16 %79, %64
  %sub87.i.i = sub i32 %count.07.i.i, %call82.i.i
  %cmp52.not.i.i = icmp eq i32 %sub87.i.i, 0
  br i1 %cmp52.not.i.i, label %while.body.i.i.do.body138.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.do.body138.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body138.i.i

do.body99.lr.ph.i.i:                              ; preds = %if.end.i.i
  %and93.i.i = and i16 %60, 8191
  %80 = lshr i16 %60, 13
  %add90.i.i = add i16 %66, %80
  %add.ptr102.i.i = getelementptr i8, ptr %58, i32 8176
  %add.ptr103.i.i = getelementptr i8, ptr %58, i32 8192
  br label %do.body99.i.i

do.body99.i.i:                                    ; preds = %do.body99.i.i.do.body99.i.i_crit_edge, %do.body99.lr.ph.i.i
  %count.14.i.i = phi i32 [ %cond.i.i, %do.body99.lr.ph.i.i ], [ %sub117.i.i, %do.body99.i.i.do.body99.i.i_crit_edge ]
  %pageno.03.i.i = phi i16 [ %add90.i.i, %do.body99.lr.ph.i.i ], [ %pageno.1.i.i, %do.body99.i.i.do.body99.i.i_crit_edge ]
  %pageofs.02.i.i = phi i16 [ %and93.i.i, %do.body99.lr.ph.i.i ], [ %conv121.i.i, %do.body99.i.i.do.body99.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  call void @arm_heavy_mb() #9
  %81 = call i16 @llvm.bswap.i16(i16 %pageno.03.i.i) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102.i.i, i16 %81) #9, !srcloc !244
  %conv104.i.i = zext i16 %pageofs.02.i.i to i32
  %add.ptr105.i.i = getelementptr i8, ptr %add.ptr103.i.i, i32 %conv104.i.i
  %sub108.i.i = sub nuw nsw i32 8192, %conv104.i.i
  %82 = call i32 @llvm.umin.i32(i32 %sub108.i.i, i32 %count.14.i.i) #9
  %call116.i.i = call i32 @tty_prepare_flip_string(ptr noundef %arrayidx16, ptr noundef nonnull %dst.i.i, i32 noundef %82) #9
  %83 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dst.i.i, align 4
  call void @mmiocpy(ptr noundef %84, ptr noundef %add.ptr105.i.i, i32 noundef %call116.i.i) #9
  %sub117.i.i = sub i32 %count.14.i.i, %call116.i.i
  %85 = trunc i32 %call116.i.i to i16
  %86 = add i16 %pageofs.02.i.i, %85
  %conv121.i.i = and i16 %86, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv121.i.i)
  %cmp123.i.i = icmp eq i16 %conv121.i.i, 0
  %inc.i.i = add i16 %pageno.03.i.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %68)
  %cmp127.i.i = icmp eq i16 %inc.i.i, %68
  %spec.select.i.i = select i1 %cmp127.i.i, i16 %66, i16 %inc.i.i
  %pageno.1.i.i = select i1 %cmp123.i.i, i16 %spec.select.i.i, i16 %pageno.03.i.i
  %cmp96.not.i.i = icmp eq i32 %sub117.i.i, 0
  br i1 %cmp96.not.i.i, label %while.end131.i.i, label %do.body99.i.i.do.body99.i.i_crit_edge

do.body99.i.i.do.body99.i.i_crit_edge:            ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99.i.i

while.end131.i.i:                                 ; preds = %do.body99.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = trunc i32 %cond.i.i to i16
  %88 = add i16 %60, %87
  %conv136.i.i = and i16 %88, %64
  br label %do.body138.i.i

do.body138.i.i:                                   ; preds = %while.end131.i.i, %while.body.i.i.do.body138.i.i_crit_edge
  %head.1.i.i = phi i16 [ %conv136.i.i, %while.end131.i.i ], [ %conv86.i.i, %while.body.i.i.do.body138.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  call void @arm_heavy_mb() #9
  %89 = call i16 @llvm.bswap.i16(i16 %head.1.i.i) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %89) #9, !srcloc !244
  %add.ptr144.i.i = getelementptr i8, ptr %54, i32 10
  %90 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr144.i.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %91 = and i8 %90, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i.i, label %do.body138.i.i.MoxaPortReadData.exit.i_crit_edge, label %if.then150.i.i

do.body138.i.i.MoxaPortReadData.exit.i_crit_edge: ; preds = %do.body138.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortReadData.exit.i

if.then150.i.i:                                   ; preds = %do.body138.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @moxaLowWaterChk, align 4
  %lowChkFlag.i.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 8
  %92 = ptrtoint ptr %lowChkFlag.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %lowChkFlag.i.i, align 2
  br label %MoxaPortReadData.exit.i

MoxaPortReadData.exit.i:                          ; preds = %if.then150.i.i, %do.body138.i.i.MoxaPortReadData.exit.i_crit_edge, %cond.end.i.i.MoxaPortReadData.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst.i.i) #9
  call void @tty_flip_buffer_push(ptr noundef %arrayidx16) #9
  br label %if.end33.i

if.else.i:                                        ; preds = %for.body15
  call void @_clear_bit(i32 noundef 3, ptr noundef %statusflags32.i) #9
  %tableAddr.i25.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 2
  %93 = ptrtoint ptr %tableAddr.i25.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tableAddr.i25.i, align 4
  call fastcc void @moxafunc(ptr noundef %94, i16 noundef zeroext 10, i16 noundef zeroext 0) #9
  %lowChkFlag.i27.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 8
  %95 = ptrtoint ptr %lowChkFlag.i27.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %lowChkFlag.i27.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 10
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %97 = and i8 %96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.if.end33.i_crit_edge, label %if.then.i.i.i

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %98 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %94) #9, !srcloc !238
  %99 = call i16 @llvm.bswap.i16(i16 %98) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %add.ptr10.i.i.i = getelementptr i8, ptr %94, i32 2
  %100 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i.i) #9, !srcloc !238
  %101 = call i16 @llvm.bswap.i16(i16 %100) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  %add.ptr16.i.i.i = getelementptr i8, ptr %94, i32 18
  %102 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i.i.i) #9, !srcloc !238
  %103 = call i16 @llvm.bswap.i16(i16 %102) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  %sub.i.i.i = sub i16 %101, %99
  %and23.i.i.i = and i16 %103, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %and23.i.i.i)
  %cmp.i.i.i = icmp ult i16 %and23.i.i.i, 55
  br i1 %cmp.i.i.i, label %if.then27.i.i.i, label %if.then.i.i.i.if.end33.i_crit_edge

if.then.i.i.i.if.end33.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then27.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @moxafunc(ptr noundef %94, i16 noundef zeroext 16, i16 noundef zeroext 0) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i.i.i, %if.then.i.i.i.if.end33.i_crit_edge, %if.else.i.if.end33.i_crit_edge, %MoxaPortReadData.exit.i, %land.lhs.true24.i.if.end33.i_crit_edge, %land.lhs.true22.i.if.end33.i_crit_edge, %if.end20.i.if.end33.i_crit_edge
  br i1 %tobool17.not, label %if.end33.i.moxa_poll_port.exit_crit_edge, label %if.end36.i

if.end33.i.moxa_poll_port.exit_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_poll_port.exit

if.end36.i:                                       ; preds = %if.end33.i
  %104 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #9, !srcloc !238
  %105 = call i16 @llvm.bswap.i16(i16 %104) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  %conv39.i = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp40.i = icmp eq i16 %104, 0
  br i1 %cmp40.i, label %if.end36.i.moxa_poll_port.exit_crit_edge, label %do.body.i

if.end36.i.moxa_poll_port.exit_crit_edge:         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_poll_port.exit

do.body.i:                                        ; preds = %if.end36.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 0) #9, !srcloc !244
  %tableAddr.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 2
  %106 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tableAddr.i, align 4
  %and.i = and i32 %conv39.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool45.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool45.not.i, label %do.body.i.if.end59.i_crit_edge, label %do.body47.i

do.body.i.if.end59.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

do.body47.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %107, i32 8
  %108 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  %109 = and i16 %108, -513
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %109) #9, !srcloc !244
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.body47.i, %do.body.i.if.end59.i_crit_edge
  br i1 %tobool.i.not.i, label %if.end59.i.moxa_poll_port.exit_crit_edge, label %if.end62.i

if.end59.i.moxa_poll_port.exit_crit_edge:         ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_poll_port.exit

if.end62.i:                                       ; preds = %if.end59.i
  %and66.i = and i32 %conv39.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool67.not.i
  br i1 %or.cond.i, label %if.end62.i.if.end75.i_crit_edge, label %land.lhs.true68.i

if.end62.i.if.end75.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

land.lhs.true68.i:                                ; preds = %if.end62.i
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 13
  %110 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %termios.i, align 4
  %and69.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %land.lhs.true68.i.if.end75.i_crit_edge

land.lhs.true68.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then71.i:                                      ; preds = %land.lhs.true68.i
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %arrayidx16, i32 0, i32 8
  %112 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tail.i.i, align 4
  %flags.i28.i = getelementptr inbounds %struct.tty_buffer, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %flags.i28.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags.i28.i, align 4
  %and.i29.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i30.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i.i, label %if.then71.i.if.end12.i.i_crit_edge

if.then71.i.if.end12.i.i_crit_edge:               ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then71.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %113, i32 0, i32 1
  %116 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %113, i32 0, i32 2
  %118 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp3.i.i = icmp slt i32 %117, %119
  br i1 %cmp3.i.i, label %if.end.i33.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.end.i33.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %113, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %117
  %add.ptr.i.i31.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %119
  %120 = ptrtoint ptr %add.ptr.i.i31.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %add.ptr.i.i31.i, align 1
  %121 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %used.i.i, align 4
  %inc.i32.i = add i32 %122, 1
  store i32 %inc.i32.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %122
  %123 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %tty_insert_flip_char.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then71.i.if.end12.i.i_crit_edge
  %call13.i.i = call i32 @__tty_insert_flip_char(ptr noundef %arrayidx16, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.i:                      ; preds = %if.end12.i.i, %if.end.i33.i
  call void @tty_flip_buffer_push(ptr noundef %arrayidx16) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %tty_insert_flip_char.exit.i, %land.lhs.true68.i.if.end75.i_crit_edge, %if.end62.i.if.end75.i_crit_edge
  %and77.i = and i32 %conv39.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.end75.i.moxa_poll_port.exit_crit_edge, label %if.then79.i

if.end75.i.moxa_poll_port.exit_crit_edge:         ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_poll_port.exit

if.then79.i:                                      ; preds = %if.end75.i
  %add.ptr82.i = getelementptr i8, ptr %107, i32 10
  %124 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82.i) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %lock.i.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx16, i32 0, i32 5
  %call4.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %DCDState.i.i = getelementptr %struct.moxa_port, ptr %13, i32 %port.075, i32 6
  %125 = ptrtoint ptr %DCDState.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %DCDState.i.i, align 4
  %.lobit.i = lshr i8 %124, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %.lobit.i)
  %cmp9.not.i.i = icmp eq i8 %126, %.lobit.i
  br i1 %cmp9.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.i34.i = icmp slt i8 %124, 0
  %127 = ptrtoint ptr %DCDState.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.lobit.i, ptr %DCDState.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i) #9
  br i1 %tobool.i34.i, label %if.then.i.i.moxa_poll_port.exit_crit_edge, label %if.then15.i.i

if.then.i.i.moxa_poll_port.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_poll_port.exit

if.then15.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @tty_port_tty_hangup(ptr noundef %arrayidx16, i1 noundef zeroext true) #9
  br label %moxa_poll_port.exit

if.else.i.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call4.i.i) #9
  br label %moxa_poll_port.exit

moxa_poll_port.exit:                              ; preds = %if.else.i.i, %if.then15.i.i, %if.then.i.i.moxa_poll_port.exit_crit_edge, %if.end75.i.moxa_poll_port.exit_crit_edge, %if.end59.i.moxa_poll_port.exit_crit_edge, %if.end36.i.moxa_poll_port.exit_crit_edge, %if.end33.i.moxa_poll_port.exit_crit_edge
  call void @tty_kref_put(ptr noundef %call.i) #9
  %inc21 = add nuw i32 %port.075, 1
  %128 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %numPorts, align 4
  %cmp13 = icmp ult i32 %inc21, %129
  br i1 %cmp13, label %moxa_poll_port.exit.for.body15_crit_edge, label %moxa_poll_port.exit.for.end_crit_edge

moxa_poll_port.exit.for.end_crit_edge:            ; preds = %moxa_poll_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

moxa_poll_port.exit.for.body15_crit_edge:         ; preds = %moxa_poll_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.end:                                          ; preds = %moxa_poll_port.exit.for.end_crit_edge, %if.end11.for.end_crit_edge
  %tobool22.not = icmp eq ptr %ip.0, null
  br i1 %tobool22.not, label %for.end.if.end25_crit_edge, label %do.body

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  call void @arm_heavy_mb() #9
  %130 = ptrtoint ptr %intPend to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %intPend, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %131, i8 0) #9, !srcloc !236
  br label %if.end25

if.end25:                                         ; preds = %do.body, %for.end.if.end25_crit_edge
  %.b = load i1, ptr @moxaLowWaterChk, align 4
  br i1 %.b, label %if.then27, label %if.end25.for.inc42_crit_edge

if.end25.for.inc42_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

if.then27:                                        ; preds = %if.end25
  %132 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp3180.not = icmp eq i32 %133, 0
  br i1 %cmp3180.not, label %if.then27.for.inc42_crit_edge, label %for.body33.preheader

if.then27.for.inc42_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

for.body33.preheader:                             ; preds = %if.then27
  %ports28 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %card.084, i32 4
  %134 = ptrtoint ptr %ports28 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ports28, align 4
  br label %for.body33

for.body33:                                       ; preds = %for.inc38.for.body33_crit_edge, %for.body33.preheader
  %p.082 = phi ptr [ %incdec.ptr, %for.inc38.for.body33_crit_edge ], [ %135, %for.body33.preheader ]
  %port.181 = phi i32 [ %inc39, %for.inc38.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %lowChkFlag = getelementptr inbounds %struct.moxa_port, ptr %p.082, i32 0, i32 8
  %136 = ptrtoint ptr %lowChkFlag to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %lowChkFlag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool34.not = icmp eq i8 %137, 0
  br i1 %tobool34.not, label %for.body33.for.inc38_crit_edge, label %if.then35

for.body33.for.inc38_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

if.then35:                                        ; preds = %for.body33
  %138 = ptrtoint ptr %lowChkFlag to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %lowChkFlag, align 2
  %tableAddr = getelementptr inbounds %struct.moxa_port, ptr %p.082, i32 0, i32 2
  %139 = ptrtoint ptr %tableAddr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %tableAddr, align 4
  %add.ptr.i70 = getelementptr i8, ptr %140, i32 10
  %141 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i70) #9, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %142 = and i8 %141, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i71 = icmp eq i8 %142, 0
  br i1 %tobool.not.i71, label %if.then35.for.inc38_crit_edge, label %if.then.i73

if.then35.for.inc38_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

if.then.i73:                                      ; preds = %if.then35
  %143 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %140) #9, !srcloc !238
  %144 = call i16 @llvm.bswap.i16(i16 %143) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %add.ptr10.i = getelementptr i8, ptr %140, i32 2
  %145 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !238
  %146 = call i16 @llvm.bswap.i16(i16 %145) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  %add.ptr16.i = getelementptr i8, ptr %140, i32 18
  %147 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #9, !srcloc !238
  %148 = call i16 @llvm.bswap.i16(i16 %147) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  %sub.i = sub i16 %146, %144
  %and23.i = and i16 %148, %sub.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %and23.i)
  %cmp.i72 = icmp ult i16 %and23.i, 55
  br i1 %cmp.i72, label %if.then27.i, label %if.then.i73.for.inc38_crit_edge

if.then.i73.for.inc38_crit_edge:                  ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

if.then27.i:                                      ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @moxafunc(ptr noundef %140, i16 noundef zeroext 16, i16 noundef zeroext 0) #9
  br label %for.inc38

for.inc38:                                        ; preds = %if.then27.i, %if.then.i73.for.inc38_crit_edge, %if.then35.for.inc38_crit_edge, %for.body33.for.inc38_crit_edge
  %inc39 = add nuw i32 %port.181, 1
  %incdec.ptr = getelementptr %struct.moxa_port, ptr %p.082, i32 1
  %149 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %numPorts, align 4
  %cmp31 = icmp ult i32 %inc39, %150
  br i1 %cmp31, label %for.inc38.for.body33_crit_edge, label %for.inc38.for.inc42_crit_edge

for.inc38.for.inc42_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc42

for.inc38.for.body33_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.inc42:                                        ; preds = %for.inc38.for.inc42_crit_edge, %if.then27.for.inc42_crit_edge, %if.end25.for.inc42_crit_edge, %for.body.for.inc42_crit_edge
  %served.1 = phi i32 [ %inc, %if.end25.for.inc42_crit_edge ], [ %served.083, %for.body.for.inc42_crit_edge ], [ %inc, %if.then27.for.inc42_crit_edge ], [ %inc, %for.inc38.for.inc42_crit_edge ]
  %inc43 = add nuw nsw i32 %card.084, 1
  %exitcond.not = icmp eq i32 %inc43, 4
  br i1 %exitcond.not, label %for.end44, label %for.inc42.for.body_crit_edge

for.inc42.for.body_crit_edge:                     ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end44:                                        ; preds = %for.inc42
  store i1 false, ptr @moxaLowWaterChk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %served.1)
  %tobool45.not = icmp eq i32 %served.1, 0
  br i1 %tobool45.not, label %for.end44.if.end48_crit_edge, label %if.then46

for.end44.if.end48_crit_edge:                     ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %151, 2
  %call47 = call i32 @mod_timer(ptr noundef nonnull @moxaTimer, i32 noundef %add) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.end44.if.end48_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @moxa_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_prepare_flip_string(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_link_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_open(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp eq i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  %not.call = xor i1 %call, true
  %cond = sext i1 %not.call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @moxa_openlock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %.frozen = freeze i32 %1
  %div = sdiv i32 %.frozen, 32
  %ready = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %div, i32 3
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %4 = mul i32 %div, 32
  %rem.decomposed = sub i32 %.frozen, %4
  %numPorts = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %div, i32 1
  %5 = ptrtoint ptr %numPorts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numPorts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %6)
  %cmp7.not = icmp slt i32 %rem.decomposed, %6
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %ports = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %div, i32 4
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports, align 4
  %arrayidx11 = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed
  %count = getelementptr inbounds %struct.tty_port, ptr %arrayidx11, i32 0, i32 7
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %count, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx11, ptr %driver_data, align 4
  tail call void @tty_port_tty_set(ptr noundef %arrayidx11, ptr noundef %tty) #9
  %mutex = getelementptr inbounds %struct.tty_port, ptr %arrayidx11, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %iflags.i = getelementptr inbounds %struct.tty_port, ptr %arrayidx11, i32 0, i32 11
  %12 = ptrtoint ptr %iflags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %iflags.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then17, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end9
  %statusflags = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed, i32 5
  %14 = ptrtoint ptr %statusflags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %statusflags, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  tail call fastcc void @moxa_set_tty_param(ptr noundef %tty, ptr noundef %termios)
  %lineCtrl.i = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed, i32 7
  %15 = ptrtoint ptr %lineCtrl.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %lineCtrl.i, align 1
  %tableAddr.i = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed, i32 2
  %16 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %17, i16 noundef zeroext 7, i16 noundef zeroext 3) #9
  %18 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tableAddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %19, i32 54
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 2) #9, !srcloc !244
  %board.i = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed, i32 1
  %20 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %.off.i = add i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.i, label %do.body4.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @moxafunc(ptr noundef %19, i16 noundef zeroext 19, i16 noundef zeroext 0) #9
  br label %MoxaPortEnable.exit

do.body4.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %add.ptr7.i = getelementptr i8, ptr %19, i32 8
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  %25 = or i16 %24, 2048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %25) #9, !srcloc !244
  br label %MoxaPortEnable.exit

MoxaPortEnable.exit:                              ; preds = %do.body4.i, %if.then.i
  tail call fastcc void @moxafunc(ptr noundef %19, i16 noundef zeroext 20, i16 noundef zeroext 1028) #9
  tail call fastcc void @moxafunc(ptr noundef %19, i16 noundef zeroext 10, i16 noundef zeroext 2) #9
  tail call fastcc void @moxafunc(ptr noundef %19, i16 noundef zeroext 2, i16 noundef zeroext 1028) #9
  %call11.i = tail call fastcc i32 @MoxaPortLineStatus(ptr noundef %arrayidx11) #9
  %type = getelementptr %struct.moxa_port, ptr %8, i32 %rem.decomposed, i32 3
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp18.not = icmp eq i32 %27, 4
  %28 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tableAddr.i, align 4
  %..i = select i1 %cmp18.not, i16 3, i16 0
  %.5.i = select i1 %cmp18.not, i16 16, i16 1
  tail call fastcc void @moxafunc(ptr noundef %29, i16 noundef zeroext 54, i16 noundef zeroext %..i) #9
  tail call fastcc void @moxafunc(ptr noundef %29, i16 noundef zeroext 55, i16 noundef zeroext %.5.i) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %iflags.i) #9
  br label %if.end20

if.end20:                                         ; preds = %MoxaPortEnable.exit, %if.end9.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  %call24 = tail call i32 @tty_port_block_til_ready(ptr noundef %arrayidx11, ptr noundef %tty, ptr noundef %filp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then8, %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ -19, %if.then8 ], [ %call24, %if.end20 ], [ -19, %if.then5 ], [ -512, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_close(ptr noundef %tty, ptr noundef %filp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %cflag = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cflag, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @moxa_lock) #9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tableAddr.i, align 4
  %board.i = getelementptr inbounds %struct.moxa_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board.i, align 4
  %basemem.i = getelementptr inbounds %struct.moxa_board_conf, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %basemem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %basemem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  %add.ptr4.i = getelementptr i8, ptr %5, i32 28
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #9, !srcloc !238
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %add.ptr10.i = getelementptr i8, ptr %5, i32 32
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !238
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %add.ptr16.i = getelementptr i8, ptr %5, i32 6
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #9, !srcloc !238
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  %add.ptr22.i = getelementptr i8, ptr %5, i32 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22.i) #9, !srcloc !238
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %conv.i = zext i16 %19 to i32
  %conv26.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %17)
  %cmp.i = icmp ugt i16 %19, %17
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %20 = xor i32 %conv26.i, -1
  %sub30.i = add nsw i32 %conv.i, %20
  br label %cond.end.i

cond.false.i:                                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %conv34.i = zext i16 %11 to i32
  %sub33.i = sub nsw i32 %conv34.i, %conv26.i
  %add.i = add nsw i32 %sub33.i, %conv.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub30.i, %cond.true.i ], [ %add.i, %cond.false.i ]
  %21 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %count) #9
  %tty38.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %tty38.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty38.i, align 4
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.mon_str, ptr @moxaLog, i32 0, i32 2, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add39.i = add i32 %27, %21
  store i32 %add39.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp42.i = icmp eq i16 %12, %14
  br i1 %cmp42.i, label %if.then44.i, label %if.else85.i

if.then44.i:                                      ; preds = %cond.end.i
  %add.ptr47.i = getelementptr i8, ptr %5, i32 24
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr47.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  tail call void @arm_heavy_mb() #9
  %add.ptr51.i = getelementptr i8, ptr %9, i32 8176
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51.i, i16 %12) #9, !srcloc !244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp52.not202.i = icmp eq i32 %21, 0
  br i1 %cmp52.not202.i, label %if.then44.i.MoxaPortWriteData.exit_crit_edge, label %while.body.lr.ph.i

if.then44.i.MoxaPortWriteData.exit_crit_edge:     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortWriteData.exit

while.body.lr.ph.i:                               ; preds = %if.then44.i
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #9
  %conv63.i = zext i16 %11 to i32
  %add64.i = add nuw nsw i32 %conv63.i, 1
  %add.ptr74.i = getelementptr i8, ptr %9, i32 8192
  %conv75.i = zext i16 %29 to i32
  %add.ptr76.i = getelementptr i8, ptr %add.ptr74.i, i32 %conv75.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buffer.addr.0205.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr79.i, %while.body.i.while.body.i_crit_edge ]
  %c.1204.i = phi i32 [ %21, %while.body.lr.ph.i ], [ %sub84.i, %while.body.i.while.body.i_crit_edge ]
  %tail.0203.i = phi i16 [ %17, %while.body.lr.ph.i ], [ %conv83.i, %while.body.i.while.body.i_crit_edge ]
  %conv55.i = zext i16 %tail.0203.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %tail.0203.i)
  %cmp56.i = icmp ugt i16 %19, %tail.0203.i
  %30 = xor i32 %conv55.i, -1
  %sub62.i = add nsw i32 %30, %conv.i
  %sub66.i = sub nsw i32 %add64.i, %conv55.i
  %len.addr.0.i = select i1 %cmp56.i, i32 %sub62.i, i32 %sub66.i
  %31 = tail call i32 @llvm.umin.i32(i32 %c.1204.i, i32 %len.addr.0.i) #9
  %add.ptr78.i = getelementptr i8, ptr %add.ptr76.i, i32 %conv55.i
  tail call void @mmiocpy(ptr noundef %add.ptr78.i, ptr noundef %buffer.addr.0205.i, i32 noundef %31) #9
  %add.ptr79.i = getelementptr i8, ptr %buffer.addr.0205.i, i32 %31
  %32 = trunc i32 %31 to i16
  %33 = add i16 %tail.0203.i, %32
  %conv83.i = and i16 %33, %11
  %sub84.i = sub i32 %c.1204.i, %31
  %cmp52.not.i = icmp eq i32 %sub84.i, 0
  br i1 %cmp52.not.i, label %while.body.i.MoxaPortWriteData.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.MoxaPortWriteData.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortWriteData.exit

if.else85.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp94.not197.i = icmp eq i32 %21, 0
  br i1 %cmp94.not197.i, label %if.else85.i.while.end119.i_crit_edge, label %while.body96.lr.ph.i

if.else85.i.while.end119.i_crit_edge:             ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end119.i

while.body96.lr.ph.i:                             ; preds = %if.else85.i
  %and91.i = and i16 %17, 8191
  %phi.cast.i = zext i16 %and91.i to i32
  %34 = lshr i16 %17, 13
  %add88.i = add i16 %34, %13
  %add.ptr107.i = getelementptr i8, ptr %9, i32 8176
  %add.ptr108.i = getelementptr i8, ptr %9, i32 8192
  %sub98.peel.i = sub nuw nsw i32 8192, %phi.cast.i
  %35 = tail call i32 @llvm.umin.i32(i32 %sub98.peel.i, i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %conv106.peel.i = trunc i16 %add88.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107.i, i8 %conv106.peel.i) #9, !srcloc !236
  %add.ptr110.peel.i = getelementptr i8, ptr %add.ptr108.i, i32 %phi.cast.i
  tail call void @mmiocpy(ptr noundef %add.ptr110.peel.i, ptr noundef %buf, i32 noundef %35) #9
  %sub118.peel.i = sub i32 %21, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub118.peel.i)
  %cmp94.not.peel.i = icmp eq i32 %sub118.peel.i, 0
  br i1 %cmp94.not.peel.i, label %while.body96.lr.ph.i.while.end119.i_crit_edge, label %while.body96.peel.next.i

while.body96.lr.ph.i.while.end119.i_crit_edge:    ; preds = %while.body96.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end119.i

while.body96.peel.next.i:                         ; preds = %while.body96.lr.ph.i
  %inc.peel.i = add i16 %add88.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.peel.i, i16 %15)
  %cmp114.peel.i = icmp eq i16 %inc.peel.i, %15
  %pageno.1.peel.i = select i1 %cmp114.peel.i, i16 %13, i16 %inc.peel.i
  %add.ptr111.peel.i = getelementptr i8, ptr %buf, i32 %35
  br label %while.body96.i

while.body96.i:                                   ; preds = %while.body96.i.while.body96.i_crit_edge, %while.body96.peel.next.i
  %buffer.addr.1201.i = phi ptr [ %add.ptr111.peel.i, %while.body96.peel.next.i ], [ %add.ptr111.i, %while.body96.i.while.body96.i_crit_edge ]
  %c.2200.i = phi i32 [ %sub118.peel.i, %while.body96.peel.next.i ], [ %sub118.i, %while.body96.i.while.body96.i_crit_edge ]
  %pageno.0199.i = phi i16 [ %pageno.1.peel.i, %while.body96.peel.next.i ], [ %pageno.1.i, %while.body96.i.while.body96.i_crit_edge ]
  %36 = tail call i32 @llvm.umin.i32(i32 %c.2200.i, i32 8192) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %conv106.i = trunc i16 %pageno.0199.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107.i, i8 %conv106.i) #9, !srcloc !236
  tail call void @mmiocpy(ptr noundef %add.ptr108.i, ptr noundef %buffer.addr.1201.i, i32 noundef %36) #9
  %add.ptr111.i = getelementptr i8, ptr %buffer.addr.1201.i, i32 %36
  %inc.i = add i16 %pageno.0199.i, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %15)
  %cmp114.i = icmp eq i16 %inc.i, %15
  %pageno.1.i = select i1 %cmp114.i, i16 %13, i16 %inc.i
  %sub118.i = sub i32 %c.2200.i, %36
  %cmp94.not.i = icmp eq i32 %sub118.i, 0
  br i1 %cmp94.not.i, label %while.body96.i.while.end119.i_crit_edge, label %while.body96.i.while.body96.i_crit_edge, !llvm.loop !360

while.body96.i.while.body96.i_crit_edge:          ; preds = %while.body96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body96.i

while.body96.i.while.end119.i_crit_edge:          ; preds = %while.body96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end119.i

while.end119.i:                                   ; preds = %while.body96.i.while.end119.i_crit_edge, %while.body96.lr.ph.i.while.end119.i_crit_edge, %if.else85.i.while.end119.i_crit_edge
  %37 = trunc i32 %21 to i16
  %38 = add i16 %17, %37
  %conv124.i = and i16 %38, %11
  br label %MoxaPortWriteData.exit

MoxaPortWriteData.exit:                           ; preds = %while.end119.i, %while.body.i.MoxaPortWriteData.exit_crit_edge, %if.then44.i.MoxaPortWriteData.exit_crit_edge
  %tail.1.i = phi i16 [ %conv124.i, %while.end119.i ], [ %17, %if.then44.i.MoxaPortWriteData.exit_crit_edge ], [ %conv83.i, %while.body.i.MoxaPortWriteData.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  %39 = tail call i16 @llvm.bswap.i16(i16 %tail.1.i) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16.i, i16 %39) #9, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %add.ptr133.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr133.i, i8 1) #9, !srcloc !236
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @moxa_lock, i32 noundef %call3) #9
  %statusflags = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %statusflags) #9
  br label %cleanup

cleanup:                                          ; preds = %MoxaPortWriteData.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %MoxaPortWriteData.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_write_room(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !329
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tableAddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  %add.ptr4.i = getelementptr i8, ptr %5, i32 6
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #9, !srcloc !238
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  %add.ptr10.i = getelementptr i8, ptr %5, i32 20
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !238
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %conv.i = zext i16 %11 to i32
  %conv14.i = zext i16 %9 to i32
  %conv15.i = zext i16 %7 to i32
  %12 = xor i32 %conv14.i, -1
  %sub.not.i = add nsw i32 %12, %conv15.i
  %sub17.i = and i32 %sub.not.i, %conv.i
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub17.i, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_chars_in_buffer(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %add.ptr4.i = getelementptr i8, ptr %3, i32 6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #9, !srcloc !238
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %add.ptr10.i = getelementptr i8, ptr %3, i32 20
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !238
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %conv.i = zext i16 %7 to i32
  %conv14.i = zext i16 %5 to i32
  %sub.i = sub nsw i32 %conv.i, %conv14.i
  %conv15.i = zext i16 %9 to i32
  %and.i = and i32 %sub.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %statusflags = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %statusflags) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %tmp = alloca %struct.moxaq_str, align 8
  %tmp60 = alloca %struct.mxser_mstatus, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %4)
  %cmp = icmp eq i32 %4, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %cmd, label %if.then.cleanup116_crit_edge [
    i32 1047, label %if.then.sw.bb_crit_edge
    i32 1051, label %if.then.sw.bb13_crit_edge
    i32 1089, label %if.then.sw.bb58_crit_edge
  ]

if.then.sw.bb58_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.then.sw.bb13_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.cleanup116_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else.cleanup116_crit_edge, label %if.end8

if.else.cleanup116_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.end8:                                          ; preds = %if.else
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cmd, label %if.end8.cleanup116_crit_edge [
    i32 1047, label %if.end8.sw.bb_crit_edge
    i32 1052, label %sw.bb12
    i32 1051, label %if.end8.sw.bb13_crit_edge
    i32 1026, label %sw.bb36
    i32 1025, label %sw.bb41
    i32 1089, label %if.end8.sw.bb58_crit_edge
  ]

if.end8.sw.bb58_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.end8.sw.bb13_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end8.cleanup116_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.then.sw.bb_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  store i32 %7, ptr @moxaLog, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.cleanup116_crit_edge, label %if.end.i.i

sw.bb.cleanup116_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.end.i.i:                                       ; preds = %sw.bb
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 1028, i32 -1226833920) #14, !srcloc !367
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup116_crit_edge

if.end.i.i.cleanup116_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @moxaLog, i32 noundef 1028) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull @moxaLog, i32 noundef 1028) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool9.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %cleanup116

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %9 = icmp ugt i32 %arg, 2
  br i1 %9, label %sw.bb12.cleanup116_crit_edge, label %if.end.i

sw.bb12.cleanup116_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.end.i:                                         ; preds = %sw.bb12
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tableAddr.i, align 4
  %conv.i = trunc i32 %arg to i16
  tail call fastcc void @moxafunc(ptr noundef %11, i16 noundef zeroext 10, i16 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp2.not.i = icmp eq i32 %arg, 1
  br i1 %cmp2.not.i, label %if.end.i.cleanup116_crit_edge, label %if.then4.i

if.end.i.cleanup116_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.then4.i:                                       ; preds = %if.end.i
  %lowChkFlag.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %lowChkFlag.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %lowChkFlag.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 10
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #9, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.then4.i.cleanup116_crit_edge, label %if.then.i.i189

if.then4.i.cleanup116_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.then.i.i189:                                   ; preds = %if.then4.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #9, !srcloc !238
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !317
  %add.ptr10.i.i = getelementptr i8, ptr %11, i32 2
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i.i) #9, !srcloc !238
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  %add.ptr16.i.i = getelementptr i8, ptr %11, i32 18
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i.i) #9, !srcloc !238
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  %sub.i.i = sub i16 %18, %16
  %and23.i.i = and i16 %20, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %and23.i.i)
  %cmp.i.i188 = icmp ult i16 %and23.i.i, 55
  br i1 %cmp.i.i188, label %if.then27.i.i, label %if.then.i.i189.cleanup116_crit_edge

if.then.i.i189.cleanup116_crit_edge:              ; preds = %if.then.i.i189
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup116

if.then27.i.i:                                    ; preds = %if.then.i.i189
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @moxafunc(ptr noundef %11, i16 noundef zeroext 16, i16 noundef zeroext 0) #9
  br label %cleanup116

sw.bb13:                                          ; preds = %if.end8.sw.bb13_crit_edge, %if.then.sw.bb13_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #9
  %21 = getelementptr inbounds %struct.moxaq_str, ptr %tmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %sw.bb13
  %argm.0237 = phi ptr [ %2, %sw.bb13 ], [ %incdec.ptr28, %for.inc29.for.body_crit_edge ]
  %i.0236 = phi i32 [ 0, %sw.bb13 ], [ %inc30, %for.inc29.for.body_crit_edge ]
  %ports = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.0236, i32 4
  %22 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports, align 4
  %ready = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i.0236, i32 3
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body
  %argm.1235 = phi ptr [ %argm.0237, %for.body ], [ %incdec.ptr28, %for.inc.for.body17_crit_edge ]
  %p.0233 = phi ptr [ %23, %for.body ], [ %incdec.ptr, %for.inc.for.body17_crit_edge ]
  %j.0232 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body17_crit_edge ]
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %tmp, align 8
  call void @_raw_spin_lock_bh(ptr noundef nonnull @moxa_lock) #9
  %25 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %for.body17.if.end23_crit_edge, label %if.then20

for.body17.if.end23_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i190 = getelementptr inbounds %struct.moxa_port, ptr %p.0233, i32 0, i32 2
  %27 = ptrtoint ptr %tableAddr.i190 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tableAddr.i190, align 4
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #9, !srcloc !238
  %30 = call i16 @llvm.bswap.i16(i16 %29) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  %add.ptr4.i = getelementptr i8, ptr %28, i32 2
  %31 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #9, !srcloc !238
  %32 = call i16 @llvm.bswap.i16(i16 %31) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr10.i = getelementptr i8, ptr %28, i32 18
  %33 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !238
  %34 = call i16 @llvm.bswap.i16(i16 %33) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  %conv.i191 = zext i16 %32 to i32
  %conv14.i = zext i16 %30 to i32
  %sub.i = sub nsw i32 %conv.i191, %conv14.i
  %conv15.i = zext i16 %34 to i32
  %and.i192 = and i32 %sub.i, %conv15.i
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i192, ptr %tmp, align 8
  %36 = ptrtoint ptr %tableAddr.i190 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tableAddr.i190, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 4
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  %39 = call i16 @llvm.bswap.i16(i16 %38) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %add.ptr4.i194 = getelementptr i8, ptr %37, i32 6
  %40 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i194) #9, !srcloc !238
  %41 = call i16 @llvm.bswap.i16(i16 %40) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %add.ptr10.i195 = getelementptr i8, ptr %37, i32 20
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i195) #9, !srcloc !238
  %43 = call i16 @llvm.bswap.i16(i16 %42) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %conv.i196 = zext i16 %41 to i32
  %conv14.i197 = zext i16 %39 to i32
  %sub.i198 = sub nsw i32 %conv.i196, %conv14.i197
  %conv15.i199 = zext i16 %43 to i32
  %and.i200 = and i32 %sub.i198, %conv15.i199
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i200, ptr %21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.body17.if.end23_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @moxa_lock) #9
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #9
  %call.i.i162 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i162, label %if.end23.cleanup_crit_edge, label %if.end.i.i165

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i165:                                    ; preds = %if.end23
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argm.1235, i32 8, i32 -1226833920) #14, !srcloc !367
  %asmresult.i.i163 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i163)
  %cmp.i6.i164 = icmp eq i32 %asmresult.i.i163, 0
  br i1 %cmp.i6.i164, label %copy_to_user.exit170, label %if.end.i.i165.cleanup_crit_edge

if.end.i.i165.cleanup_crit_edge:                  ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit170:                             ; preds = %if.end.i.i165
  %call.i.i.i166 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 8) #9
  %call.i12.i.i167 = call i32 @arm_copy_to_user(ptr noundef %argm.1235, ptr noundef nonnull %tmp, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i167)
  %tobool25.not = icmp eq i32 %call.i12.i.i167, 0
  br i1 %tobool25.not, label %for.inc, label %copy_to_user.exit170.cleanup_crit_edge

copy_to_user.exit170.cleanup_crit_edge:           ; preds = %copy_to_user.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %copy_to_user.exit170
  %inc = add nuw nsw i32 %j.0232, 1
  %incdec.ptr = getelementptr %struct.moxa_port, ptr %p.0233, i32 1
  %incdec.ptr28 = getelementptr %struct.moxaq_str, ptr %argm.1235, i32 1
  %exitcond239.not = icmp eq i32 %inc, 32
  br i1 %exitcond239.not, label %for.inc29, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.inc29:                                        ; preds = %for.inc
  %inc30 = add nuw nsw i32 %i.0236, 1
  %exitcond240.not = icmp eq i32 %inc30, 4
  br i1 %exitcond240.not, label %sw.epilog.critedge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %copy_to_user.exit170.cleanup_crit_edge, %if.end.i.i165.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  br label %cleanup116

sw.bb36:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i201 = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %tableAddr.i201 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tableAddr.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i202) #9, !srcloc !238
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %add.ptr4.i203 = getelementptr i8, ptr %47, i32 6
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i203) #9, !srcloc !238
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  %add.ptr10.i204 = getelementptr i8, ptr %47, i32 20
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i204) #9, !srcloc !238
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %conv.i205 = zext i16 %51 to i32
  %conv14.i206 = zext i16 %49 to i32
  %sub.i207 = sub nsw i32 %conv.i205, %conv14.i206
  %conv15.i208 = zext i16 %53 to i32
  %and.i209 = and i32 %sub.i207, %conv15.i208
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 632) #9
  %54 = tail call i32 @llvm.read_register.i32(metadata !223) #9
  %and.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !368
  %and.i = and i32 %56, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  %57 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %and.i209, i32 -1226833921) #9, !srcloc !371
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #9, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  br label %cleanup116

sw.bb41:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i210 = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %tableAddr.i210 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tableAddr.i210, align 4
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #9, !srcloc !238
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  %add.ptr4.i211 = getelementptr i8, ptr %59, i32 2
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i211) #9, !srcloc !238
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  %add.ptr10.i212 = getelementptr i8, ptr %59, i32 18
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i212) #9, !srcloc !238
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !332
  %conv.i213 = zext i16 %63 to i32
  %conv14.i214 = zext i16 %61 to i32
  %sub.i215 = sub nsw i32 %conv.i213, %conv14.i214
  %conv15.i216 = zext i16 %65 to i32
  %and.i217 = and i32 %sub.i215, %conv15.i216
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 636) #9
  %66 = tail call i32 @llvm.read_register.i32(metadata !223) #9
  %and.i.i.i171 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i171 to ptr
  %cpu_domain.i.i172 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i172) #8, !srcloc !368
  %and.i173 = and i32 %68, -13
  %or.i174 = or i32 %and.i173, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i174) #9, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %and.i217, i32 -1226833921) #9, !srcloc !372
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #9, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  br label %cleanup116

sw.bb58:                                          ; preds = %if.end8.sw.bb58_crit_edge, %if.then.sw.bb58_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmp60) #9
  %70 = getelementptr inbounds %struct.mxser_mstatus, ptr %tmp60, i32 0, i32 1
  %71 = getelementptr inbounds %struct.mxser_mstatus, ptr %tmp60, i32 0, i32 2
  %72 = getelementptr inbounds %struct.mxser_mstatus, ptr %tmp60, i32 0, i32 4
  br label %for.body66

for.body66:                                       ; preds = %for.inc107.for.body66_crit_edge, %sw.bb58
  %i62.0231 = phi i32 [ 0, %sw.bb58 ], [ %inc108, %for.inc107.for.body66_crit_edge ]
  %argm59.0230 = phi ptr [ %2, %sw.bb58 ], [ %incdec.ptr105, %for.inc107.for.body66_crit_edge ]
  %ports68 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i62.0231, i32 4
  %73 = ptrtoint ptr %ports68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ports68, align 4
  %ready73 = getelementptr [4 x %struct.moxa_board_conf], ptr @moxa_boards, i32 0, i32 %i62.0231, i32 3
  br label %for.body71

for.body71:                                       ; preds = %for.inc102.for.body71_crit_edge, %for.body66
  %j63.0229 = phi i32 [ 0, %for.body66 ], [ %inc103, %for.inc102.for.body71_crit_edge ]
  %p61.0227 = phi ptr [ %74, %for.body66 ], [ %incdec.ptr104, %for.inc102.for.body71_crit_edge ]
  %argm59.1226 = phi ptr [ %argm59.0230, %for.body66 ], [ %incdec.ptr105, %for.inc102.for.body71_crit_edge ]
  %75 = call ptr @memset(ptr %tmp60, i32 0, i32 20)
  call void @_raw_spin_lock_bh(ptr noundef nonnull @moxa_lock) #9
  %76 = ptrtoint ptr %ready73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ready73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool74.not = icmp eq i32 %77, 0
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @moxa_lock) #9
  br label %if.end59.i.i178

if.end76:                                         ; preds = %for.body71
  %call77 = call fastcc i32 @MoxaPortLineStatus(ptr noundef %p61.0227)
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @moxa_lock) #9
  %and = and i32 %call77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %if.end76.if.end80_crit_edge, label %if.then79

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %70, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76.if.end80_crit_edge
  %and81 = and i32 %call77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end84_crit_edge, label %if.then83

if.end80.if.end84_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %71, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80.if.end84_crit_edge
  %and85 = and i32 %call77, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end88_crit_edge, label %if.then87

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %72, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84.if.end88_crit_edge
  %call89 = call ptr @tty_port_tty_get(ptr noundef %p61.0227) #9
  %tobool90.not = icmp eq ptr %call89, null
  %cflag = getelementptr inbounds %struct.moxa_port, ptr %p61.0227, i32 0, i32 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %call89, i32 0, i32 13, i32 2
  %storemerge.in = select i1 %tobool90.not, ptr %cflag, ptr %c_cflag
  %81 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %81)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %82 = ptrtoint ptr %tmp60 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %tmp60, align 4
  call void @tty_kref_put(ptr noundef %call89) #9
  br label %if.end59.i.i178

if.end59.i.i178:                                  ; preds = %if.end88, %if.then75
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 174) #9
  %call.i.i179 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i179, label %if.end59.i.i178.cleanup110_crit_edge, label %if.end.i.i182

if.end59.i.i178.cleanup110_crit_edge:             ; preds = %if.end59.i.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end.i.i182:                                    ; preds = %if.end59.i.i178
  %83 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argm59.1226, i32 20, i32 -1226833920) #14, !srcloc !367
  %asmresult.i.i180 = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i180)
  %cmp.i6.i181 = icmp eq i32 %asmresult.i.i180, 0
  br i1 %cmp.i6.i181, label %copy_to_user.exit187, label %if.end.i.i182.cleanup110_crit_edge

if.end.i.i182.cleanup110_crit_edge:               ; preds = %if.end.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

copy_to_user.exit187:                             ; preds = %if.end.i.i182
  %call.i.i.i183 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp60, i32 noundef 20) #9
  %call.i12.i.i184 = call i32 @arm_copy_to_user(ptr noundef %argm59.1226, ptr noundef nonnull %tmp60, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i184)
  %tobool97.not = icmp eq i32 %call.i12.i.i184, 0
  br i1 %tobool97.not, label %for.inc102, label %copy_to_user.exit187.cleanup110_crit_edge

copy_to_user.exit187.cleanup110_crit_edge:        ; preds = %copy_to_user.exit187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

for.inc102:                                       ; preds = %copy_to_user.exit187
  %inc103 = add nuw nsw i32 %j63.0229, 1
  %incdec.ptr104 = getelementptr %struct.moxa_port, ptr %p61.0227, i32 1
  %incdec.ptr105 = getelementptr %struct.mxser_mstatus, ptr %argm59.1226, i32 1
  %exitcond.not = icmp eq i32 %inc103, 32
  br i1 %exitcond.not, label %for.inc107, label %for.inc102.for.body71_crit_edge

for.inc102.for.body71_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71

for.inc107:                                       ; preds = %for.inc102
  %inc108 = add nuw nsw i32 %i62.0231, 1
  %exitcond238.not = icmp eq i32 %inc108, 4
  br i1 %exitcond238.not, label %sw.epilog.critedge157, label %for.inc107.for.body66_crit_edge

for.inc107.for.body66_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

cleanup110:                                       ; preds = %copy_to_user.exit187.cleanup110_crit_edge, %if.end.i.i182.cleanup110_crit_edge, %if.end59.i.i178.cleanup110_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp60) #9
  br label %cleanup116

sw.epilog.critedge:                               ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #9
  br label %cleanup116

sw.epilog.critedge157:                            ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmp60) #9
  br label %cleanup116

cleanup116:                                       ; preds = %sw.epilog.critedge157, %sw.epilog.critedge, %cleanup110, %sw.bb41, %sw.bb36, %cleanup, %if.then27.i.i, %if.then.i.i189.cleanup116_crit_edge, %if.then4.i.cleanup116_crit_edge, %if.end.i.cleanup116_crit_edge, %sw.bb12.cleanup116_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup116_crit_edge, %sw.bb.cleanup116_crit_edge, %if.end8.cleanup116_crit_edge, %if.else.cleanup116_crit_edge, %if.then.cleanup116_crit_edge
  %retval.5 = phi i32 [ -14, %cleanup110 ], [ -14, %cleanup ], [ -22, %if.then.cleanup116_crit_edge ], [ -19, %if.else.cleanup116_crit_edge ], [ %69, %sw.bb41 ], [ %57, %sw.bb36 ], [ 0, %sw.epilog.critedge ], [ 0, %sw.epilog.critedge157 ], [ -515, %if.end8.cleanup116_crit_edge ], [ 0, %sw.bb12.cleanup116_crit_edge ], [ 0, %if.end.i.cleanup116_crit_edge ], [ 0, %if.then4.i.cleanup116_crit_edge ], [ 0, %if.then.i.i189.cleanup116_crit_edge ], [ 0, %if.then27.i.i ], [ -14, %sw.bb.cleanup116_crit_edge ], [ -14, %if.end.i.i.cleanup116_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_set_termios(ptr noundef %tty, ptr noundef %old_termios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @moxa_set_tty_param(ptr noundef %tty, ptr noundef %old_termios)
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %c_cflag1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag1, align 4
  %and2 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %open_wait = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_stop(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext 53, i16 noundef zeroext 1028) #9
  %statusflags = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %statusflags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_start(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %statusflags = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %statusflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %statusflags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %6, i16 noundef zeroext 52, i16 noundef zeroext 1028) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %statusflags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_hangup(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tableAddr = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tableAddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %conv = select i1 %tobool.not, i16 12, i16 11
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext %conv, i16 noundef zeroext 1028)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxa_flush_buffer(ptr noundef %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tableAddr.i, align 4
  tail call fastcc void @moxafunc(ptr noundef %3, i16 noundef zeroext 10, i16 noundef zeroext 1) #9
  tail call void @tty_wakeup(ptr noundef %tty) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_tiocmget(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %lineCtrl.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lineCtrl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lineCtrl.i, align 1
  %4 = shl i8 %3, 1
  %5 = and i8 %4, 6
  %6 = zext i8 %5 to i32
  %call5 = tail call fastcc i32 @MoxaPortLineStatus(ptr noundef %1)
  %and = shl i32 %call5, 5
  %7 = and i32 %and, 32
  %and10 = shl i32 %call5, 7
  %8 = and i32 %and10, 256
  %and15 = shl i32 %call5, 4
  %9 = and i32 %and15, 64
  %10 = or i32 %8, %7
  %11 = or i32 %10, %9
  %12 = or i32 %11, %6
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @moxa_openlock, i32 noundef 0) #9
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lineCtrl.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lineCtrl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lineCtrl.i, align 1
  %4 = and i8 %3, 1
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %and4 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %and8 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  %and12 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i2324 = icmp ne i8 %4, 0
  %tobool.not.i23 = select i1 %tobool5.not, i1 true, i1 %tobool.not.i2324
  %tobool.not.i = select i1 %tobool13.not, i1 %tobool.not.i23, i1 false
  %spec.select.i = zext i1 %tobool.not.i to i8
  %5 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i2526 = icmp eq i8 %5, 0
  %tobool2.not.i25 = select i1 %tobool1.not, i1 %tobool2.not.i2526, i1 false
  %tobool2.not.i = select i1 %tobool9.not, i1 true, i1 %tobool2.not.i25
  %6 = or i8 %spec.select.i, 2
  %mode.1.i = select i1 %tobool2.not.i, i8 %spec.select.i, i8 %6
  %7 = ptrtoint ptr %lineCtrl.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %mode.1.i, ptr %lineCtrl.i, align 1
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tableAddr.i, align 4
  %conv8.i = zext i8 %mode.1.i to i16
  tail call fastcc void @moxafunc(ptr noundef %9, i16 noundef zeroext 7, i16 noundef zeroext %conv8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @moxa_openlock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_get_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp = icmp eq i32 %3, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = ptrtoint ptr %ss to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ss, align 4
  %tty5 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %tty5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tty5, align 4
  %index6 = getelementptr inbounds %struct.tty_struct, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index6, align 4
  %line = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 1
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %line, align 4
  %flags = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %flags8 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %14 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %flags8, align 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 7
  %15 = ptrtoint ptr %baud_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 921600, ptr %baud_base, align 4
  %close_delay = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %close_delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %close_delay, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %17) #9
  %div = udiv i32 %call, 10
  %conv = trunc i32 %div to i16
  %close_delay10 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %18 = ptrtoint ptr %close_delay10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %close_delay10, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxa_set_serial_info(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %ss) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp = icmp eq i32 %3, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  %close_delay3 = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 8
  %4 = ptrtoint ptr %close_delay3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %close_delay3, align 4
  %conv = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #9
  %mutex = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call4 = tail call zeroext i1 @capable(i32 noundef 21) #9
  %close_delay24 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 16
  br i1 %call4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.else.i
  %6 = ptrtoint ptr %close_delay24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %close_delay24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp8.not = icmp eq i32 %call2.i, %7
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then5.cleanup.sink.split_crit_edge

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then5
  %8 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ss, align 4
  %type10 = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11.not = icmp eq i32 %9, %11
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.serial_struct, ptr %ss, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %flags15 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags15, align 4
  %16 = xor i32 %15, %13
  %17 = and i32 %16, -13361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not = icmp eq i32 %17, 0
  br i1 %cmp17.not, label %lor.lhs.false13.if.end30_crit_edge, label %lor.lhs.false13.cleanup.sink.split_crit_edge

lor.lhs.false13.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false13.if.end30_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %close_delay24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call2.i, ptr %close_delay24, align 4
  %19 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp26.not = icmp eq i32 %20, 4
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tableAddr.i, align 4
  %..i = select i1 %cmp26.not, i16 3, i16 0
  %.5.i = select i1 %cmp26.not, i16 16, i16 1
  tail call fastcc void @moxafunc(ptr noundef %22, i16 noundef zeroext 54, i16 noundef zeroext %..i) #9
  tail call fastcc void @moxafunc(ptr noundef %22, i16 noundef zeroext 55, i16 noundef zeroext %.5.i) #9
  %23 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ss, align 4
  %type29 = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %type29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %type29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %lor.lhs.false13.if.end30_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end30, %lor.lhs.false13.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end30 ], [ -1, %lor.lhs.false13.cleanup.sink.split_crit_edge ], [ -1, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -1, %if.then5.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @moxa_set_tty_param(ptr noundef %tty, ptr noundef %old_termios) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %4 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %termios, align 4
  %6 = lshr i32 %3, 30
  %7 = and i32 %6, 2
  %.lobit = lshr i32 %3, 31
  %mode.1.i = or i32 %7, %.lobit
  %and1 = lshr i32 %5, 8
  %8 = and i32 %and1, 4
  %9 = or i32 %mode.1.i, %8
  %and6 = lshr i32 %5, 9
  %10 = and i32 %and6, 8
  %11 = or i32 %9, %10
  %and11 = lshr i32 %5, 7
  %12 = and i32 %and11, 16
  %13 = or i32 %11, %12
  %tableAddr.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tableAddr.i, align 4
  %conv.i = trunc i32 %13 to i16
  tail call fastcc void @moxafunc(ptr noundef %15, i16 noundef zeroext 21, i16 noundef zeroext %conv.i) #9
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  %16 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tableAddr.i, align 4
  %18 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag, align 4
  %and.i = lshr i32 %19, 4
  %20 = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %switch114.i = icmp eq i32 %20, 0
  %or18111.i = or i32 %20, 8
  %spec.select116.i = select i1 %switch114.i, i32 4, i32 %or18111.i
  %tobool.not113.in.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool.not113.in.i)
  %tobool.not113.i = icmp eq i32 %tobool.not113.in.i, 0
  %mode.1.i30 = select i1 %tobool.not113.i, i32 %20, i32 %spec.select116.i
  %and24.i = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %entry.if.end51.i_crit_edge, label %if.then26.i

entry.if.end51.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then26.i:                                      ; preds = %entry
  %and28.i = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %and41.i = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool29.not.i, label %if.else39.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.then26.i
  br i1 %tobool42.not.i, label %if.else36.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %or35.i = or i32 %mode.1.i30, 160
  br label %if.end51.i

if.else36.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  %or37.i = or i32 %mode.1.i30, 192
  br label %if.end51.i

if.else39.i:                                      ; preds = %if.then26.i
  br i1 %tobool42.not.i, label %if.else45.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or44.i = or i32 %mode.1.i30, 32
  br label %if.end51.i

if.else45.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or46.i = or i32 %mode.1.i30, 64
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else45.i, %if.then43.i, %if.else36.i, %if.then34.i, %entry.if.end51.i_crit_edge
  %mode.2.i31 = phi i32 [ %or35.i, %if.then34.i ], [ %or37.i, %if.else36.i ], [ %or44.i, %if.then43.i ], [ %or46.i, %if.else45.i ], [ %mode.1.i30, %entry.if.end51.i_crit_edge ]
  %conv.i32 = trunc i32 %mode.2.i31 to i16
  tail call fastcc void @moxafunc(ptr noundef %17, i16 noundef zeroext 41, i16 noundef zeroext %conv.i32) #9
  %board.i = getelementptr inbounds %struct.moxa_port, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %.off.i = add i32 %24, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 921599, i32 %call.i)
  %cmp58.i = icmp ugt i32 %call.i, 921599
  %or.cond.i = and i1 %cmp58.i, %switch.i
  br i1 %or.cond.i, label %if.then16, label %if.end61.i

if.end61.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call.i)
  %cmp4.i.i = icmp ult i32 %call.i, 50
  br i1 %cmp4.i.i, label %if.end61.i.MoxaPortSetBaud.exit.i_crit_edge, label %if.end.i.i

if.end61.i.MoxaPortSetBaud.exit.i_crit_edge:      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %MoxaPortSetBaud.exit.i

if.end.i.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = select i1 %switch.i, i32 460800, i32 921600
  %26 = ptrtoint ptr %tableAddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tableAddr.i, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %call.i) #9
  %div.i.i = udiv i32 921600, %28
  %conv.i.i = trunc i32 %div.i.i to i16
  tail call fastcc void @moxafunc(ptr noundef %27, i16 noundef zeroext 36, i16 noundef zeroext %conv.i.i) #9
  %div8.i.i = udiv i32 921600, %div.i.i
  br label %MoxaPortSetBaud.exit.i

MoxaPortSetBaud.exit.i:                           ; preds = %if.end.i.i, %if.end61.i.MoxaPortSetBaud.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div8.i.i, %if.end.i.i ], [ 0, %if.end61.i.MoxaPortSetBaud.exit.i_crit_edge ]
  %29 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %termios, align 4
  %and62.i = and i32 %30, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %MoxaPortSetBaud.exit.i.if.end18_crit_edge, label %if.then64.i

MoxaPortSetBaud.exit.i.if.end18_crit_edge:        ; preds = %MoxaPortSetBaud.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then64.i:                                      ; preds = %MoxaPortSetBaud.exit.i
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @moxafunc_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %17, i32 66
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %32) #9, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  tail call void @arm_heavy_mb() #9
  %arrayidx69.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %33 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx69.i, align 1
  %add.ptr70.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70.i, i8 %34) #9, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %add.ptr74.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74.i, i8 25) #9, !srcloc !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %35, 50
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then64.i
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.not.i.i = icmp eq i16 %36, 0
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %37
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.moxa_wait_finish.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.moxa_wait_finish.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr74.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp12.not.i.i = icmp eq i16 %38, 0
  br i1 %cmp12.not.i.i, label %while.end.i.i.moxa_wait_finish.exit.i_crit_edge, label %if.then14.i.i

while.end.i.i.moxa_wait_finish.exit.i_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit.i

if.then14.i.i:                                    ; preds = %while.end.i.i
  %call15.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @moxa_wait_finish._rs, ptr noundef nonnull @__func__.moxa_wait_finish) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool.not.i.i, label %if.then14.i.i.moxa_wait_finish.exit.i_crit_edge, label %do.end.i.i

if.then14.i.i.moxa_wait_finish.exit.i_crit_edge:  ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_wait_finish.exit.i

do.end.i.i:                                       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %moxa_wait_finish.exit.i

moxa_wait_finish.exit.i:                          ; preds = %do.end.i.i, %if.then14.i.i.moxa_wait_finish.exit.i_crit_edge, %while.end.i.i.moxa_wait_finish.exit.i_crit_edge, %while.body.i.i.moxa_wait_finish.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @moxafunc_lock) #9
  br label %if.end18

if.then16:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @tty_termios_baud_rate(ptr noundef %old_termios) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %moxa_wait_finish.exit.i, %MoxaPortSetBaud.exit.i.if.end18_crit_edge
  %baud.0 = phi i32 [ %call17, %if.then16 ], [ %retval.0.i.i, %moxa_wait_finish.exit.i ], [ %retval.0.i.i, %MoxaPortSetBaud.exit.i.if.end18_crit_edge ]
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %baud.0, i32 noundef %baud.0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_block_til_ready(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MoxaPortLineStatus(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tableAddr = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %tableAddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tableAddr, align 4
  %board = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %.off = add i32 %5, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @moxafunc_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  tail call void @arm_heavy_mb() #9
  %add.ptr11.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 2048) #9, !srcloc !244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %6, 50
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i.i = icmp eq i16 %7, 0
  br i1 %cmp.not.i.i, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %8
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i.moxafuncret.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

while.body.i.i.moxafuncret.exit_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxafuncret.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11.i) #9, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp12.not.i.i = icmp eq i16 %9, 0
  br i1 %cmp12.not.i.i, label %while.end.i.i.moxafuncret.exit_crit_edge, label %if.then14.i.i

while.end.i.i.moxafuncret.exit_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxafuncret.exit

if.then14.i.i:                                    ; preds = %while.end.i.i
  %call15.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @moxa_wait_finish._rs, ptr noundef nonnull @__func__.moxa_wait_finish) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool.not.i.i, label %if.then14.i.i.moxafuncret.exit_crit_edge, label %do.end.i.i

if.then14.i.i.moxafuncret.exit_crit_edge:         ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxafuncret.exit

do.end.i.i:                                       ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %moxafuncret.exit

moxafuncret.exit:                                 ; preds = %do.end.i.i, %if.then14.i.i.moxafuncret.exit_crit_edge, %while.end.i.i.moxafuncret.exit_crit_edge, %while.body.i.i.moxafuncret.exit_crit_edge
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !238
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @moxafunc_lock, i32 noundef %call2.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 10
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !238
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %14 = lshr i16 %13, 4
  br label %if.end

if.end:                                           ; preds = %if.else, %moxafuncret.exit
  %val.0.in = phi i16 [ %11, %moxafuncret.exit ], [ %14, %if.else ]
  %conv1021 = and i16 %val.0.in, 8
  %lock.i = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %DCDState.i = getelementptr inbounds %struct.moxa_port, ptr %port, i32 0, i32 6
  %15 = ptrtoint ptr %DCDState.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %DCDState.i, align 4
  %conv1021.lobit = lshr exact i16 %conv1021, 3
  %17 = trunc i16 %conv1021.lobit to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp9.not.i = icmp eq i8 %16, %17
  br i1 %cmp9.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv1021)
  %tobool.i.not = icmp eq i16 %conv1021, 0
  %18 = ptrtoint ptr %DCDState.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %DCDState.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br i1 %tobool.i.not, label %if.then15.i, label %if.then.i.moxa_new_dcdstate.exit_crit_edge

if.then.i.moxa_new_dcdstate.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %moxa_new_dcdstate.exit

if.then15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_port_tty_hangup(ptr noundef %port, i1 noundef zeroext true) #9
  br label %moxa_new_dcdstate.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br label %moxa_new_dcdstate.exit

moxa_new_dcdstate.exit:                           ; preds = %if.else.i, %if.then15.i, %if.then.i.moxa_new_dcdstate.exit_crit_edge
  %val.0 = zext i16 %val.0.in to i32
  %and = and i32 %val.0, 3
  %and6 = lshr i32 %val.0, 1
  %19 = and i32 %and6, 4
  %20 = or i32 %19, %and
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !102, !103, !105, !107, !108, !110, !111, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164, !166, !168, !170, !172, !174, !176, !177, !178, !180, !181, !183, !185, !187, !188, !189, !190, !191, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !216, !218, !219, !221}
!llvm.named.register.sp = !{!223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @__UNIQUE_ID_author240, !1, !"__UNIQUE_ID_author240", i1 false, i1 false}
!1 = !{!"../drivers/tty/moxa.c", i32 469, i32 1}
!2 = !{ptr @__UNIQUE_ID_description241, !3, !"__UNIQUE_ID_description241", i1 false, i1 false}
!3 = !{!"../drivers/tty/moxa.c", i32 470, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../drivers/tty/moxa.c", i32 471, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware244, !8, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!8 = !{!"../drivers/tty/moxa.c", i32 472, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware245, !10, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!10 = !{!"../drivers/tty/moxa.c", i32 473, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware246, !12, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!12 = !{!"../drivers/tty/moxa.c", i32 474, i32 1}
!13 = !{ptr @__param_type, !14, !"__param_type", i1 false, i1 false}
!14 = !{!"../drivers/tty/moxa.c", i32 476, i32 1}
!15 = !{ptr @__UNIQUE_ID_typetype247, !14, !"__UNIQUE_ID_typetype247", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_type248, !17, !"__UNIQUE_ID_type248", i1 false, i1 false}
!17 = !{!"../drivers/tty/moxa.c", i32 477, i32 1}
!18 = !{ptr @__param_baseaddr, !19, !"__param_baseaddr", i1 false, i1 false}
!19 = !{!"../drivers/tty/moxa.c", i32 478, i32 1}
!20 = !{ptr @__UNIQUE_ID_baseaddrtype249, !19, !"__UNIQUE_ID_baseaddrtype249", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_baseaddr250, !22, !"__UNIQUE_ID_baseaddr250", i1 false, i1 false}
!22 = !{!"../drivers/tty/moxa.c", i32 479, i32 1}
!23 = !{ptr @__param_numports, !24, !"__param_numports", i1 false, i1 false}
!24 = !{!"../drivers/tty/moxa.c", i32 480, i32 1}
!25 = !{ptr @__UNIQUE_ID_numportstype251, !24, !"__UNIQUE_ID_numportstype251", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_numports252, !27, !"__UNIQUE_ID_numports252", i1 false, i1 false}
!27 = !{!"../drivers/tty/moxa.c", i32 481, i32 1}
!28 = !{ptr @__param_ttymajor, !29, !"__param_ttymajor", i1 false, i1 false}
!29 = !{!"../drivers/tty/moxa.c", i32 483, i32 1}
!30 = !{ptr @__UNIQUE_ID_ttymajortype253, !29, !"__UNIQUE_ID_ttymajortype253", i1 false, i1 false}
!31 = !{ptr @__initcall__kmod_moxa__256_1425_moxa_init6, !32, !"__initcall__kmod_moxa__256_1425_moxa_init6", i1 false, i1 false}
!32 = !{!"../drivers/tty/moxa.c", i32 1425, i32 1}
!33 = !{ptr @__exitcall_moxa_exit, !34, !"__exitcall_moxa_exit", i1 false, i1 false}
!34 = !{!"../drivers/tty/moxa.c", i32 1426, i32 1}
!35 = !{ptr @moxa_boards, !36, !"moxa_boards", i1 false, i1 false}
!36 = !{!"../drivers/tty/moxa.c", i32 414, i32 3}
!37 = !{ptr @moxaDriver, !38, !"moxaDriver", i1 false, i1 false}
!38 = !{!"../drivers/tty/moxa.c", i32 718, i32 27}
!39 = !{ptr @__param_str_type, !14, !"__param_str_type", i1 false, i1 false}
!40 = !{ptr @__param_arr_type, !14, !"__param_arr_type", i1 false, i1 false}
!41 = !{ptr @type, !42, !"type", i1 false, i1 false}
!42 = !{!"../drivers/tty/moxa.c", i32 465, i32 21}
!43 = !{ptr @__param_str_baseaddr, !19, !"__param_str_baseaddr", i1 false, i1 false}
!44 = !{ptr @__param_arr_baseaddr, !19, !"__param_arr_baseaddr", i1 false, i1 false}
!45 = !{ptr @baseaddr, !46, !"baseaddr", i1 false, i1 false}
!46 = !{!"../drivers/tty/moxa.c", i32 464, i32 22}
!47 = !{ptr @__param_str_numports, !24, !"__param_str_numports", i1 false, i1 false}
!48 = !{ptr @__param_arr_numports, !24, !"__param_arr_numports", i1 false, i1 false}
!49 = !{ptr @numports, !50, !"numports", i1 false, i1 false}
!50 = !{!"../drivers/tty/moxa.c", i32 466, i32 21}
!51 = !{ptr @__param_str_ttymajor, !29, !"__param_str_ttymajor", i1 false, i1 false}
!52 = !{ptr @ttymajor, !53, !"ttymajor", i1 false, i1 false}
!53 = !{!"../drivers/tty/moxa.c", i32 457, i32 12}
!54 = !{ptr @.str, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/moxa.c", i32 1316, i32 10}
!56 = !{ptr @moxa_pci_driver, !57, !"moxa_pci_driver", i1 false, i1 false}
!57 = !{!"../drivers/tty/moxa.c", i32 1315, i32 26}
!58 = !{ptr @moxa_pcibrds, !59, !"moxa_pcibrds", i1 false, i1 false}
!59 = !{!"../drivers/tty/moxa.c", i32 387, i32 35}
!60 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/moxa.c", i32 1241, i32 3}
!62 = !{ptr @.str.2, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.3, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @moxa_pci_probe._entry, !61, !"_entry", i1 false, i1 false}
!67 = !{ptr @moxa_pci_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/moxa.c", i32 1251, i32 3}
!70 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @moxa_pci_probe._entry.6, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @moxa_pci_probe._entry_ptr.9, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/moxa.c", i32 1258, i32 39}
!75 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/moxa.c", i32 1260, i32 3}
!77 = !{ptr @moxa_pci_probe._entry.11, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @moxa_pci_probe._entry_ptr.13, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/moxa.c", i32 1266, i32 3}
!81 = !{ptr @moxa_pci_probe._entry.14, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @moxa_pci_probe._entry_ptr.16, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/moxa.c", i32 1293, i32 2}
!85 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @moxa_pci_probe._entry.17, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @moxa_pci_probe._entry_ptr.20, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/moxa.c", i32 1131, i32 3}
!90 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @moxa_init_board._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @moxa_init_board._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/moxa.c", i32 1146, i32 10}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/moxa.c", i32 1149, i32 10}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/moxa.c", i32 1152, i32 10}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/moxa.c", i32 1158, i32 3}
!101 = !{ptr @moxa_init_board._entry.26, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @moxa_init_board._entry_ptr.28, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @moxa_port_ops, !104, !"moxa_port_ops", i1 false, i1 false}
!104 = !{!"../drivers/tty/moxa.c", i32 712, i32 41}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/moxa.c", i32 532, i32 8}
!107 = !{ptr @moxafunc_lock, !106, !"moxafunc_lock", i1 false, i1 false}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/moxa.c", i32 542, i32 3}
!110 = !{ptr @moxa_wait_finish._rs, !109, !"_rs", i1 false, i1 false}
!111 = !{ptr @__func__.moxa_wait_finish, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @moxa_wait_finish._entry, !109, !"_entry", i1 false, i1 false}
!114 = !{ptr @moxa_wait_finish._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"moxaFuncTout", i1 false, i1 false}
!116 = !{!"../drivers/tty/moxa.c", i32 459, i32 21}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/moxa.c", i32 1051, i32 15}
!119 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/moxa.c", i32 1055, i32 16}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/moxa.c", i32 1059, i32 16}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/moxa.c", i32 1063, i32 16}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/moxa.c", i32 1073, i32 4}
!127 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @moxa_load_fw._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @moxa_load_fw._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/tty/moxa.c", i32 1076, i32 17}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/moxa.c", i32 1083, i32 16}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/moxa.c", i32 1091, i32 14}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/moxa.c", i32 1116, i32 2}
!138 = !{ptr @moxa_load_fw._entry.41, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @moxa_load_fw._entry_ptr.43, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/moxa.c", i32 789, i32 4}
!142 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @moxa_load_bios._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @moxa_load_bios._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/tty/moxa.c", i32 798, i32 2}
!147 = !{ptr @moxa_load_bios._entry.46, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @moxa_load_bios._entry_ptr.48, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/tty/moxa.c", i32 808, i32 3}
!151 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @moxa_load_320b._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @moxa_load_320b._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.51, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/tty/moxa.c", i32 951, i32 3}
!156 = !{ptr @.str.52, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @moxa_load_code._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @moxa_load_code._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/tty/moxa.c", i32 462, i32 8}
!161 = !{ptr @moxa_lock, !160, !"moxa_lock", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/moxa.c", i32 379, i32 2}
!164 = !{ptr @.str.55, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/tty/moxa.c", i32 380, i32 2}
!166 = !{ptr @.str.56, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/tty/moxa.c", i32 381, i32 2}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/moxa.c", i32 382, i32 2}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/moxa.c", i32 383, i32 2}
!172 = !{ptr @moxa_brdname, !173, !"moxa_brdname", i1 false, i1 false}
!173 = !{!"../drivers/tty/moxa.c", i32 377, i32 14}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/tty/moxa.c", i32 461, i32 8}
!176 = !{ptr @.str.60, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @moxa_openlock, !175, !"moxa_openlock", i1 false, i1 false}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/tty/moxa.c", i32 719, i32 8}
!180 = !{ptr @moxaTimer, !179, !"moxaTimer", i1 false, i1 false}
!181 = !{ptr @moxaLog, !182, !"moxaLog", i1 false, i1 false}
!182 = !{!"../drivers/tty/moxa.c", i32 458, i32 23}
!183 = distinct !{null, !184, !"moxaLowWaterChk", i1 false, i1 false}
!184 = !{!"../drivers/tty/moxa.c", i32 460, i32 21}
!185 = !{ptr @.str.62, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/tty/moxa.c", i32 1330, i32 2}
!187 = !{ptr @.str.63, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @moxa_init._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @moxa_init._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.64, !186, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.65, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/tty/moxa.c", i32 1341, i32 21}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/tty/moxa.c", i32 1355, i32 3}
!195 = !{ptr @moxa_init._entry.66, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @moxa_init._entry_ptr.68, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/tty/moxa.c", i32 1367, i32 4}
!199 = !{ptr @moxa_init.__UNIQUE_ID_ddebug255, !198, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!200 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/tty/moxa.c", i32 1376, i32 5}
!202 = !{ptr @moxa_init._entry.70, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @moxa_init._entry_ptr.72, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/tty/moxa.c", i32 1386, i32 4}
!206 = !{ptr @moxa_init._entry.73, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @moxa_init._entry_ptr.75, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/tty/moxa.c", i32 1398, i32 3}
!210 = !{ptr @moxa_init._entry.76, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @moxa_init._entry_ptr.78, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @moxa_service_port, !213, !"moxa_service_port", i1 false, i1 false}
!213 = !{!"../drivers/tty/moxa.c", i32 467, i32 24}
!214 = !{ptr @moxa_ops, !215, !"moxa_ops", i1 false, i1 false}
!215 = !{!"../drivers/tty/moxa.c", i32 693, i32 36}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!218 = distinct !{null, !217, !"<string literal>", i1 false, i1 false}
!219 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!223 = !{!"sp"}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{i64 2149013422, i64 2149013427, i64 2149013440, i64 2149013484, i64 2149013518, i64 2149013539}
!234 = !{!"auto-init"}
!235 = !{i64 2154811520}
!236 = !{i64 6127867}
!237 = !{i64 2154811876}
!238 = !{i64 6127644}
!239 = !{i64 2154812463}
!240 = !{i64 2154813005}
!241 = !{i64 2154813533}
!242 = !{i64 2154814061}
!243 = !{i64 2154823045}
!244 = !{i64 6127444}
!245 = !{i64 2154823478}
!246 = !{i64 2154823809}
!247 = !{i64 2154824583}
!248 = !{i64 2154824971}
!249 = !{i64 2154825611}
!250 = !{i64 2154826085}
!251 = !{i64 2154826300}
!252 = !{i64 2154826687}
!253 = !{i64 2154827076}
!254 = !{i64 2154827716}
!255 = !{i64 6128262}
!256 = !{i64 2154827958}
!257 = !{i64 2154828200}
!258 = !{i64 2154828411}
!259 = !{i64 2154829157}
!260 = !{i64 2154829743}
!261 = !{i64 2154830596}
!262 = !{i64 2154831067}
!263 = !{i64 2154832008}
!264 = !{i64 2154832479}
!265 = !{i64 2154832943}
!266 = !{i64 2154833393}
!267 = !{i64 2154834155}
!268 = !{i64 2154834741}
!269 = !{i64 2154835426}
!270 = !{i64 2154835697}
!271 = !{i64 2154836147}
!272 = !{i64 2154836909}
!273 = !{i64 2154837495}
!274 = !{i64 2154839318}
!275 = !{i64 2154839771}
!276 = !{i64 2154840199}
!277 = !{i64 2154841331}
!278 = !{i64 2154842222}
!279 = !{i64 2154842464}
!280 = !{i64 2154843596}
!281 = !{i64 2154844487}
!282 = !{i64 2154844767}
!283 = !{i64 2154845222}
!284 = !{i64 2154845650}
!285 = !{i64 2154846782}
!286 = !{i64 2154847673}
!287 = !{i64 2154847915}
!288 = !{i64 2154849047}
!289 = !{i64 2154849938}
!290 = !{i64 2154850208}
!291 = !{i64 2154850664}
!292 = !{i64 2154851092}
!293 = !{i64 2154852224}
!294 = !{i64 2154853115}
!295 = !{i64 2154853357}
!296 = !{i64 2154854489}
!297 = !{i64 2154855380}
!298 = !{i64 2154855650}
!299 = !{i64 2154856106}
!300 = !{i64 2154856534}
!301 = !{i64 2154857666}
!302 = !{i64 2154858557}
!303 = !{i64 2154858799}
!304 = !{i64 2154859925}
!305 = !{i64 2154860808}
!306 = !{i64 2154861074}
!307 = !{i64 2154861530}
!308 = !{i64 2154861973}
!309 = !{i64 2154862380}
!310 = !{i64 2154863176}
!311 = !{i64 2154863813}
!312 = !{i64 2154864051}
!313 = !{i64 2154865177}
!314 = !{i64 2154866060}
!315 = !{i64 2154911366}
!316 = !{i64 2154791095}
!317 = !{i64 2154791579}
!318 = !{i64 2154792058}
!319 = !{i64 2154792537}
!320 = !{i64 2154788689}
!321 = !{i64 2154789077}
!322 = !{i64 2154784924}
!323 = !{i64 2154785737}
!324 = !{i64 2154908205}
!325 = !{i64 2154908425}
!326 = !{i64 2154925459}
!327 = !{i64 2154925938}
!328 = !{i64 2154926417}
!329 = !{i8 0, i8 2}
!330 = !{i64 2154928333}
!331 = !{i64 2154928812}
!332 = !{i64 2154929291}
!333 = !{i64 2154918251}
!334 = !{i64 2154918730}
!335 = !{i64 2154919209}
!336 = !{i64 2154919688}
!337 = !{i64 2154920167}
!338 = !{i64 2154920646}
!339 = !{i64 2154920869}
!340 = !{i64 2154922626}
!341 = !{i64 2154924569}
!342 = !{i64 2154924975}
!343 = !{i64 2154905411}
!344 = !{i64 2154905608}
!345 = !{i64 2154906717}
!346 = !{i64 2154907618}
!347 = !{i64 2154907964}
!348 = !{i64 2154908632}
!349 = !{i64 2154908953}
!350 = !{i64 2154910204}
!351 = !{i64 2154911101}
!352 = !{i64 2154913909}
!353 = !{i64 2154914388}
!354 = !{i64 2154914867}
!355 = !{i64 2154915346}
!356 = !{i64 2154915825}
!357 = !{i64 2154916304}
!358 = !{i64 2154916527}
!359 = !{i64 2154917013}
!360 = distinct !{!360, !361}
!361 = !{!"llvm.loop.peeled.count", i32 1}
!362 = !{i64 2154917335}
!363 = !{i64 2154917724}
!364 = !{i64 2154926896}
!365 = !{i64 2154927375}
!366 = !{i64 2154927854}
!367 = !{i64 2153023672, i64 2153023697}
!368 = !{i64 5518546}
!369 = !{i64 5518743}
!370 = !{i64 2153003976}
!371 = !{i64 2154798723, i64 2154799003, i64 2154799337, i64 2154799671}
!372 = !{i64 2154807637, i64 2154807917, i64 2154808251, i64 2154808585}
!373 = !{i64 2154912183}
!374 = !{i64 2154912479}
!375 = !{i64 2154912761}
!376 = !{i64 2154789825}
!377 = !{i64 2154790213}
!378 = !{i64 2154790864}
!379 = !{i64 2154913430}
