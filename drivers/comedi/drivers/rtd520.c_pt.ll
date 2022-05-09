; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/rtd520.c_pt.bc'
source_filename = "../drivers/comedi/drivers/rtd520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
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
%struct.rtd_boardinfo = type { ptr, i32, i32, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtd_private = type { ptr, ptr, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_rtd520__236_1360_rtd520_driver_init6 = internal global ptr @rtd520_driver_init, section ".initcall6.init", align 4
@rtd520_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @rtd_detach, ptr @rtd_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rtd520_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtd520_pci_table, ptr @rtd520_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtd520_driver_exit = internal global ptr @rtd520_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [44 x i8] c"rtd520.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"rtd520.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [42 x i8] c"rtd520.file=drivers/comedi/drivers/rtd520\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [19 x i8] c"rtd520.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtd520\00", [25 x i8] zeroinitializer }, align 32
@rtd520_boards = internal constant { [2 x %struct.rtd_boardinfo], [32 x i8] } { [2 x %struct.rtd_boardinfo] [%struct.rtd_boardinfo { ptr @.str.1, i32 6, i32 12, ptr @rtd_ai_7520_range }, %struct.rtd_boardinfo { ptr @.str.2, i32 8, i32 16, ptr @rtd_ai_4520_range }], [32 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DM7520\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCI4520\00", [24 x i8] zeroinitializer }, align 32
@rtd_ai_7520_range = internal constant { { i32, [18 x %struct.comedi_krange] }, [36 x i8] } { { i32, [18 x %struct.comedi_krange] } { i32 18, [18 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 312500, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@rtd_ai_4520_range = internal constant { { i32, [24 x %struct.comedi_krange] }, [92 x i8] } { { i32, [24 x %struct.comedi_krange] } { i32 24, [24 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -78125, i32 78125, i32 0 }, %struct.comedi_krange { i32 -39062, i32 39062, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }, %struct.comedi_krange { i32 -156250, i32 156250, i32 0 }, %struct.comedi_krange { i32 -78125, i32 78125, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 312500, i32 0 }, %struct.comedi_krange { i32 0, i32 156250, i32 0 }, %struct.comedi_krange { i32 0, i32 78125, i32 0 }] }, [92 x i8] zeroinitializer }, align 32
@rtd_pci_latency_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1201, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCI latency changed from %d to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtd_pci_latency_quirk\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/rtd520.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtd_pci_latency_quirk._entry_ptr = internal global ptr @rtd_pci_latency_quirk._entry, section ".printk_index", align 4
@rtd_ao_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@rtd520_probe_fifo_depth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 505, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to probe fifo size.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtd520_probe_fifo_depth\00", [40 x i8] zeroinitializer }, align 32
@rtd520_probe_fifo_depth._entry_ptr = internal global ptr @rtd520_probe_fifo_depth._entry, section ".printk_index", align 4
@rtd520_probe_fifo_depth._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.7, i32 512, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unexpected fifo size of %i, expected 1024 or 8192.\0A\00", [44 x i8] zeroinitializer }, align 32
@rtd520_probe_fifo_depth._entry_ptr.15 = internal global ptr @rtd520_probe_fifo_depth._entry.13, section ".printk_index", align 4
@rtd520_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5173, i32 29984, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5173, i32 17696, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@switch.table.rtd_counter_insn_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 5, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 2001, i64 2002, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 8192]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"rtd520_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1334, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"rtd520_pci_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1354, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1335, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"rtd520_boards\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 332, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 334, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 340, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"rtd_ai_7520_range\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 251, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"rtd_ai_4520_range\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 278, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1199, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"rtd_ao_range\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 311, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 505, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 510, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"rtd520_pci_table\00", align 1
@___asan_gen_.85 = private constant [35 x i8] c"../drivers/comedi/drivers/rtd520.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1347, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [37 x i8] c"switch.table.rtd_counter_insn_config\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_rtd520_driver_exit, ptr @__initcall__kmod_rtd520__236_1360_rtd520_driver_init6, ptr @rtd520_driver_exit, ptr @rtd520_probe_fifo_depth._entry, ptr @rtd520_probe_fifo_depth._entry.13, ptr @rtd520_probe_fifo_depth._entry_ptr, ptr @rtd520_probe_fifo_depth._entry_ptr.15, ptr @rtd_pci_latency_quirk._entry, ptr @rtd_pci_latency_quirk._entry_ptr, ptr @rtd520_driver, ptr @rtd520_pci_driver, ptr @.str, ptr @rtd520_boards, ptr @.str.1, ptr @.str.2, ptr @rtd_ai_7520_range, ptr @rtd_ai_4520_range, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rtd_ao_range, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @rtd520_pci_table, ptr @switch.table.rtd_counter_insn_config], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_boards to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd_ai_7520_range to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd_ai_4520_range to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd_pci_latency_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd_ao_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_probe_fifo_depth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_probe_fifo_depth._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtd520_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtd_counter_insn_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd520_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @rtd520_driver, ptr noundef nonnull @rtd520_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtd520_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @rtd520_driver, ptr noundef nonnull @rtd520_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtd_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %lcfg = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lcfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcfg, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !59
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %lcfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcfg, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 0) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr14.i = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 -1) #7, !srcloc !62
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr16.i = getelementptr i8, ptr %15, i32 52
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @free_irq(i32 noundef %18, ptr noundef %dev) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %tobool9.not = icmp eq ptr %20, null
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %20) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %22) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %lcfg17 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %lcfg17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lcfg17, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %24) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @comedi_pci_disable(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  %pci_latency.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp = icmp ugt i32 %context, 1
  %arrayidx = getelementptr [2 x %struct.rtd_boardinfo], ptr @rtd520_boards, i32 0, i32 %context
  %tobool.not164 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not164
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 32) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 2) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %mmio, align 4
  %call12 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 3) #7
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %call3, align 4
  %call13 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #7
  %lcfg = getelementptr inbounds %struct.rtd_private, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %lcfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %lcfg, align 4
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call3, align 4
  %tobool17.not = icmp eq ptr %10, null
  %tobool20.not = icmp eq ptr %call13, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_latency.i) #7
  %11 = ptrtoint ptr %pci_latency.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %pci_latency.i, align 1, !annotation !66
  %call.i = call i32 @pci_read_config_byte(ptr noundef %call, i32 noundef 13, ptr noundef nonnull %pci_latency.i) #7
  %12 = ptrtoint ptr %pci_latency.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pci_latency.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp.i = icmp ult i8 %13, 32
  br i1 %cmp.i, label %do.end.i, label %if.end22.rtd_pci_latency_quirk.exit_crit_edge

if.end22.rtd_pci_latency_quirk.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtd_pci_latency_quirk.exit

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %13 to i32
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef 32) #10
  %call3.i = call i32 @pci_write_config_byte(ptr noundef %call, i32 noundef 13, i8 noundef zeroext 32) #7
  br label %rtd_pci_latency_quirk.exit

rtd_pci_latency_quirk.exit:                       ; preds = %do.end.i, %if.end22.rtd_pci_latency_quirk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_latency.i) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %rtd_pci_latency_quirk.exit.if.end33_crit_edge, label %if.then24

rtd_pci_latency_quirk.exit.if.end33_crit_edge:    ; preds = %rtd_pci_latency_quirk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %rtd_pci_latency_quirk.exit
  %18 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board_name, align 4
  %call.i163 = call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @rtd_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %19, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp28 = icmp eq i32 %call.i163, 0
  br i1 %cmp28, label %if.then29, label %if.then24.if.end33_crit_edge

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %irq31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq31, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then24.if.end33_crit_edge, %rtd_pci_latency_quirk.exit.if.end33_crit_edge
  %call34 = call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %23 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7405568, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 13
  %28 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4095, ptr %maxdata, align 4
  %ai_range = getelementptr [2 x %struct.rtd_boardinfo], ptr @rtd520_boards, i32 0, i32 %context, i32 3
  %29 = ptrtoint ptr %ai_range to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ai_range, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 15
  %31 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %range_table, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 5
  %32 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %len_chanlist, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 18
  %33 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rtd_ai_rinsn, ptr %insn_read, align 4
  %irq39 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %34 = ptrtoint ptr %irq39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool40.not = icmp eq i32 %35, 0
  br i1 %tobool40.not, label %if.end37.if.end43_crit_edge, label %if.then41

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %36 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %24, ptr %read_subdev, align 4
  %37 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %38, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 22
  %39 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rtd_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 23
  %40 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rtd_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 25
  %41 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rtd_ai_cancel, ptr %cancel, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end37.if.end43_crit_edge
  %42 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdevices, align 4
  %arrayidx45 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1
  %type46 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 2
  %44 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %type46, align 4
  %subdev_flags47 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 4
  %45 = ptrtoint ptr %subdev_flags47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 131072, ptr %subdev_flags47, align 4
  %n_chan48 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 3
  %46 = ptrtoint ptr %n_chan48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %n_chan48, align 4
  %maxdata49 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 13
  %47 = ptrtoint ptr %maxdata49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4095, ptr %maxdata49, align 4
  %range_table50 = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 15
  %48 = ptrtoint ptr %range_table50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @rtd_ao_range, ptr %range_table50, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %43, i32 1, i32 19
  %49 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @rtd_ao_insn_write, ptr %insn_write, align 4
  %call51 = call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  %50 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %subdevices, align 4
  %type57 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 2
  %52 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %type57, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 4
  %53 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196608, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 3
  %54 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 13
  %55 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 15
  %56 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 20
  %57 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @rtd_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %51, i32 2, i32 21
  %58 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rtd_dio_insn_config, ptr %insn_config, align 4
  %59 = load ptr, ptr %subdevices, align 4
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 96
  %call65 = call ptr @comedi_8254_mm_init(ptr noundef %add.ptr, i32 noundef 125, i32 noundef 1, i32 noundef 2) #7
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %62 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call65, ptr %pacer, align 4
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %if.end54.cleanup_crit_edge, label %if.end69

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %if.end54
  %arrayidx63 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3
  call void @comedi_8254_subdevice_init(ptr noundef %arrayidx63, ptr noundef nonnull %call65) #7
  %63 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pacer, align 4
  %insn_config72 = getelementptr inbounds %struct.comedi_8254, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %insn_config72 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @rtd_counter_insn_config, ptr %insn_config72, align 4
  call fastcc void @rtd_init_board(ptr noundef %dev)
  %call73 = call fastcc i32 @rtd520_probe_fifo_depth(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end69.cleanup_crit_edge, label %if.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %fifosz = getelementptr inbounds %struct.rtd_private, ptr %call3, i32 0, i32 5
  %66 = ptrtoint ptr %fifosz to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call73, ptr %fifosz, align 4
  %67 = ptrtoint ptr %irq39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool78.not = icmp eq i32 %68, 0
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %do.body

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %lcfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lcfg, align 4
  %add.ptr81 = getelementptr i8, ptr %70, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 589824) #7, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end76.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call51, %if.end43.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ], [ %call73, %if.end69.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %4 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.xfer_abort_crit_edge, label %if.end5

if.end.xfer_abort_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_abort

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp = icmp eq i16 %12, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end16

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool19.not = icmp eq i16 %13, 0
  br i1 %tobool19.not, label %if.end16.if.end55_crit_edge, label %if.then20

if.end16.if.end55_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then20:                                        ; preds = %if.end16
  %and22 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then20
  %fifosz = getelementptr inbounds %struct.rtd_private, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %fifosz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifosz, align 4
  %div151 = lshr i32 %15, 1
  %call25 = tail call fastcc i32 @ai_read_n(ptr noundef %d, ptr noundef %1, i32 noundef %div151)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then24.xfer_abort_crit_edge, label %if.end29

if.then24.xfer_abort_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_abort

if.end29:                                         ; preds = %if.then24
  %ai_count = getelementptr inbounds %struct.rtd_private, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %ai_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ai_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp30 = icmp eq i32 %17, 0
  br i1 %cmp30, label %if.end29.xfer_done_crit_edge, label %if.end29.if.end55_crit_edge

if.end29.if.end55_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end29.xfer_done_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_done

if.else:                                          ; preds = %if.then20
  %xfer_count = getelementptr inbounds %struct.rtd_private, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %xfer_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp34 = icmp slt i32 %19, 1
  %and38 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond = select i1 %cmp34, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %if.else.if.end55_crit_edge, label %if.then40

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then40:                                        ; preds = %if.else
  %call42 = tail call fastcc i32 @ai_read_n(ptr noundef %d, ptr noundef %1, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then40.xfer_abort_crit_edge, label %if.end46

if.then40.xfer_abort_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_abort

if.end46:                                         ; preds = %if.then40
  %ai_count47 = getelementptr inbounds %struct.rtd_private, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %ai_count47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ai_count47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp48 = icmp eq i32 %21, 0
  br i1 %cmp48, label %if.end46.xfer_done_crit_edge, label %if.end46.if.end55_crit_edge

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end46.xfer_done_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_done

if.end55:                                         ; preds = %if.end46.if.end55_crit_edge, %if.else.if.end55_crit_edge, %if.end29.if.end55_crit_edge, %if.end16.if.end55_crit_edge
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr59 = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %tobool64.not = icmp ult i32 %24, 65536
  br i1 %tobool64.not, label %do.body, label %if.end55.xfer_abort_crit_edge

if.end55.xfer_abort_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfer_abort

do.body:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr68 = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr68, i16 %12) #7, !srcloc !62
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr72 = getelementptr i8, ptr %28, i32 52
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr72) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  br label %cleanup.sink.split

xfer_abort:                                       ; preds = %if.end55.xfer_abort_crit_edge, %if.then40.xfer_abort_crit_edge, %if.then24.xfer_abort_crit_edge, %if.end.xfer_abort_crit_edge
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %events, align 4
  %or = or i32 %33, 16
  store i32 %or, ptr %events, align 4
  br label %xfer_done

xfer_done:                                        ; preds = %xfer_abort, %if.end46.xfer_done_crit_edge, %if.end29.xfer_done_crit_edge
  %async77 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %async77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %async77, align 4
  %events78 = getelementptr inbounds %struct.comedi_async, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %events78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %events78, align 4
  %or79 = or i32 %37, 2
  store i32 %or79, ptr %events78, align 4
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr83 = getelementptr i8, ptr %39, i32 48
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr83) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio, align 4
  %add.ptr91 = getelementptr i8, ptr %42, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr91, i16 %40) #7, !srcloc !62
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %add.ptr95 = getelementptr i8, ptr %44, i32 52
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr95) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %46 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio, align 4
  %add.ptr102 = getelementptr i8, ptr %47, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 4
  %add.ptr110 = getelementptr i8, ptr %50, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %xfer_done, %do.body
  %call115 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ai_rinsn(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  tail call fastcc void @rtd_load_channelgain_list(ptr noundef %dev, i32 noundef 1, ptr noundef %chanspec)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !59
  %n7 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp49.not = icmp eq i32 %9, 0
  br i1 %cmp49.not, label %entry.cleanup26_crit_edge, label %for.body.lr.ph

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.body.lr.ph:                                   ; preds = %entry
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 0) #7, !srcloc !62
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @rtd_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup26_crit_edge

for.body.cleanup26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #7, !srcloc !64
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %16 = lshr i16 %15, 3
  %17 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %18, i32 0, i32 1, i32 %and
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp slt i32 %20, 0
  br i1 %cmp.i, label %if.then19, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv20 = zext i16 %16 to i32
  %21 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %22, %conv20
  %shr.i = lshr i32 %22, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %conv22 = trunc i32 %xor2.i to i16
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end.for.inc_crit_edge
  %d.0 = phi i16 [ %conv22, %if.then19 ], [ %16, %if.end.for.inc_crit_edge ]
  %conv24 = zext i16 %d.0 to i32
  %23 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxdata.i, align 4
  %and25 = and i32 %24, %conv24
  %arrayidx = getelementptr i32, ptr %data, i32 %n.050
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and25, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.050, 1
  %26 = ptrtoint ptr %n7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n7, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup26_crit_edge

for.inc.cleanup26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup26:                                        ; preds = %for.inc.cleanup26_crit_edge, %for.body.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup26_crit_edge ], [ %call, %for.body.cleanup26_crit_edge ], [ %inc, %for.inc.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ai_cmd(ptr noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 0) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !59
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %16 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chanlist_len, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %18 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chanlist, align 4
  tail call fastcc void @rtd_load_channelgain_list(ptr noundef %dev, i32 noundef %17, ptr noundef %19)
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp ugt i32 %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr32 = getelementptr i8, ptr %23, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  br i1 %cmp, label %do.body28, label %do.body43

do.body28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr37 = getelementptr i8, ptr %25, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16777216) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %add.ptr42 = getelementptr i8, ptr %27, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 33554432) #7, !srcloc !59
  br label %do.body53

do.body43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr52 = getelementptr i8, ptr %25, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 16777216) #7, !srcloc !59
  br label %do.body53

do.body53:                                        ; preds = %do.body43, %do.body28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %fifosz = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %fifosz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fifosz, align 4
  %div259 = lshr i32 %29, 1
  %sub = add nuw i32 %div259, 65535
  %and = and i32 %sub, 65535
  %30 = tail call i32 @llvm.bswap.i32(i32 %and)
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr57 = getelementptr i8, ptr %32, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %30) #7, !srcloc !59
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %33 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %34)
  %cmp58 = icmp eq i32 %34, 16
  br i1 %cmp58, label %if.then59, label %if.else106

if.then59:                                        ; preds = %do.body53
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and60 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool.not = icmp eq i32 %and60, 0
  %37 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chanlist_len, align 4
  br i1 %tobool.not, label %if.else64, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_count = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %xfer_count to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xfer_count, align 4
  br label %if.end87

if.else64:                                        ; preds = %if.then59
  %mul = mul i32 %38, 10000000
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %40 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_begin_arg, align 4
  %div66 = udiv i32 %mul, %41
  %xfer_count67 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %xfer_count67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div66, ptr %xfer_count67, align 4
  %43 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div66, i32 %44)
  %cmp70 = icmp ult i32 %div66, %44
  br i1 %cmp70, label %if.else64.if.end84_crit_edge, label %if.else74

if.else64.if.end84_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.else74:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %div66, -1
  %sub77 = add i32 %add, %44
  %div79 = udiv i32 %sub77, %44
  %45 = ptrtoint ptr %xfer_count67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div79, ptr %xfer_count67, align 4
  %46 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chanlist_len, align 4
  %mul83 = mul i32 %47, %div79
  br label %if.end84

if.end84:                                         ; preds = %if.else74, %if.else64.if.end84_crit_edge
  %storemerge = phi i32 [ %mul83, %if.else74 ], [ %44, %if.else64.if.end84_crit_edge ]
  %48 = ptrtoint ptr %xfer_count67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge, ptr %xfer_count67, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %if.then61
  %flags85 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 4
  %49 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags85, align 4
  %or86 = or i32 %50, 1
  store i32 %or86, ptr %flags85, align 4
  %xfer_count88 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %xfer_count88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xfer_count88, align 4
  %53 = ptrtoint ptr %fifosz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fifosz, align 4
  %div90260 = lshr i32 %54, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %div90260)
  %cmp91.not = icmp ult i32 %52, %div90260
  br i1 %cmp91.not, label %do.body97, label %if.then92

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %xfer_count88 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %xfer_count88, align 4
  %flags94 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags94, align 4
  %and95 = and i32 %57, -2
  store i32 %and95, ptr %flags94, align 4
  br label %do.body111

do.body97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %xfer_count88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xfer_count88, align 4
  %sub101 = add i32 %59, 65535
  %and102 = and i32 %sub101, 65535
  %60 = tail call i32 @llvm.bswap.i32(i32 %and102)
  %61 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio, align 4
  %add.ptr104 = getelementptr i8, ptr %62, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %60) #7, !srcloc !59
  br label %do.body111

if.else106:                                       ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_count107 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %xfer_count107 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %xfer_count107, align 4
  %flags108 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %flags108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags108, align 4
  %and109 = and i32 %65, -2
  store i32 %and109, ptr %flags108, align 4
  br label %do.body111

do.body111:                                       ; preds = %if.else106, %do.body97, %if.then92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio, align 4
  %add.ptr115 = getelementptr i8, ptr %67, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 16777216) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr120 = getelementptr i8, ptr %69, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 16777216) #7, !srcloc !59
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %70 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stop_src, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %do.body111.sw.epilog_crit_edge [
    i32 32, label %sw.bb
    i32 1, label %sw.bb132
  ]

do.body111.sw.epilog_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body111
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %73 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stop_arg, align 4
  %75 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chanlist_len, align 4
  %mul122 = mul i32 %76, %74
  %ai_count = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %ai_count to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul122, ptr %ai_count, align 4
  %xfer_count123 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %xfer_count123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xfer_count123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp124 = icmp sgt i32 %79, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %mul122)
  %cmp127 = icmp sgt i32 %79, %mul122
  %or.cond = select i1 %cmp124, i1 %cmp127, i1 false
  br i1 %or.cond, label %if.then128, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then128:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %xfer_count123 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul122, ptr %xfer_count123, align 4
  br label %sw.epilog

sw.bb132:                                         ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  %ai_count133 = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %ai_count133 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %ai_count133, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb132, %if.then128, %sw.bb.sw.epilog_crit_edge, %do.body111.sw.epilog_crit_edge
  %82 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_begin_src, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %83, label %sw.epilog.sw.epilog149_crit_edge [
    i32 16, label %sw.bb135
    i32 64, label %do.body144
  ]

sw.epilog.sw.epilog149_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog149

sw.bb135:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg136 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %85 = ptrtoint ptr %scan_begin_arg136 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %scan_begin_arg136, align 4
  %add.i.i = add i32 %86, 62
  %divider.0.i.i = udiv i32 %add.i.i, 125
  %87 = tail call i32 @llvm.smax.i32(i32 %divider.0.i.i, i32 2) #7
  %mul.i.i = mul nuw i32 %87, 125
  %88 = ptrtoint ptr %scan_begin_arg136 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul.i.i, ptr %scan_begin_arg136, align 4
  %sub7.i.i = add nuw nsw i32 %87, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %and140 = and i32 %sub7.i.i, 16777215
  %89 = tail call i32 @llvm.bswap.i32(i32 %and140)
  %90 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio, align 4
  %add.ptr142 = getelementptr i8, ptr %91, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %89) #7, !srcloc !59
  br label %sw.epilog149

do.body144:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %92 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio, align 4
  %add.ptr148 = getelementptr i8, ptr %93, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 16777216) #7, !srcloc !59
  br label %sw.epilog149

sw.epilog149:                                     ; preds = %do.body144, %sw.bb135, %sw.epilog.sw.epilog149_crit_edge
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %94 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %convert_src, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %95, label %sw.epilog149.do.body169_crit_edge [
    i32 16, label %sw.bb150
    i32 64, label %do.body163
  ]

sw.epilog149.do.body169_crit_edge:                ; preds = %sw.epilog149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body169

sw.bb150:                                         ; preds = %sw.epilog149
  %97 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp152 = icmp ugt i32 %98, 1
  br i1 %cmp152, label %if.then153, label %sw.bb150.do.body169_crit_edge

sw.bb150.do.body169_crit_edge:                    ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body169

if.then153:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #9
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %99 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %convert_arg, align 4
  %add.i.i261 = add i32 %100, 62
  %divider.0.i.i262 = udiv i32 %add.i.i261, 125
  %101 = tail call i32 @llvm.smax.i32(i32 %divider.0.i.i262, i32 2) #7
  %mul.i.i263 = mul nuw i32 %101, 125
  %102 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul.i.i263, ptr %convert_arg, align 4
  %sub7.i.i264 = add nuw nsw i32 %101, 1023
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %and158 = and i32 %sub7.i.i264, 1023
  %103 = tail call i32 @llvm.bswap.i32(i32 %and158)
  %104 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio, align 4
  %add.ptr160 = getelementptr i8, ptr %105, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %103) #7, !srcloc !59
  br label %do.body169

do.body163:                                       ; preds = %sw.epilog149
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio, align 4
  %add.ptr167 = getelementptr i8, ptr %107, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 33554432) #7, !srcloc !59
  br label %do.body169

do.body169:                                       ; preds = %do.body163, %if.then153, %sw.bb150.do.body169_crit_edge, %sw.epilog149.do.body169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio, align 4
  %add.ptr173 = getelementptr i8, ptr %109, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr173, i16 -1) #7, !srcloc !62
  %110 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio, align 4
  %add.ptr175 = getelementptr i8, ptr %111, i32 52
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr175) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio, align 4
  %add.ptr182 = getelementptr i8, ptr %114, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr182, i16 4096) #7, !srcloc !62
  %115 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio, align 4
  %add.ptr186 = getelementptr i8, ptr %116, i32 40
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr186) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtd_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i231 = and i32 %3, 80
  store i32 %and.i231, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %cmp.i232 = icmp ne i32 %and.i231, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i231, i32 %3)
  %cmp1.not.i233 = icmp eq i32 %and.i231, %3
  %or.cond.i234 = and i1 %cmp.i232, %cmp1.not.i233
  %4 = select i1 %or.cond.i, i1 %or.cond.i234, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i236 = and i32 %6, 80
  store i32 %and.i236, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i236)
  %cmp.i237 = icmp ne i32 %and.i236, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i236, i32 %6)
  %cmp1.not.i238 = icmp eq i32 %and.i236, %6
  %or.cond.i239 = and i1 %cmp.i237, %cmp1.not.i238
  %7 = select i1 %4, i1 %or.cond.i239, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i241 = and i32 %9, 32
  store i32 %and.i241, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i241)
  %cmp.i242 = icmp ne i32 %and.i241, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i241, i32 %9)
  %cmp1.not.i243 = icmp eq i32 %and.i241, %9
  %or.cond.i244 = and i1 %cmp.i242, %cmp1.not.i243
  %10 = select i1 %7, i1 %or.cond.i244, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i246 = and i32 %12, 33
  store i32 %and.i246, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246)
  %cmp.i247 = icmp ne i32 %and.i246, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i246, i32 %12)
  %cmp1.not.i248 = icmp eq i32 %and.i246, %12
  %or.cond.i249 = and i1 %cmp.i247, %cmp1.not.i248
  %13 = select i1 %10, i1 %or.cond.i249, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %6) #7, !range !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i251 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i251, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i253 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i253, i1 false
  br i1 %18, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i255 = icmp eq i32 %20, 0
  br i1 %cmp.not.i255, label %if.end20.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end20.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i256 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  br i1 %cmp, label %if.then24, label %if.else59

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %22 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp25 = icmp eq i32 %23, 1
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_begin_arg, align 4
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 875, i32 %25)
  %cmp.i257 = icmp ult i32 %25, 875
  %26 = call i32 @llvm.umax.i32(i32 %25, i32 875)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %26)
  %cmp.i260 = icmp ugt i32 %26, 5000000
  %27 = select i1 %cmp.i260, i1 true, i1 %cmp.i257
  %err.2.ph = select i1 %27, i32 -22, i32 %retval.0.i256
  %28 = or i1 %cmp.i257, %cmp.i260
  br i1 %28, label %35, label %if.then26.if.end63_crit_edge

if.then26.if.end63_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1625, i32 %25)
  %cmp.i266 = icmp ult i32 %25, 1625
  %29 = call i32 @llvm.umax.i32(i32 %25, i32 1625)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151875, i32 %29)
  %cmp.i274 = icmp ugt i32 %29, 2097151875
  %30 = select i1 %cmp.i274, i1 true, i1 %cmp.i266
  %err.2.ph382 = select i1 %30, i32 -22, i32 %retval.0.i256
  %31 = or i1 %cmp.i266, %cmp.i274
  br i1 %31, label %38, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.else59:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg60 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %32 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_begin_arg60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %33)
  %cmp.i281 = icmp ugt i32 %33, 9
  br i1 %cmp.i281, label %if.then.i282, label %if.else59.comedi_check_trigger_arg_max.exit284_crit_edge

if.else59.comedi_check_trigger_arg_max.exit284_crit_edge: ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit284

if.then.i282:                                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 9, ptr %scan_begin_arg60, align 4
  br label %comedi_check_trigger_arg_max.exit284

comedi_check_trigger_arg_max.exit284:             ; preds = %if.then.i282, %if.else59.comedi_check_trigger_arg_max.exit284_crit_edge
  %retval.0.i283 = phi i32 [ -22, %if.then.i282 ], [ 0, %if.else59.comedi_check_trigger_arg_max.exit284_crit_edge ]
  %or62 = or i32 %retval.0.i283, %retval.0.i256
  br label %if.end63

35:                                               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %36 = call i32 @llvm.umin.i32(i32 %26, i32 5000000)
  %37 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %scan_begin_arg, align 4
  br label %if.end63

38:                                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %39 = call i32 @llvm.umin.i32(i32 %29, i32 2097151875)
  %40 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %scan_begin_arg, align 4
  br label %if.end63

if.end63:                                         ; preds = %38, %35, %comedi_check_trigger_arg_max.exit284, %if.else.if.end63_crit_edge, %if.then26.if.end63_crit_edge
  %err.2 = phi i32 [ %or62, %comedi_check_trigger_arg_max.exit284 ], [ %err.2.ph, %if.then26.if.end63_crit_edge ], [ %err.2.ph, %35 ], [ %err.2.ph382, %if.else.if.end63_crit_edge ], [ %err.2.ph382, %38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp65 = icmp eq i32 %6, 16
  br i1 %cmp65, label %if.then66, label %if.else103

if.then66:                                        ; preds = %if.end63
  %chanlist_len67 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %41 = ptrtoint ptr %chanlist_len67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chanlist_len67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp68 = icmp eq i32 %42, 1
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %43 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %convert_arg, align 4
  br i1 %cmp68, label %if.then69, label %if.else85

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 875, i32 %44)
  %cmp.i285 = icmp ult i32 %44, 875
  %45 = call i32 @llvm.umax.i32(i32 %44, i32 875)
  %err.3 = select i1 %cmp.i285, i32 -22, i32 %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %45)
  %cmp.i293 = icmp ugt i32 %45, 5000000
  %or83 = or i32 %err.3, -22
  %err.5.ph = select i1 %cmp.i293, i32 %or83, i32 %err.3
  %46 = or i1 %cmp.i285, %cmp.i293
  br i1 %46, label %52, label %if.then69.if.end107_crit_edge

if.then69.if.end107_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.else85:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1625, i32 %44)
  %cmp.i300 = icmp ult i32 %44, 1625
  %47 = call i32 @llvm.umax.i32(i32 %44, i32 1625)
  %err.4 = select i1 %cmp.i300, i32 -22, i32 %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151875, i32 %47)
  %cmp.i308 = icmp ugt i32 %47, 2097151875
  %or100 = or i32 %err.4, -22
  %err.5.ph386 = select i1 %cmp.i308, i32 %or100, i32 %err.4
  %48 = or i1 %cmp.i300, %cmp.i308
  br i1 %48, label %55, label %if.else85.if.end107_crit_edge

if.else85.if.end107_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.else103:                                       ; preds = %if.end63
  %convert_arg104 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %49 = ptrtoint ptr %convert_arg104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %convert_arg104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %50)
  %cmp.i315 = icmp ugt i32 %50, 9
  br i1 %cmp.i315, label %if.then.i316, label %if.else103.comedi_check_trigger_arg_max.exit318_crit_edge

if.else103.comedi_check_trigger_arg_max.exit318_crit_edge: ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit318

if.then.i316:                                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %convert_arg104 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9, ptr %convert_arg104, align 4
  br label %comedi_check_trigger_arg_max.exit318

comedi_check_trigger_arg_max.exit318:             ; preds = %if.then.i316, %if.else103.comedi_check_trigger_arg_max.exit318_crit_edge
  %retval.0.i317 = phi i32 [ -22, %if.then.i316 ], [ 0, %if.else103.comedi_check_trigger_arg_max.exit318_crit_edge ]
  %or106 = or i32 %retval.0.i317, %err.2
  br label %if.end107

52:                                               ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %53 = call i32 @llvm.umin.i32(i32 %45, i32 5000000)
  %54 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %convert_arg, align 4
  br label %if.end107

55:                                               ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  %56 = call i32 @llvm.umin.i32(i32 %47, i32 2097151875)
  %57 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %convert_arg, align 4
  br label %if.end107

if.end107:                                        ; preds = %55, %52, %comedi_check_trigger_arg_max.exit318, %if.else85.if.end107_crit_edge, %if.then69.if.end107_crit_edge
  %err.5 = phi i32 [ %or106, %comedi_check_trigger_arg_max.exit318 ], [ %err.5.ph, %if.then69.if.end107_crit_edge ], [ %err.5.ph, %52 ], [ %err.5.ph386, %if.else85.if.end107_crit_edge ], [ %err.5.ph386, %55 ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len108 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %58 = ptrtoint ptr %chanlist_len108 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chanlist_len108, align 4
  %60 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.not.i319 = icmp eq i32 %61, %59
  br i1 %cmp.not.i319, label %if.end107.comedi_check_trigger_arg_is.exit322_crit_edge, label %if.then.i320

if.end107.comedi_check_trigger_arg_is.exit322_crit_edge: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit322

if.then.i320:                                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit322

comedi_check_trigger_arg_is.exit322:              ; preds = %if.then.i320, %if.end107.comedi_check_trigger_arg_is.exit322_crit_edge
  %retval.0.i321 = phi i32 [ -22, %if.then.i320 ], [ 0, %if.end107.comedi_check_trigger_arg_is.exit322_crit_edge ]
  %or110 = or i32 %retval.0.i321, %err.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp112 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %63 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.i323 = icmp eq i32 %64, 0
  br i1 %cmp112, label %if.then113, label %if.else116

if.then113:                                       ; preds = %comedi_check_trigger_arg_is.exit322
  br i1 %cmp.i323, label %if.then113.if.end120.sink.split_crit_edge, label %if.then113.if.end120_crit_edge

if.then113.if.end120_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then113.if.end120.sink.split_crit_edge:        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.sink.split

if.else116:                                       ; preds = %comedi_check_trigger_arg_is.exit322
  br i1 %cmp.i323, label %if.else116.if.end120_crit_edge, label %if.else116.if.end120.sink.split_crit_edge

if.else116.if.end120.sink.split_crit_edge:        ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.sink.split

if.else116.if.end120_crit_edge:                   ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.end120.sink.split:                             ; preds = %if.else116.if.end120.sink.split_crit_edge, %if.then113.if.end120.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then113.if.end120.sink.split_crit_edge ], [ 0, %if.else116.if.end120.sink.split_crit_edge ]
  %65 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end120.sink.split, %if.else116.if.end120_crit_edge, %if.then113.if.end120_crit_edge
  %call114.pn = phi i32 [ 0, %if.then113.if.end120_crit_edge ], [ 0, %if.else116.if.end120_crit_edge ], [ -22, %if.end120.sink.split ]
  %err.6 = or i32 %or110, %call114.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %tobool121.not = icmp eq i32 %err.6, 0
  br i1 %tobool121.not, label %if.end123, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end123:                                        ; preds = %if.end120
  br i1 %cmp, label %if.then126, label %if.end123.if.end132_crit_edge

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then126:                                       ; preds = %if.end123
  %scan_begin_arg127 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %66 = ptrtoint ptr %scan_begin_arg127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_begin_arg127, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %69, 196608
  %70 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 131072, label %sw.bb4.i.i
    i32 65536, label %if.then126.rtd_ns_to_timer.exit_crit_edge
  ]

if.then126.rtd_ns_to_timer.exit_crit_edge:        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtd_ns_to_timer.exit

sw.default.i.i:                                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %67, 62
  br label %rtd_ns_to_timer.exit

sw.bb4.i.i:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i331 = add i32 %67, 124
  br label %rtd_ns_to_timer.exit

rtd_ns_to_timer.exit:                             ; preds = %sw.bb4.i.i, %sw.default.i.i, %if.then126.rtd_ns_to_timer.exit_crit_edge
  %divider.0.in.i.i = phi i32 [ %add.i.i, %sw.default.i.i ], [ %sub.i.i331, %sw.bb4.i.i ], [ %67, %if.then126.rtd_ns_to_timer.exit_crit_edge ]
  %divider.0.i.i332 = udiv i32 %divider.0.in.i.i, 125
  %71 = tail call i32 @llvm.smax.i32(i32 %divider.0.i.i332, i32 2) #7
  %mul.i.i333 = mul nuw i32 %71, 125
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %mul.i.i333)
  %cmp.not.i335 = icmp eq i32 %67, %mul.i.i333
  br i1 %cmp.not.i335, label %rtd_ns_to_timer.exit.if.end132_crit_edge, label %if.then.i336

rtd_ns_to_timer.exit.if.end132_crit_edge:         ; preds = %rtd_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then.i336:                                     ; preds = %rtd_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %scan_begin_arg127 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul.i.i333, ptr %scan_begin_arg127, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then.i336, %rtd_ns_to_timer.exit.if.end132_crit_edge, %if.end123.if.end132_crit_edge
  %err.7 = phi i32 [ 0, %if.end123.if.end132_crit_edge ], [ -22, %if.then.i336 ], [ 0, %rtd_ns_to_timer.exit.if.end132_crit_edge ]
  br i1 %cmp65, label %if.then135, label %if.end132.if.end151_crit_edge

if.end132.if.end151_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then135:                                       ; preds = %if.end132
  %convert_arg136 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %73 = ptrtoint ptr %convert_arg136 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %convert_arg136, align 4
  %flags137 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %75 = ptrtoint ptr %flags137 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags137, align 4
  %and.i.i339 = and i32 %76, 196608
  %77 = zext i32 %and.i.i339 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i.i339, label %sw.default.i.i341 [
    i32 131072, label %sw.bb4.i.i344
    i32 65536, label %if.then135.rtd_ns_to_timer.exit349_crit_edge
  ]

if.then135.rtd_ns_to_timer.exit349_crit_edge:     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtd_ns_to_timer.exit349

sw.default.i.i341:                                ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i340 = add i32 %74, 62
  br label %rtd_ns_to_timer.exit349

sw.bb4.i.i344:                                    ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i343 = add i32 %74, 124
  br label %rtd_ns_to_timer.exit349

rtd_ns_to_timer.exit349:                          ; preds = %sw.bb4.i.i344, %sw.default.i.i341, %if.then135.rtd_ns_to_timer.exit349_crit_edge
  %divider.0.in.i.i345 = phi i32 [ %add.i.i340, %sw.default.i.i341 ], [ %sub.i.i343, %sw.bb4.i.i344 ], [ %74, %if.then135.rtd_ns_to_timer.exit349_crit_edge ]
  %divider.0.i.i346 = udiv i32 %divider.0.in.i.i345, 125
  %78 = tail call i32 @llvm.smax.i32(i32 %divider.0.i.i346, i32 2) #7
  %mul.i.i347 = mul nuw i32 %78, 125
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %mul.i.i347)
  %cmp.not.i350 = icmp eq i32 %74, %mul.i.i347
  br i1 %cmp.not.i350, label %rtd_ns_to_timer.exit349.comedi_check_trigger_arg_is.exit353_crit_edge, label %if.then.i351

rtd_ns_to_timer.exit349.comedi_check_trigger_arg_is.exit353_crit_edge: ; preds = %rtd_ns_to_timer.exit349
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit353

if.then.i351:                                     ; preds = %rtd_ns_to_timer.exit349
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %convert_arg136 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul.i.i347, ptr %convert_arg136, align 4
  br label %comedi_check_trigger_arg_is.exit353

comedi_check_trigger_arg_is.exit353:              ; preds = %if.then.i351, %rtd_ns_to_timer.exit349.comedi_check_trigger_arg_is.exit353_crit_edge
  %retval.0.i352 = phi i32 [ -22, %if.then.i351 ], [ 0, %rtd_ns_to_timer.exit349.comedi_check_trigger_arg_is.exit353_crit_edge ]
  %or141 = or i32 %retval.0.i352, %err.7
  br i1 %cmp, label %if.then144, label %comedi_check_trigger_arg_is.exit353.if.end151_crit_edge

comedi_check_trigger_arg_is.exit353.if.end151_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit353
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then144:                                       ; preds = %comedi_check_trigger_arg_is.exit353
  %80 = ptrtoint ptr %convert_arg136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %convert_arg136, align 4
  %82 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %83, %81
  %scan_begin_arg147 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %84 = ptrtoint ptr %scan_begin_arg147 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %scan_begin_arg147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %mul)
  %cmp.i354 = icmp ult i32 %85, %mul
  br i1 %cmp.i354, label %if.then.i355, label %if.then144.comedi_check_trigger_arg_min.exit357_crit_edge

if.then144.comedi_check_trigger_arg_min.exit357_crit_edge: ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit357

if.then.i355:                                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %scan_begin_arg147 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul, ptr %scan_begin_arg147, align 4
  br label %comedi_check_trigger_arg_min.exit357

comedi_check_trigger_arg_min.exit357:             ; preds = %if.then.i355, %if.then144.comedi_check_trigger_arg_min.exit357_crit_edge
  %retval.0.i356 = phi i32 [ -22, %if.then.i355 ], [ 0, %if.then144.comedi_check_trigger_arg_min.exit357_crit_edge ]
  %or149 = or i32 %retval.0.i356, %or141
  br label %if.end151

if.end151:                                        ; preds = %comedi_check_trigger_arg_min.exit357, %comedi_check_trigger_arg_is.exit353.if.end151_crit_edge, %if.end132.if.end151_crit_edge
  %err.8 = phi i32 [ %or149, %comedi_check_trigger_arg_min.exit357 ], [ %or141, %comedi_check_trigger_arg_is.exit353.if.end151_crit_edge ], [ %err.7, %if.end132.if.end151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.8)
  %tobool152.not = icmp eq i32 %err.8, 0
  %. = select i1 %tobool152.not, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end151, %if.end120.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end120.cleanup_crit_edge ], [ %., %if.end151 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 0) #7, !srcloc !62
  %ai_count = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ai_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ai_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #7, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ao_insn_write(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %4 = trunc i32 %shr to i16
  %conv = shl i16 %4, 8
  %5 = and i16 %conv, 1792
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %mul = mul nuw nsw i32 %and, 20
  %add = add nuw nsw i32 %mul, 336
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %5) #7, !srcloc !62
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp63.not = icmp eq i32 %9, 0
  br i1 %cmp63.not, label %entry.cleanup30_crit_edge, label %for.body.lr.ph

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %entry
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %mul14 = shl nuw nsw i32 %and, 2
  %add15 = add nuw nsw i32 %mul14, 8
  %add22 = add nuw nsw i32 %mul14, 20
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.064
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %13, i32 0, i32 1, i32 %and2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %17, %11
  %shr.i = lshr i32 %17, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %add6 = add i32 %17, 1
  %and859 = shl i32 %xor2.i, 1
  %shr760 = and i32 %and859, %add6
  %or = or i32 %shr760, %xor2.i
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %val.0 = phi i32 [ %or, %if.then ], [ %11, %for.body.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %val.0.tr = trunc i32 %val.0 to i16
  %conv13 = shl i16 %val.0.tr, 3
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %20, i32 %add15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %18) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr23 = getelementptr i8, ptr %22, i32 %add22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 0) #7, !srcloc !62
  %call24 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @rtd_ao_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %for.inc, label %if.end.cleanup30_crit_edge

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

for.inc:                                          ; preds = %if.end
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %readback, align 4
  %arrayidx28 = getelementptr i32, ptr %26, i32 %and
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx28, align 4
  %inc = add nuw i32 %i.064, 1
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup30_crit_edge

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup30:                                        ; preds = %for.inc.cleanup30_crit_edge, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup30_crit_edge ], [ %call24, %if.end.cleanup30_crit_edge ], [ %29, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = trunc i32 %1 to i16
  %conv = shl i16 %2, 8
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %conv) #7, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mmio1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio1, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 112
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #7, !srcloc !64
  %8 = lshr i16 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %conv5 = zext i16 %8 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv5, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %2 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_bits, align 4
  %4 = trunc i32 %3 to i16
  %conv = shl i16 %4, 8
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 120
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %conv) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 0) #7, !srcloc !62
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_mm_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_counter_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 2001, label %sw.bb
    i32 2002, label %sw.bb5
    i32 2003, label %sw.bb10
    i32 2004, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %cond = select i1 %cmp, i32 3, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cond)
  %cmp2 = icmp ugt i32 %8, %cond
  br i1 %cmp2, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %8 to i8
  %arrayidx3 = getelementptr %struct.rtd_private, ptr %1, i32 0, i32 6, i32 %and
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %mul = shl nuw nsw i32 %and, 3
  %add = add nuw nsw i32 %mul, 432
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #7, !srcloc !117
  br label %sw.epilog42

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr %struct.rtd_private, ptr %1, i32 0, i32 6, i32 %and
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %arrayidx9 = getelementptr i32, ptr %data, i32 2
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv8, ptr %arrayidx9, align 4
  br label %sw.epilog42

sw.bb10:                                          ; preds = %entry
  %arrayidx11 = getelementptr i32, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11, align 4
  %trunc = trunc i32 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %trunc)
  %17 = icmp ult i16 %trunc, 3
  br i1 %17, label %switch.lookup, label %sw.bb10.cleanup_crit_edge

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb10
  %sext = shl i32 %3, 16
  %18 = ashr exact i32 %sext, 16
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rtd_counter_insn_config, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %switch.load)
  %cmp15 = icmp ugt i32 %16, %switch.load
  br i1 %cmp15, label %switch.lookup.cleanup_crit_edge, label %if.end18

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = trunc i32 %16 to i8
  %arrayidx20 = getelementptr %struct.rtd_private, ptr %1, i32 0, i32 7, i32 %and
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv19, ptr %arrayidx20, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %mmio25 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %21 = ptrtoint ptr %mmio25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio25, align 4
  %mul26 = shl nuw nsw i32 %and, 3
  %add27 = add nuw nsw i32 %mul26, 428
  %add.ptr28 = getelementptr i8, ptr %22, i32 %add27
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %conv19) #7, !srcloc !117
  br label %sw.epilog42

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx31 = getelementptr %struct.rtd_private, ptr %1, i32 0, i32 7, i32 %and
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %24 to i32
  %arrayidx36 = getelementptr i32, ptr %data, i32 1
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp37 = icmp eq i8 %24, 0
  %cond39 = select i1 %cmp37, i32 125, i32 0
  %arrayidx40 = getelementptr i32, ptr %data, i32 2
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond39, ptr %arrayidx40, align 4
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.bb29, %if.end18, %sw.bb5, %if.end
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog42, %switch.lookup.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %sw.epilog42 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtd_init_board(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !59
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %lcfg.i = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lcfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcfg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 0) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 -1) #7, !srcloc !62
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %11, i32 52
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr4 = getelementptr i8, ptr %16, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr8 = getelementptr i8, ptr %18, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr12 = getelementptr i8, ptr %20, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr16 = getelementptr i8, ptr %22, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 0) #7, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtd520_probe_fifo_depth(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %chanspec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chanspec) #7
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %chanspec, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  call fastcc void @rtd_load_channelgain_list(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %chanspec)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !59
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 0) #7, !srcloc !62
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1000, i32 noundef 2) #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %do.body21, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %do.end19, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end19:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.11) #10
  br label %cleanup34

do.body21:                                        ; preds = %for.body
  %mul.le = shl nuw nsw i32 %i.055, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %14, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #7, !srcloc !59
  %15 = zext i32 %mul.le to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mul.le, label %do.end31 [
    i32 1024, label %do.body21.cleanup34_crit_edge
    i32 8192, label %do.body21.cleanup34_crit_edge61
  ]

do.body21.cleanup34_crit_edge61:                  ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

do.body21.cleanup34_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

do.end31:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev32 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %mul.le) #10
  br label %cleanup34

cleanup34:                                        ; preds = %do.end31, %do.body21.cleanup34_crit_edge, %do.body21.cleanup34_crit_edge61, %do.end19
  %retval.0 = phi i32 [ -5, %do.end19 ], [ -5, %do.end31 ], [ %mul.le, %do.body21.cleanup34_crit_edge ], [ %mul.le, %do.body21.cleanup34_crit_edge61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chanspec) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ai_read_n(ptr nocapture noundef readonly %dev, ptr noundef %s, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %d = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp48 = icmp sgt i32 %count, 0
  br i1 %cmp48, label %for.body.lr.ph, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

for.body.lr.ph:                                   ; preds = %entry
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 10
  %ai_count = getelementptr inbounds %struct.rtd_private, ptr %1, i32 0, i32 2
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ii.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %6 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_chan, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #7
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %d, align 2, !annotation !66
  %11 = ptrtoint ptr %ai_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ai_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %14) #7, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  br label %for.inc

if.end:                                           ; preds = %for.body
  %shr = lshr i32 %9, 16
  %and = and i32 %shr, 255
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #7, !srcloc !64
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %20 = lshr i16 %19, 3
  %21 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %d, align 2
  %22 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %23, i32 0, i32 1, i32 %and
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp slt i32 %25, 0
  br i1 %cmp.i, label %if.then15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i16 %20 to i32
  %26 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %27, %conv16
  %shr.i = lshr i32 %27, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  %conv18 = trunc i32 %xor2.i to i16
  %28 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv18, ptr %d, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end.if.end19_crit_edge
  %29 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxdata.i, align 4
  %31 = ptrtoint ptr %d to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %d, align 2
  %33 = trunc i32 %30 to i16
  %conv22 = and i16 %32, %33
  store i16 %conv22, ptr %d, align 2
  %call23 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %d, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end19
  %34 = ptrtoint ptr %ai_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ai_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp27 = icmp sgt i32 %35, 0
  br i1 %cmp27, label %if.then29, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add nsw i32 %35, -1
  %36 = ptrtoint ptr %ai_count to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dec, ptr %ai_count, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #7
  br label %cleanup33

for.inc:                                          ; preds = %if.then29, %if.end25.for.inc_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #7
  %inc = add nuw nsw i32 %ii.049, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

cleanup33:                                        ; preds = %for.inc.cleanup33_crit_edge, %cleanup, %entry.cleanup33_crit_edge
  %retval.2 = phi i32 [ -1, %cleanup ], [ 0, %entry.cleanup33_crit_edge ], [ 0, %for.inc.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtd_load_channelgain_list(ptr nocapture noundef readonly %dev, i32 noundef %n_chan, ptr nocapture noundef readonly %list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_chan)
  %cmp = icmp ugt i32 %n_chan, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  br i1 %cmp, label %do.body7.lr.ph, label %do.body12

do.body7.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #7, !srcloc !59
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  br label %do.body7

do.body7:                                         ; preds = %rtd_convert_chan_gain.exit.do.body7_crit_edge, %do.body7.lr.ph
  %ii.065 = phi i32 [ 0, %do.body7.lr.ph ], [ %inc, %rtd_convert_chan_gain.exit.do.body7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr i32, ptr %list, i32 %ii.065
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board_ptr.i, align 4
  %shr.i = lshr i32 %5, 16
  %and1.i = and i32 %shr.i, 255
  %shr2.i = lshr i32 %5, 24
  %and3.i = and i32 %shr2.i, 3
  %8 = trunc i32 %5 to i16
  %conv5.i = and i16 %8, 15
  %range_bip10.i = getelementptr inbounds %struct.rtd_boardinfo, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %range_bip10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %range_bip10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %10)
  %cmp.i = icmp ult i32 %and1.i, %10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i = shl nuw nsw i32 %shr.i, 4
  %11 = trunc i32 %and10.i to i16
  %12 = and i16 %11, 112
  %conv13.i = or i16 %12, %conv5.i
  br label %if.end37.i

if.else.i:                                        ; preds = %do.body7
  %range_uni10.i = getelementptr inbounds %struct.rtd_boardinfo, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %range_uni10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %range_uni10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %14)
  %cmp14.i = icmp ult i32 %and1.i, %14
  br i1 %cmp14.i, label %if.then16.i, label %if.else26.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %shr.i, %10
  %sub.tr.i = trunc i32 %sub.i to i16
  %15 = shl i16 %sub.tr.i, 4
  %16 = and i16 %15, 112
  %17 = or i16 %conv5.i, %16
  %conv25.i = or i16 %17, 256
  br label %if.end37.i

if.else26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub31.i = sub i32 %shr.i, %14
  %sub31.tr.i = trunc i32 %sub31.i to i16
  %18 = shl i16 %sub31.tr.i, 4
  %19 = and i16 %18, 112
  %20 = or i16 %conv5.i, %19
  %conv36.i = or i16 %20, 512
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else26.i, %if.then16.i, %if.then.i
  %r.0.i = phi i16 [ %conv13.i, %if.then.i ], [ %conv25.i, %if.then16.i ], [ %conv36.i, %if.else26.i ]
  %21 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and3.i, label %if.end37.i.rtd_convert_chan_gain.exit_crit_edge [
    i32 2, label %sw.bb41.i
    i32 1, label %sw.bb.i
  ]

if.end37.i.rtd_convert_chan_gain.exit_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtd_convert_chan_gain.exit

sw.bb.i:                                          ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = or i16 %r.0.i, 128
  br label %rtd_convert_chan_gain.exit

sw.bb41.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = or i16 %r.0.i, 1024
  br label %rtd_convert_chan_gain.exit

rtd_convert_chan_gain.exit:                       ; preds = %sw.bb41.i, %sw.bb.i, %if.end37.i.rtd_convert_chan_gain.exit_crit_edge
  %r.1.i = phi i16 [ %r.0.i, %if.end37.i.rtd_convert_chan_gain.exit_crit_edge ], [ %22, %sw.bb.i ], [ %23, %sw.bb41.i ]
  %conv = zext i16 %r.1.i to i32
  %24 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %26, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %24) #7, !srcloc !59
  %inc = add nuw i32 %ii.065, 1
  %exitcond.not = icmp eq i32 %inc, %n_chan
  br i1 %exitcond.not, label %rtd_convert_chan_gain.exit.if.end_crit_edge, label %rtd_convert_chan_gain.exit.do.body7_crit_edge

rtd_convert_chan_gain.exit.do.body7_crit_edge:    ; preds = %rtd_convert_chan_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

rtd_convert_chan_gain.exit.if.end_crit_edge:      ; preds = %rtd_convert_chan_gain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body12:                                        ; preds = %entry
  %add.ptr16 = getelementptr i8, ptr %1, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #7, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %list, align 4
  %board_ptr.i36 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %29 = ptrtoint ptr %board_ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board_ptr.i36, align 4
  %shr.i37 = lshr i32 %28, 16
  %and1.i38 = and i32 %shr.i37, 255
  %shr2.i39 = lshr i32 %28, 24
  %and3.i40 = and i32 %shr2.i39, 3
  %31 = trunc i32 %28 to i16
  %conv5.i41 = and i16 %31, 15
  %range_bip10.i42 = getelementptr inbounds %struct.rtd_boardinfo, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %range_bip10.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %range_bip10.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i38, i32 %33)
  %cmp.i43 = icmp ult i32 %and1.i38, %33
  br i1 %cmp.i43, label %if.then.i46, label %if.else.i49

if.then.i46:                                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i44 = shl nuw nsw i32 %shr.i37, 4
  %34 = trunc i32 %and10.i44 to i16
  %35 = and i16 %34, 112
  %conv13.i45 = or i16 %35, %conv5.i41
  br label %if.end37.i59

if.else.i49:                                      ; preds = %do.body12
  %range_uni10.i47 = getelementptr inbounds %struct.rtd_boardinfo, ptr %30, i32 0, i32 2
  %36 = ptrtoint ptr %range_uni10.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %range_uni10.i47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i38, i32 %37)
  %cmp14.i48 = icmp ult i32 %and1.i38, %37
  br i1 %cmp14.i48, label %if.then16.i53, label %if.else26.i57

if.then16.i53:                                    ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i50 = sub i32 %shr.i37, %33
  %sub.tr.i51 = trunc i32 %sub.i50 to i16
  %38 = shl i16 %sub.tr.i51, 4
  %39 = and i16 %38, 112
  %40 = or i16 %conv5.i41, %39
  %conv25.i52 = or i16 %40, 256
  br label %if.end37.i59

if.else26.i57:                                    ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #9
  %sub31.i54 = sub i32 %shr.i37, %37
  %sub31.tr.i55 = trunc i32 %sub31.i54 to i16
  %41 = shl i16 %sub31.tr.i55, 4
  %42 = and i16 %41, 112
  %43 = or i16 %conv5.i41, %42
  %conv36.i56 = or i16 %43, 512
  br label %if.end37.i59

if.end37.i59:                                     ; preds = %if.else26.i57, %if.then16.i53, %if.then.i46
  %r.0.i58 = phi i16 [ %conv13.i45, %if.then.i46 ], [ %conv25.i52, %if.then16.i53 ], [ %conv36.i56, %if.else26.i57 ]
  %44 = zext i32 %and3.i40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and3.i40, label %if.end37.i59.rtd_convert_chan_gain.exit63_crit_edge [
    i32 2, label %sw.bb41.i61
    i32 1, label %sw.bb.i60
  ]

if.end37.i59.rtd_convert_chan_gain.exit63_crit_edge: ; preds = %if.end37.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtd_convert_chan_gain.exit63

sw.bb.i60:                                        ; preds = %if.end37.i59
  call void @__sanitizer_cov_trace_pc() #9
  %45 = or i16 %r.0.i58, 128
  br label %rtd_convert_chan_gain.exit63

sw.bb41.i61:                                      ; preds = %if.end37.i59
  call void @__sanitizer_cov_trace_pc() #9
  %46 = or i16 %r.0.i58, 1024
  br label %rtd_convert_chan_gain.exit63

rtd_convert_chan_gain.exit63:                     ; preds = %sw.bb41.i61, %sw.bb.i60, %if.end37.i59.rtd_convert_chan_gain.exit63_crit_edge
  %r.1.i62 = phi i16 [ %r.0.i58, %if.end37.i59.rtd_convert_chan_gain.exit63_crit_edge ], [ %45, %sw.bb.i60 ], [ %46, %sw.bb41.i61 ]
  %conv22 = zext i16 %r.1.i62 to i32
  %47 = tail call i32 @llvm.bswap.i32(i32 %conv22)
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr24 = getelementptr i8, ptr %49, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %47) #7, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %rtd_convert_chan_gain.exit63, %rtd_convert_chan_gain.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd_ao_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %cond = select i1 %cmp, i32 1, i32 16
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !68
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and2 = and i32 %5, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtd520_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @rtd520_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_rtd520__236_1360_rtd520_driver_init6, !1, !"__initcall__kmod_rtd520__236_1360_rtd520_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1360, i32 1}
!2 = !{ptr @__exitcall_rtd520_driver_exit, !1, !"__exitcall_rtd520_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1362, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1363, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1364, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1335, i32 17}
!12 = !{ptr @rtd520_driver, !13, !"rtd520_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1334, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/rtd520.c", i32 334, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/rtd520.c", i32 340, i32 12}
!18 = !{ptr @rtd520_boards, !19, !"rtd520_boards", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/rtd520.c", i32 332, i32 35}
!20 = !{ptr @rtd_ai_7520_range, !21, !"rtd_ai_7520_range", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/rtd520.c", i32 251, i32 35}
!22 = !{ptr @rtd_ai_4520_range, !23, !"rtd_ai_4520_range", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/rtd520.c", i32 278, i32 35}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1199, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtd_pci_latency_quirk._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtd_pci_latency_quirk._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rtd_ao_range, !33, !"rtd_ao_range", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/rtd520.c", i32 311, i32 35}
!34 = distinct !{null, !35, !"limit", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/rtd520.c", i32 485, i32 28}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/rtd520.c", i32 505, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtd520_probe_fifo_depth._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtd520_probe_fifo_depth._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/rtd520.c", i32 510, i32 3}
!43 = !{ptr @rtd520_probe_fifo_depth._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rtd520_probe_fifo_depth._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rtd520_pci_driver, !46, !"rtd520_pci_driver", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1354, i32 26}
!47 = !{ptr @rtd520_pci_table, !48, !"rtd520_pci_table", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/rtd520.c", i32 1347, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2154636840}
!59 = !{i64 4661383}
!60 = !{i64 2154637234}
!61 = !{i64 2154637628}
!62 = !{i64 4660763}
!63 = !{i64 2154638019}
!64 = !{i64 4660963}
!65 = !{i64 2154638689}
!66 = !{!"auto-init"}
!67 = !{i64 2154643889}
!68 = !{i64 4661801}
!69 = !{i64 2154614637}
!70 = !{i64 2154615218}
!71 = !{i64 2154615961}
!72 = !{i64 2154616186}
!73 = !{i64 2154616868}
!74 = !{i64 2154617365}
!75 = !{i64 2154617590}
!76 = !{i64 2154618272}
!77 = !{i64 2154618769}
!78 = !{i64 2154619266}
!79 = !{i64 2154611599}
!80 = !{i64 2154611989}
!81 = !{i64 2154612379}
!82 = !{i64 2154613062}
!83 = !{i64 2154619808}
!84 = !{i64 2154620198}
!85 = !{i64 2154620588}
!86 = !{i64 2154620978}
!87 = !{i64 2154621368}
!88 = !{i64 2154621758}
!89 = !{i64 2154622928}
!90 = !{i64 2154624131}
!91 = !{i64 2154624801}
!92 = !{i64 2154625295}
!93 = !{i64 2154625685}
!94 = !{i64 2154626134}
!95 = !{i64 2154626580}
!96 = !{i64 2154627004}
!97 = !{i64 2154627441}
!98 = !{i64 2154627832}
!99 = !{i64 2154628502}
!100 = !{i64 2154628830}
!101 = !{i64 2154629575}
!102 = !{i32 0, i32 33}
!103 = !{i64 2154629795}
!104 = !{i64 2154630185}
!105 = !{i64 2154630575}
!106 = !{i64 2154630965}
!107 = !{i64 2154631355}
!108 = !{i64 2154632557}
!109 = !{i64 2154633041}
!110 = !{i64 2154633504}
!111 = !{i64 2154633929}
!112 = !{i64 2154634638}
!113 = !{i64 2154634861}
!114 = !{i64 2154635276}
!115 = !{i64 2154635717}
!116 = !{i64 2154636193}
!117 = !{i64 4661186}
!118 = !{i64 2154636538}
!119 = !{i64 2154638909}
!120 = !{i64 2154639299}
!121 = !{i64 2154639689}
!122 = !{i64 2154640117}
!123 = !{i64 2154640564}
!124 = !{i64 2154640973}
!125 = !{i64 2154605310}
!126 = !{i64 2154605700}
!127 = !{i64 2154606090}
!128 = !{i64 2154606757}
!129 = !{i64 2154608707}
!130 = !{i64 2154613627}
!131 = !{i64 2154614140}
!132 = !{i64 2154603373}
!133 = !{i64 2154603802}
!134 = !{i64 2154604736}
!135 = !{i64 2154611258}
!136 = !{i64 2154632216}
