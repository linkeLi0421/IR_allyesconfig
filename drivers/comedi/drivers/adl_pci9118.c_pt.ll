; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adl_pci9118.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adl_pci9118.c"
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
%struct.pci9118_boardinfo = type { ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci9118_private = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i32, [2 x %struct.pci9118_dmabuf], i32, i8, i8, i32 }
%struct.pci9118_dmabuf = type { ptr, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }

@__initcall__kmod_adl_pci9118__236_1731_adl_pci9118_driver_init6 = internal global ptr @adl_pci9118_driver_init, section ".initcall6.init", align 4
@adl_pci9118_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pci9118_attach, ptr @pci9118_detach, ptr @pci9118_auto_attach, i32 3, ptr @pci9118_boards, i32 8 }, [60 x i8] zeroinitializer }, align 32
@adl_pci9118_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adl_pci9118_pci_table, ptr @adl_pci9118_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adl_pci9118_driver_exit = internal global ptr @adl_pci9118_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"adl_pci9118.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [48 x i8] c"adl_pci9118.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"adl_pci9118.file=drivers/comedi/drivers/adl_pci9118\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"adl_pci9118.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci9118\00", [20 x i8] zeroinitializer }, align 32
@pci9118_boards = internal constant { [3 x %struct.pci9118_boardinfo], [40 x i8] } { [3 x %struct.pci9118_boardinfo] [%struct.pci9118_boardinfo { ptr @.str.53, i8 0 }, %struct.pci9118_boardinfo { ptr @.str.54, i8 64 }, %struct.pci9118_boardinfo { ptr @.str.55, i8 -128 }], [40 x i8] zeroinitializer }, align 32
@pci9118_find_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no supported board found! (req. bus/slot : %d/%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci9118_find_pci\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/adl_pci9118.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci9118_find_pci._entry_ptr = internal global ptr @pci9118_find_pci._entry, section ".printk_index", align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@pci9118_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AMCC IRQ - MASTER DMA ABORT!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci9118_interrupt\00", [46 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr = internal global ptr @pci9118_interrupt._entry, section ".printk_index", align 4
@pci9118_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 703, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AMCC IRQ - TARGET DMA ABORT!\0A\00", [34 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr.10 = internal global ptr @pci9118_interrupt._entry.8, section ".printk_index", align 4
@pci9118_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"A/D FIFO Full status (Fatal Error!)\0A\00", [59 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr.13 = internal global ptr @pci9118_interrupt._entry.11, section ".printk_index", align 4
@pci9118_interrupt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"A/D Burst Mode Overrun Status (Fatal Error!)\0A\00", [50 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr.16 = internal global ptr @pci9118_interrupt._entry.14, section ".printk_index", align 4
@pci9118_interrupt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"A/D Over Speed Status (Warning!)\0A\00", [62 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr.19 = internal global ptr @pci9118_interrupt._entry.17, section ".printk_index", align 4
@pci9118_interrupt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 727, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"A/D Overrun Status (Fatal Error!)\0A\00", [61 x i8] zeroinitializer }, align 32
@pci9118_interrupt._entry_ptr.22 = internal global ptr @pci9118_interrupt._entry.20, section ".printk_index", align 4
@pci9118hg_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@pci9118_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@pci9118_ai_check_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Differential and single ended inputs can't be mixed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci9118_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@pci9118_ai_check_chanlist._entry_ptr = internal global ptr @pci9118_ai_check_chanlist._entry, section ".printk_index", align 4
@pci9118_ai_check_chanlist._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Bipolar and unipolar ranges can't be mixed!\0A\00", [51 x i8] zeroinitializer }, align 32
@pci9118_ai_check_chanlist._entry_ptr.29 = internal global ptr @pci9118_ai_check_chanlist._entry.27, section ".printk_index", align 4
@pci9118_ai_check_chanlist._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"AREF_DIFF is only available for the first 8 channels!\0A\00", [41 x i8] zeroinitializer }, align 32
@pci9118_ai_check_chanlist._entry_ptr.32 = internal global ptr @pci9118_ai_check_chanlist._entry.30, section ".printk_index", align 4
@pci9118_ai_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1019, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"range/channel list is too long for actual configuration!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci9118_ai_cmd\00", [17 x i8] zeroinitializer }, align 32
@pci9118_ai_cmd._entry_ptr = internal global ptr @pci9118_ai_cmd._entry, section ".printk_index", align 4
@pci9118_ai_cmd._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"cmd->scan_begin_src=TRIG_TIMER works only with bus mastering!\0A\00", [33 x i8] zeroinitializer }, align 32
@pci9118_ai_cmd._entry_ptr.37 = internal global ptr @pci9118_ai_cmd._entry.35, section ".printk_index", align 4
@pci9118_ai_cmd._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 1100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Unable to determine acquisition mode! BUG in (*do_cmdtest)?\0A\00", [35 x i8] zeroinitializer }, align 32
@pci9118_ai_cmd._entry_ptr.40 = internal global ptr @pci9118_ai_cmd._entry.38, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci9118_ai_setup_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 827, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"WAR: DMA0 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci9118_ai_setup_dma\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pci9118_ai_setup_dma._entry_ptr = internal global ptr @pci9118_ai_setup_dma._entry, section ".printk_index", align 4
@pci9118_ai_setup_dma._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.3, i32 834, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ERR: DMA0 buf len bug? (%d<4)\0A\00", [33 x i8] zeroinitializer }, align 32
@pci9118_ai_setup_dma._entry_ptr.46 = internal global ptr @pci9118_ai_setup_dma._entry.44, section ".printk_index", align 4
@pci9118_ai_setup_dma._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.3, i32 845, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"WAR: DMA1 buf too short, can't support CMDF_WAKE_EOS (%d<%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@pci9118_ai_setup_dma._entry_ptr.49 = internal global ptr @pci9118_ai_setup_dma._entry.47, section ".printk_index", align 4
@pci9118_ai_setup_dma._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.3, i32 852, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ERR: DMA1 buf len bug? (%d<4)\0A\00", [33 x i8] zeroinitializer }, align 32
@pci9118_ai_setup_dma._entry_ptr.52 = internal global ptr @pci9118_ai_setup_dma._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci9118dg\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci9118hg\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci9118hr\00", [22 x i8] zeroinitializer }, align 32
@adl_pci9118_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4328, i32 32985, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 64]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 128]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"adl_pci9118_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1698, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"adl_pci9118_pci_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1725, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1699, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"pci9118_boards\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 176, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1453, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 697, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 703, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 710, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 716, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 722, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 727, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"pci9118hg_ai_range\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 151, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"pci9118_ai_range\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 138, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 305, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 311, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 317, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1018, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1066, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1099, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 825, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 832, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 843, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 850, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 178, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 181, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 185, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant [22 x i8] c"adl_pci9118_pci_table\00", align 1
@___asan_gen_.216 = private constant [40 x i8] c"../drivers/comedi/drivers/adl_pci9118.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1717, i32 35 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_adl_pci9118_driver_exit, ptr @__initcall__kmod_adl_pci9118__236_1731_adl_pci9118_driver_init6, ptr @adl_pci9118_driver_exit, ptr @pci9118_ai_check_chanlist._entry, ptr @pci9118_ai_check_chanlist._entry.27, ptr @pci9118_ai_check_chanlist._entry.30, ptr @pci9118_ai_check_chanlist._entry_ptr, ptr @pci9118_ai_check_chanlist._entry_ptr.29, ptr @pci9118_ai_check_chanlist._entry_ptr.32, ptr @pci9118_ai_cmd._entry, ptr @pci9118_ai_cmd._entry.35, ptr @pci9118_ai_cmd._entry.38, ptr @pci9118_ai_cmd._entry_ptr, ptr @pci9118_ai_cmd._entry_ptr.37, ptr @pci9118_ai_cmd._entry_ptr.40, ptr @pci9118_ai_setup_dma._entry, ptr @pci9118_ai_setup_dma._entry.44, ptr @pci9118_ai_setup_dma._entry.47, ptr @pci9118_ai_setup_dma._entry.50, ptr @pci9118_ai_setup_dma._entry_ptr, ptr @pci9118_ai_setup_dma._entry_ptr.46, ptr @pci9118_ai_setup_dma._entry_ptr.49, ptr @pci9118_ai_setup_dma._entry_ptr.52, ptr @pci9118_find_pci._entry, ptr @pci9118_find_pci._entry_ptr, ptr @pci9118_interrupt._entry, ptr @pci9118_interrupt._entry.11, ptr @pci9118_interrupt._entry.14, ptr @pci9118_interrupt._entry.17, ptr @pci9118_interrupt._entry.20, ptr @pci9118_interrupt._entry.8, ptr @pci9118_interrupt._entry_ptr, ptr @pci9118_interrupt._entry_ptr.10, ptr @pci9118_interrupt._entry_ptr.13, ptr @pci9118_interrupt._entry_ptr.16, ptr @pci9118_interrupt._entry_ptr.19, ptr @pci9118_interrupt._entry_ptr.22, ptr @adl_pci9118_driver, ptr @adl_pci9118_pci_driver, ptr @.str, ptr @pci9118_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @pci9118hg_ai_range, ptr @pci9118_ai_range, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @adl_pci9118_pci_table], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci9118_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci9118_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_boards to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_find_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_interrupt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118hg_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_check_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_check_chanlist._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_check_chanlist._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_cmd._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_cmd._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_setup_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_setup_dma._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_setup_dma._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci9118_ai_setup_dma._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci9118_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci9118_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adl_pci9118_driver, ptr noundef nonnull @adl_pci9118_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adl_pci9118_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adl_pci9118_driver, ptr noundef nonnull @adl_pci9118_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %options.i = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %4 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options.i, align 4
  %arrayidx2.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %call36.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #7
  %cmp.not37.i = icmp eq ptr %call36.i, null
  br i1 %cmp.not37.i, label %entry.pci9118_find_pci.exit_crit_edge, label %while.body.lr.ph.i

entry.pci9118_find_pci.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_find_pci.exit

while.body.lr.ph.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not.i = icmp eq i32 %7, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool10.not.i, i1 false
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call38.i = phi ptr [ %call36.i, %while.body.lr.ph.i ], [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %call38.i, i32 0, i32 7
  %8 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4328, i16 %9)
  %cmp3.not.i = icmp eq i16 %9, 4328
  br i1 %cmp3.not.i, label %if.end.i, label %while.body.i.while.cond.backedge.i_crit_edge

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %while.body.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %call38.i, i32 0, i32 8
  %10 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32551, i16 %11)
  %cmp6.not.i = icmp eq i16 %11, -32551
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.while.cond.backedge.i_crit_edge

if.end.i.while.cond.backedge.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

if.end9.i:                                        ; preds = %if.end.i
  br i1 %or.cond.i, label %if.end9.i.if.end_crit_edge, label %if.then11.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then11.i:                                      ; preds = %if.end9.i
  %bus12.i = getelementptr inbounds %struct.pci_dev, ptr %call38.i, i32 0, i32 1
  %12 = ptrtoint ptr %bus12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus12.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number.i, align 4
  %conv13.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv13.i)
  %cmp14.not.i = icmp eq i32 %5, %conv13.i
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %if.then11.i.while.cond.backedge.i_crit_edge

if.then11.i.while.cond.backedge.i_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

lor.lhs.false16.i:                                ; preds = %if.then11.i
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %call38.i, i32 0, i32 6
  %16 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %17, 3
  %and.i = and i32 %shr.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp17.not.i = icmp eq i32 %and.i, %7
  br i1 %cmp17.not.i, label %lor.lhs.false16.i.if.end_crit_edge, label %lor.lhs.false16.i.while.cond.backedge.i_crit_edge

lor.lhs.false16.i.while.cond.backedge.i_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

lor.lhs.false16.i.if.end_crit_edge:               ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.backedge.i:                            ; preds = %lor.lhs.false16.i.while.cond.backedge.i_crit_edge, %if.then11.i.while.cond.backedge.i_crit_edge, %if.end.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge
  %call.i = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call38.i) #7
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.backedge.i.pci9118_find_pci.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.backedge.i.pci9118_find_pci.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_find_pci.exit

pci9118_find_pci.exit:                            ; preds = %while.cond.backedge.i.pci9118_find_pci.exit_crit_edge, %entry.pci9118_find_pci.exit_crit_edge
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef %5, i32 noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false16.i.if.end_crit_edge, %if.end9.i.if.end_crit_edge
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %call38.i, i32 0, i32 44
  %call4 = tail call i32 @comedi_set_hw_dev(ptr noundef %dev, ptr noundef %dev3) #7
  %call5 = tail call fastcc i32 @pci9118_common_attach(ptr noundef %dev, i32 noundef %1, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pci9118_find_pci.exit
  %retval.0 = phi i32 [ %call5, %if.end ], [ -5, %pci9118_find_pci.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci9118_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pci9118_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.pci9118_free_dma.exit_crit_edge, label %for.cond.preheader.i

if.end.pci9118_free_dma.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_free_dma.exit

for.cond.preheader.i:                             ; preds = %if.end
  %hw_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %arrayidx.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.then3.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_dev.i, align 4
  %size.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 0, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %hw.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw.i, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %13, null
  br i1 %tobool2.not.1.i, label %for.inc.i.pci9118_free_dma.exit_crit_edge, label %if.then3.1.i

for.inc.i.pci9118_free_dma.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_free_dma.exit

if.then3.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_dev.i, align 4
  %size.1.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 1, i32 2
  %16 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.1.i, align 4
  %hw.1.i = getelementptr %struct.pci9118_private, ptr %3, i32 0, i32 13, i32 1, i32 1
  %18 = ptrtoint ptr %hw.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw.1.i, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #7
  br label %pci9118_free_dma.exit

pci9118_free_dma.exit:                            ; preds = %if.then3.1.i, %for.inc.i.pci9118_free_dma.exit_crit_edge, %if.end.pci9118_free_dma.exit_crit_edge
  tail call void @pci_dev_put(ptr noundef %call) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %context)
  %cmp = icmp ugt i32 %context, 2
  %arrayidx = getelementptr [3 x %struct.pci9118_boardinfo], ptr @pci9118_boards, i32 0, i32 %context
  %tobool.not12 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not12
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call3 = tail call ptr @pci_dev_get(ptr noundef %call) #7
  %call4 = tail call fastcc i32 @pci9118_common_attach(ptr noundef %dev, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_set_hw_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci9118_common_attach(ptr noundef %dev, i32 noundef %ext_mux, i32 noundef %softsshdelay) unnamed_addr #2 align 64 {
entry:
  %u16w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %u16w) #7
  %2 = ptrtoint ptr %u16w to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %u16w, align 2, !annotation !116
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 84) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %call) #7
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call1, align 4
  %arrayidx7 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iobase, align 4
  %call10 = tail call ptr @comedi_8254_init(i32 noundef %7, i32 noundef 250, i32 noundef 4, i32 noundef 0) #7
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %pacer, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end5.cleanup_crit_edge, label %if.end14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  tail call fastcc void @pci9118_reset(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.end14.if.end23_crit_edge, label %if.then16

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @pci9118_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %13, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then19, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %if.then16
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %irq21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq21, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %hw_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %dma_doublebuf.i = getelementptr inbounds %struct.pci9118_private, ptr %18, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 0
  %hw.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 0, i32 1
  %19 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_dev.i, align 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef 16384, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %if.then19.for.inc20.i_crit_edge

if.then19.for.inc20.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.i:                                        ; preds = %if.then19
  %22 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_dev.i, align 4
  %call.i.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %23, i32 noundef 8192, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.1.i, ptr %arrayidx.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.for.inc20.i_crit_edge

for.inc.i.for.inc20.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %25 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_dev.i, align 4
  %call.i.2.i = tail call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef 4096, ptr noundef %hw.i, i32 noundef 3264, i32 noundef 0) #7
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.2.i, ptr %arrayidx.i, align 4
  %tobool.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end23_crit_edge, label %for.inc.1.i.for.inc20.i_crit_edge

for.inc.1.i.for.inc20.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.i

for.inc.1.i.if.end23_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.inc20.i:                                      ; preds = %for.inc.1.i.for.inc20.i_crit_edge, %for.inc.i.for.inc20.i_crit_edge, %if.then19.for.inc20.i_crit_edge
  %order.038.i = phi i32 [ 2, %if.then19.for.inc20.i_crit_edge ], [ 1, %for.inc.i.for.inc20.i_crit_edge ], [ 0, %for.inc.1.i.for.inc20.i_crit_edge ]
  %shl10.i = shl nuw nsw i32 4096, %order.038.i
  %size.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 0, i32 2
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl10.i, ptr %size.i, align 4
  %29 = ptrtoint ptr %dma_doublebuf.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %dma_doublebuf.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %dma_doublebuf.i, align 4
  %arrayidx.1.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 1
  %hw.1.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 1, i32 1
  %30 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_dev.i, align 4
  %call.i.142.i = tail call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef 16384, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.142.i, ptr %arrayidx.1.i, align 4
  %tobool.not.143.i = icmp eq ptr %call.i.142.i, null
  br i1 %tobool.not.143.i, label %for.inc.144.i, label %for.inc20.i.for.inc20.1.i_crit_edge

for.inc20.i.for.inc20.1.i_crit_edge:              ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.144.i:                                    ; preds = %for.inc20.i
  %33 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_dev.i, align 4
  %call.i.1.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef 8192, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %35 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.1.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.1.i = icmp eq ptr %call.i.1.1.i, null
  br i1 %tobool.not.1.1.i, label %for.inc.1.1.i, label %for.inc.144.i.for.inc20.1.i_crit_edge

for.inc.144.i.for.inc20.1.i_crit_edge:            ; preds = %for.inc.144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.1.1.i:                                    ; preds = %for.inc.144.i
  %36 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_dev.i, align 4
  %call.i.2.1.i = tail call ptr @dma_alloc_attrs(ptr noundef %37, i32 noundef 4096, ptr noundef %hw.1.i, i32 noundef 3264, i32 noundef 0) #7
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.2.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.2.1.i = icmp eq ptr %call.i.2.1.i, null
  br i1 %tobool.not.2.1.i, label %for.inc.1.1.i.if.end23_crit_edge, label %for.inc.1.1.i.for.inc20.1.i_crit_edge

for.inc.1.1.i.for.inc20.1.i_crit_edge:            ; preds = %for.inc.1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1.i

for.inc.1.1.i.if.end23_crit_edge:                 ; preds = %for.inc.1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.inc20.1.i:                                    ; preds = %for.inc.1.1.i.for.inc20.1.i_crit_edge, %for.inc.144.i.for.inc20.1.i_crit_edge, %for.inc20.i.for.inc20.1.i_crit_edge
  %order.038.1.i = phi i32 [ 2, %for.inc20.i.for.inc20.1.i_crit_edge ], [ 1, %for.inc.144.i.for.inc20.1.i_crit_edge ], [ 0, %for.inc.1.1.i.for.inc20.1.i_crit_edge ]
  %shl10.1.i = shl nuw nsw i32 4096, %order.038.1.i
  %size.1.i = getelementptr %struct.pci9118_private, ptr %18, i32 0, i32 13, i32 1, i32 2
  %39 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl10.1.i, ptr %size.1.i, align 4
  %40 = ptrtoint ptr %dma_doublebuf.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load16.1.i = load i8, ptr %dma_doublebuf.i, align 4
  %bf.set18.1.i = or i8 %bf.load16.1.i, 64
  store i8 %bf.set18.1.i, ptr %dma_doublebuf.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.inc20.1.i, %for.inc.1.1.i.if.end23_crit_edge, %for.inc.1.i.if.end23_crit_edge, %if.then16.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ext_mux)
  %cmp24 = icmp sgt i32 %ext_mux, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %softsshdelay)
  %cmp29 = icmp sgt i32 %softsshdelay, 0
  %minmaxop = select i1 %cmp29, i32 128, i32 256
  %spec.select = tail call i32 @llvm.smin.i32(i32 %minmaxop, i32 %ext_mux)
  %usemux = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 1
  %41 = ptrtoint ptr %usemux to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %usemux, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %usemux, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %usemux35 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 1
  %42 = ptrtoint ptr %usemux35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load36 = load i8, ptr %usemux35, align 4
  %bf.clear37 = and i8 %bf.load36, -9
  store i8 %bf.clear37, ptr %usemux35, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then25
  %ext_mux.addr.1 = phi i32 [ %spec.select, %if.then25 ], [ %ext_mux, %if.else ]
  %43 = call i32 @llvm.abs.i32(i32 %softsshdelay, i1 false)
  %44 = lshr i32 %softsshdelay, 24
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, -128
  %47 = lshr i32 %softsshdelay, 24
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, -128
  %50 = xor i8 %49, -128
  %51 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 14
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %43, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 15
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %46, ptr %53, align 4
  %55 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %50, ptr %55, align 1
  %call48 = call i32 @pci_read_config_word(ptr noundef %call, i32 noundef 4, ptr noundef nonnull %u16w) #7
  %57 = ptrtoint ptr %u16w to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %u16w, align 2
  %59 = or i16 %58, 64
  %call50 = call i32 @pci_write_config_word(ptr noundef %call, i32 noundef 4, i16 noundef zeroext %59) #7
  %call51 = call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end39
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 7405568, ptr %subdev_flags, align 4
  %usemux56 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 1
  %64 = ptrtoint ptr %usemux56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load57 = load i8, ptr %usemux56, align 4
  %65 = and i8 %bf.load57, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool59.not = icmp eq i8 %65, 0
  %spec.select215 = select i1 %tobool59.not, i32 16, i32 %ext_mux.addr.1
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 3
  %66 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select215, ptr %n_chan, align 4
  %ai_is_16bit = getelementptr inbounds %struct.pci9118_boardinfo, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %ai_is_16bit to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load60 = load i8, ptr %ai_is_16bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load60)
  %tobool63.not = icmp sgt i8 %bf.load60, -1
  %cond64 = select i1 %tobool63.not, i32 4095, i32 65535
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 13
  %68 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %cond64, ptr %maxdata, align 4
  %69 = ptrtoint ptr %ai_is_16bit to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load65 = load i8, ptr %ai_is_16bit, align 4
  %70 = and i8 %bf.load65, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool69.not = icmp eq i8 %70, 0
  %cond70 = select i1 %tobool69.not, ptr @pci9118_ai_range, ptr @pci9118hg_ai_range
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 15
  %71 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %cond70, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 18
  %72 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @pci9118_ai_insn_read, ptr %insn_read, align 4
  %irq71 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %73 = ptrtoint ptr %irq71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool72.not = icmp eq i32 %74, 0
  br i1 %tobool72.not, label %if.end54.if.end76_crit_edge, label %if.then73

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then73:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %75 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %61, ptr %read_subdev, align 4
  %76 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %subdev_flags, align 4
  %or75 = or i32 %77, 32768
  store i32 %or75, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 5
  %78 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 255, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 23
  %79 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @pci9118_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 22
  %80 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @pci9118_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 25
  %81 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @pci9118_ai_cancel, ptr %cancel, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 27
  %82 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @pci9118_ai_munge, ptr %munge, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.end54.if.end76_crit_edge
  %83 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %84)
  %cmp78 = icmp eq i32 %84, 65535
  %spec.select220 = select i1 %cmp78, i32 10000, i32 3000
  %85 = getelementptr inbounds %struct.pci9118_private, ptr %call1, i32 0, i32 17
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %spec.select220, ptr %85, align 4
  %87 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %subdevices, align 4
  %arrayidx85 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1
  %type86 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 2
  %89 = ptrtoint ptr %type86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %type86, align 4
  %subdev_flags87 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 4
  %90 = ptrtoint ptr %subdev_flags87 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 3276800, ptr %subdev_flags87, align 4
  %n_chan88 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 3
  %91 = ptrtoint ptr %n_chan88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %n_chan88, align 4
  %maxdata89 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 13
  %92 = ptrtoint ptr %maxdata89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4095, ptr %maxdata89, align 4
  %range_table90 = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 15
  %93 = ptrtoint ptr %range_table90 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @range_bipolar10, ptr %range_table90, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 19
  %94 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @pci9118_ao_insn_write, ptr %insn_write, align 4
  %call91 = call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.cond.preheader, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end76
  %95 = ptrtoint ptr %n_chan88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_chan88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp96216 = icmp sgt i32 %96, 0
  br i1 %cmp96216, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %readback = getelementptr %struct.comedi_subdevice, ptr %88, i32 1, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %97 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %readback, align 4
  %arrayidx98 = getelementptr i32, ptr %98, i32 %i.0217
  %99 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2047, ptr %arrayidx98, align 4
  %inc = add nuw nsw i32 %i.0217, 1
  %100 = ptrtoint ptr %n_chan88 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_chan88, align 4
  %cmp96 = icmp slt i32 %inc, %101
  br i1 %cmp96, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %102 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %subdevices, align 4
  %type101 = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 2
  %104 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %type101, align 4
  %subdev_flags102 = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 4
  %105 = ptrtoint ptr %subdev_flags102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 65536, ptr %subdev_flags102, align 4
  %n_chan103 = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 3
  %106 = ptrtoint ptr %n_chan103 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 4, ptr %n_chan103, align 4
  %maxdata104 = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 13
  %107 = ptrtoint ptr %maxdata104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %maxdata104, align 4
  %range_table105 = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 15
  %108 = ptrtoint ptr %range_table105 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @range_unipolar5, ptr %range_table105, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %103, i32 2, i32 20
  %109 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @pci9118_di_insn_bits, ptr %insn_bits, align 4
  %110 = load ptr, ptr %subdevices, align 4
  %type108 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 2
  %111 = ptrtoint ptr %type108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %type108, align 4
  %subdev_flags109 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 4
  %112 = ptrtoint ptr %subdev_flags109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 131072, ptr %subdev_flags109, align 4
  %n_chan110 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 3
  %113 = ptrtoint ptr %n_chan110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4, ptr %n_chan110, align 4
  %maxdata111 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 13
  %114 = ptrtoint ptr %maxdata111 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %maxdata111, align 4
  %range_table112 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 15
  %115 = ptrtoint ptr %range_table112 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @range_unipolar5, ptr %range_table112, align 4
  %insn_bits113 = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 20
  %116 = ptrtoint ptr %insn_bits113 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @pci9118_do_insn_bits, ptr %insn_bits113, align 4
  %117 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %iobase, align 4
  %add115 = add i32 %118, 28
  %and = and i32 %add115, 1048575
  %add116 = or i32 %and, -18874368
  %119 = inttoptr i32 %add116 to ptr
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %119) #7, !srcloc !117
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %shr = lshr i32 %121, 4
  %state = getelementptr %struct.comedi_subdevice, ptr %110, i32 3, i32 29
  %122 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %shr, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end76.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call51, %if.end39.cleanup_crit_edge ], [ %call91, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %u16w) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci9118_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add5 = add i32 %4, 24
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add12 = add i32 %7, 48
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i = add i32 %10, 52
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #7, !srcloc !120
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add17 = add i32 %13, 56
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %14 = inttoptr i32 %add19 to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add24 = add i32 %17, 24
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %18 = inttoptr i32 %add26 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add33 = add i32 %21, 40
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %22 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add40 = add i32 %24, 44
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %25 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 16777216) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add47 = add i32 %27, 44
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %28 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 33554432) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add54 = add i32 %30, 16
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %31 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 -16318464) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %add61 = add i32 %33, 20
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %34 = inttoptr i32 %add63 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 -16318464) #7, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %sampl.i = alloca i16, align 2
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
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %add5 = add i32 %10, 56
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %11 = inttoptr i32 %add7 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #7, !srcloc !117
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %14 = and i32 %8, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  %and12 = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %or = or i32 %13, 16711680
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %add17 = add i32 %17, 56
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %18 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #7, !srcloc !120
  %and21 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #10
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %events, align 4
  %or27 = or i32 %24, 16
  store i32 %or27, ptr %events, align 4
  br label %interrupt_exit

if.end28:                                         ; preds = %do.body
  %and29 = and i32 %13, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end39, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev35 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.9) #10
  %async36 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %async36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %async36, align 4
  %events37 = getelementptr inbounds %struct.comedi_async, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %events37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events37, align 4
  %or38 = or i32 %30, 16
  store i32 %or38, ptr %events37, align 4
  br label %interrupt_exit

if.end39:                                         ; preds = %if.end28
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add42 = add i32 %32, 24
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %33 = inttoptr i32 %add44 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #7, !srcloc !117
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %and48 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp = icmp eq i32 %and48, 0
  br i1 %cmp, label %do.end52, label %if.end57

do.end52:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev53 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.12) #10
  %async54 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %async54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %async54, align 4
  %events55 = getelementptr inbounds %struct.comedi_async, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %events55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %events55, align 4
  %or56 = or i32 %41, 48
  store i32 %or56, ptr %events55, align 4
  br label %interrupt_exit

if.end57:                                         ; preds = %if.end39
  %and58 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end68, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev64 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %42 = ptrtoint ptr %class_dev64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.15) #10
  %async65 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %async65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %async65, align 4
  %events66 = getelementptr inbounds %struct.comedi_async, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %events66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %events66, align 4
  %or67 = or i32 %47, 48
  store i32 %or67, ptr %events66, align 4
  br label %interrupt_exit

if.end68:                                         ; preds = %if.end57
  %and69 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end79, label %do.end74

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev75 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %48 = ptrtoint ptr %class_dev75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.18) #10
  %async76 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %async76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %async76, align 4
  %events77 = getelementptr inbounds %struct.comedi_async, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %events77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %events77, align 4
  %or78 = or i32 %53, 16
  store i32 %or78, ptr %events77, align 4
  br label %interrupt_exit

if.end79:                                         ; preds = %if.end68
  %and80 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end90, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev86 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %54 = ptrtoint ptr %class_dev86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %class_dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.21) #10
  %async87 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %56 = ptrtoint ptr %async87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %async87, align 4
  %events88 = getelementptr inbounds %struct.comedi_async, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %events88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %events88, align 4
  %or89 = or i32 %59, 48
  store i32 %or89, ptr %events88, align 4
  br label %interrupt_exit

if.end90:                                         ; preds = %if.end79
  %ai_do = getelementptr inbounds %struct.pci9118_private, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %ai_do to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ai_do, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool91.not = icmp eq i32 %61, 0
  br i1 %tobool91.not, label %if.end90.cleanup_crit_edge, label %if.end93

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %if.end90
  %ai12_startstop = getelementptr inbounds %struct.pci9118_private, ptr %3, i32 0, i32 11
  %62 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ai12_startstop, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool94.not = icmp eq i8 %63, 0
  %and96 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %or.cond199 = select i1 %tobool94.not, i1 true, i1 %tobool97.not
  %64 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool100.not = icmp eq i32 %64, 0
  %or.cond200 = select i1 %or.cond199, i1 true, i1 %tobool100.not
  br i1 %or.cond200, label %if.end93.if.end139_crit_edge, label %if.then101

if.end93.if.end139_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then101:                                       ; preds = %if.end93
  %conv = zext i8 %63 to i32
  %and103 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.then101
  %and108 = and i8 %63, -2
  %65 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %and108, ptr %ai12_startstop, align 4
  %66 = and i8 %63, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool113.not = icmp eq i8 %66, 0
  br i1 %tobool113.not, label %if.then114, label %if.then105.if.end115_crit_edge

if.then105.if.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pci9118_exttrg_enable(ptr noundef %d, i1 noundef zeroext false)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then105.if.end115_crit_edge
  %67 = ptrtoint ptr %ai_do to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ai_do, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.end115.pci9118_start_pacer.exit_crit_edge [
    i32 1, label %if.end115.if.then.i_crit_edge
    i32 2, label %if.end115.if.then.i_crit_edge214
    i32 4, label %if.end115.if.then.i_crit_edge215
  ]

if.end115.if.then.i_crit_edge215:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end115.if.then.i_crit_edge214:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end115.if.then.i_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end115.pci9118_start_pacer.exit_crit_edge:     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_start_pacer.exit

if.then.i:                                        ; preds = %if.end115.if.then.i_crit_edge, %if.end115.if.then.i_crit_edge214, %if.end115.if.then.i_crit_edge215
  %pacer.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 2
  %70 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pacer.i, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %71, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #7
  br label %pci9118_start_pacer.exit

pci9118_start_pacer.exit:                         ; preds = %if.then.i, %if.end115.pci9118_start_pacer.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %ai_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %3, i32 0, i32 2
  %72 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ai_ctrl, align 1
  %conv120 = zext i8 %73 to i32
  %74 = shl nuw i32 %conv120, 24
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase, align 4
  %add122 = add i32 %76, 24
  %and123 = and i32 %add122, 1048575
  %add124 = or i32 %and123, -18874368
  %77 = inttoptr i32 %add124 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %77, i32 %74) #7, !srcloc !120
  br label %if.end139

if.else:                                          ; preds = %if.then101
  %and128 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else.if.end139_crit_edge, label %if.then130

if.else.if.end139_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then130:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and133 = and i8 %63, -3
  %78 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %and133, ptr %ai12_startstop, align 4
  tail call fastcc void @pci9118_exttrg_enable(ptr noundef %d, i1 noundef zeroext false)
  %ai_neverending = getelementptr inbounds %struct.pci9118_private, ptr %3, i32 0, i32 1
  %79 = ptrtoint ptr %ai_neverending to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load135 = load i8, ptr %ai_neverending, align 4
  %bf.clear = and i8 %bf.load135, -33
  store i8 %bf.clear, ptr %ai_neverending, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then130, %if.else.if.end139_crit_edge, %pci9118_start_pacer.exit, %if.end93.if.end139_crit_edge
  %usedma = getelementptr inbounds %struct.pci9118_private, ptr %3, i32 0, i32 1
  %80 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load140 = load i8, ptr %usedma, align 4
  %81 = and i8 %bf.load140, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool144.not = icmp eq i8 %81, 0
  %82 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %private, align 4
  %async.i203 = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  %84 = ptrtoint ptr %async.i203 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %async.i203, align 4
  br i1 %tobool144.not, label %if.else146, label %if.then145

if.then145:                                       ; preds = %if.end139
  %dma_actbuf.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 12
  %86 = ptrtoint ptr %dma_actbuf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_actbuf.i, align 4
  %arrayidx.i = getelementptr %struct.pci9118_private, ptr %83, i32 0, i32 13, i32 %87
  %use_size.i = getelementptr %struct.pci9118_private, ptr %83, i32 0, i32 13, i32 %87, i32 3
  %88 = ptrtoint ptr %use_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %use_size.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %91, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %89, %cond.i.i.i
  %ai_add_front.i.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 8
  %92 = ptrtoint ptr %ai_add_front.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ai_add_front.i.i, align 4
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %85, i32 0, i32 17, i32 13
  %94 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chanlist_len.i.i, align 4
  %add.i.i = add i32 %95, %93
  %ai_add_back.i.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 9
  %96 = ptrtoint ptr %ai_add_back.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ai_add_back.i.i, align 4
  %add2.i.i = add i32 %add.i.i, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %95)
  %cmp.i.i = icmp eq i32 %add2.i.i, %95
  br i1 %cmp.i.i, label %if.then145.pci9118_ai_samples_ready.exit.i_crit_edge, label %if.end.i.i

if.then145.pci9118_ai_samples_ready.exit.i_crit_edge: ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_samples_ready.exit.i

if.end.i.i:                                       ; preds = %if.then145
  %div.i.i = udiv i32 %shr.i.i, %add2.i.i
  %mul.i.i = mul i32 %div.i.i, %95
  %mul5.i.i = mul i32 %div.i.i, %add2.i.i
  %sub.i.i = sub i32 %shr.i.i, %mul5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not76.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not76.i.i, label %if.end.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, label %while.body.preheader.i.i

if.end.i.i.pci9118_ai_samples_ready.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_samples_ready.exit.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i
  %ai_act_dmapos.i.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 7
  %98 = ptrtoint ptr %ai_act_dmapos.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ai_act_dmapos.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end27.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %n_samples.083.i.i = phi i32 [ %n_samples.1.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %mul.i.i, %while.body.preheader.i.i ]
  %dma_pos.082.i.i = phi i32 [ %dma_pos.2.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %99, %while.body.preheader.i.i ]
  %stop_pos.080.i.i = phi i32 [ %add29.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %while.body.preheader.i.i ]
  %start_pos.078.i.i = phi i32 [ %add28.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %93, %while.body.preheader.i.i ]
  %n_raw_samples.addr.077.i.i = phi i32 [ %n_raw_samples.addr.2.i.i, %if.end27.i.i.while.body.i.i_crit_edge ], [ %sub.i.i, %while.body.preheader.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start_pos.078.i.i, i32 %dma_pos.082.i.i)
  %cmp6.i.i = icmp ugt i32 %start_pos.078.i.i, %dma_pos.082.i.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %while.body.i.i.if.end17.i.i_crit_edge

while.body.i.i.if.end17.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then7.i.i:                                     ; preds = %while.body.i.i
  %sub8.i.i = sub i32 %start_pos.078.i.i, %dma_pos.082.i.i
  %100 = tail call i32 @llvm.umin.i32(i32 %sub8.i.i, i32 %n_raw_samples.addr.077.i.i) #7
  %add12.i.i = add i32 %100, %dma_pos.082.i.i
  %sub13.i.i = sub i32 %n_raw_samples.addr.077.i.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i.i)
  %tobool14.not.i.i = icmp eq i32 %sub13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then7.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, label %if.then7.i.i.if.end17.i.i_crit_edge

if.then7.i.i.if.end17.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

if.then7.i.i.pci9118_ai_samples_ready.exit.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_samples_ready.exit.i

if.end17.i.i:                                     ; preds = %if.then7.i.i.if.end17.i.i_crit_edge, %while.body.i.i.if.end17.i.i_crit_edge
  %n_raw_samples.addr.1.i.i = phi i32 [ %sub13.i.i, %if.then7.i.i.if.end17.i.i_crit_edge ], [ %n_raw_samples.addr.077.i.i, %while.body.i.i.if.end17.i.i_crit_edge ]
  %dma_pos.1.i.i = phi i32 [ %add12.i.i, %if.then7.i.i.if.end17.i.i_crit_edge ], [ %dma_pos.082.i.i, %while.body.i.i.if.end17.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stop_pos.080.i.i, i32 %dma_pos.1.i.i)
  %cmp18.i.i = icmp ugt i32 %stop_pos.080.i.i, %dma_pos.1.i.i
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end17.i.i.if.end27.i.i_crit_edge

if.end17.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub20.i.i = sub i32 %stop_pos.080.i.i, %dma_pos.1.i.i
  %101 = tail call i32 @llvm.umin.i32(i32 %sub20.i.i, i32 %n_raw_samples.addr.1.i.i) #7
  %add24.i.i = add i32 %101, %n_samples.083.i.i
  %add25.i.i = add i32 %101, %dma_pos.1.i.i
  %sub26.i.i = sub i32 %n_raw_samples.addr.1.i.i, %101
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end27.i.i_crit_edge
  %n_raw_samples.addr.2.i.i = phi i32 [ %sub26.i.i, %if.then19.i.i ], [ %n_raw_samples.addr.1.i.i, %if.end17.i.i.if.end27.i.i_crit_edge ]
  %dma_pos.2.i.i = phi i32 [ %add25.i.i, %if.then19.i.i ], [ %dma_pos.1.i.i, %if.end17.i.i.if.end27.i.i_crit_edge ]
  %n_samples.1.i.i = phi i32 [ %add24.i.i, %if.then19.i.i ], [ %n_samples.083.i.i, %if.end17.i.i.if.end27.i.i_crit_edge ]
  %add28.i.i = add i32 %start_pos.078.i.i, %add2.i.i
  %add29.i.i = add i32 %stop_pos.080.i.i, %add2.i.i
  %tobool.not.i.i = icmp eq i32 %n_raw_samples.addr.2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end27.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, label %if.end27.i.i.while.body.i.i_crit_edge

if.end27.i.i.while.body.i.i_crit_edge:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end27.i.i.pci9118_ai_samples_ready.exit.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_samples_ready.exit.i

pci9118_ai_samples_ready.exit.i:                  ; preds = %if.end27.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, %if.then7.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, %if.end.i.i.pci9118_ai_samples_ready.exit.i_crit_edge, %if.then145.pci9118_ai_samples_ready.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr.i.i, %if.then145.pci9118_ai_samples_ready.exit.i_crit_edge ], [ %mul.i.i, %if.end.i.i.pci9118_ai_samples_ready.exit.i_crit_edge ], [ %n_samples.083.i.i, %if.then7.i.i.pci9118_ai_samples_ready.exit.i_crit_edge ], [ %n_samples.1.i.i, %if.end27.i.i.pci9118_ai_samples_ready.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, 1
  %call4.i = tail call i32 @comedi_nsamples_left(ptr noundef %1, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %call4.i)
  %cmp.i = icmp ult i32 %retval.0.i.i, %call4.i
  br i1 %cmp.i, label %land.lhs.true.i, label %pci9118_ai_samples_ready.exit.i.if.end12.i_crit_edge

pci9118_ai_samples_ready.exit.i.if.end12.i_crit_edge: ; preds = %pci9118_ai_samples_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %pci9118_ai_samples_ready.exit.i
  %dma_doublebuf.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 1
  %102 = ptrtoint ptr %dma_doublebuf.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i = load i8, ptr %dma_doublebuf.i, align 4
  %103 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool5.not.i = icmp eq i8 %103, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then.i201

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i201:                                     ; preds = %land.lhs.true.i
  %104 = ptrtoint ptr %dma_actbuf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_actbuf.i, align 4
  %sub.i = sub i32 1, %105
  store i32 %sub.i, ptr %dma_actbuf.i, align 4
  %106 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %hw.i.i = getelementptr %struct.pci9118_private, ptr %107, i32 0, i32 13, i32 %sub.i, i32 1
  %108 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw.i.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #7
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %107, align 4
  %add.i76.i = add i32 %112, 36
  %and.i.i = and i32 %add.i76.i, 1048575
  %add2.i77.i = or i32 %and.i.i, -18874368
  %113 = inttoptr i32 %add2.i77.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %113, i32 %110) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %use_size.i.i = getelementptr %struct.pci9118_private, ptr %107, i32 0, i32 13, i32 %sub.i, i32 3
  %114 = ptrtoint ptr %use_size.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %use_size.i.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %107, align 4
  %add7.i.i = add i32 %118, 40
  %and8.i.i = and i32 %add7.i.i, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %119 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %119, i32 %116) #7, !srcloc !120
  %ai_do.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 5
  %120 = ptrtoint ptr %ai_do.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ai_do.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp9.i = icmp eq i32 %121, 4
  br i1 %cmp9.i, label %if.then10.i, label %if.then.i201.if.end12.i_crit_edge

if.then.i201.if.end12.i_crit_edge:                ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %dma_actbuf.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_actbuf.i, align 4
  %124 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %private, align 4
  %ai_cfg.i.i = getelementptr inbounds %struct.pci9118_private, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %ai_cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -62, ptr %ai_cfg.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %ai_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ai_cfg.i.i, align 1
  %conv.i.i = zext i8 %128 to i32
  %129 = shl nuw i32 %conv.i.i, 24
  %130 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iobase, align 4
  %add.i79.i = add i32 %131, 48
  %and.i80.i = and i32 %add.i79.i, 1048575
  %add3.i.i = or i32 %and.i80.i, -18874368
  %132 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %132, i32 %129) #7, !srcloc !120
  %pacer.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 2
  %133 = ptrtoint ptr %pacer.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pacer.i.i, align 4
  %hw.i81.i = getelementptr %struct.pci9118_private, ptr %125, i32 0, i32 13, i32 %123, i32 1
  %135 = ptrtoint ptr %hw.i81.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hw.i81.i, align 4
  %shr.i82.i = lshr i32 %136, 1
  %call4.i.i = tail call i32 @comedi_8254_load(ptr noundef %134, i32 noundef 0, i32 noundef %shr.i82.i, i32 noundef 0) #7
  %137 = ptrtoint ptr %ai_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ai_cfg.i.i, align 1
  %139 = or i8 %138, 1
  store i8 %139, ptr %ai_cfg.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %140 = ptrtoint ptr %ai_cfg.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ai_cfg.i.i, align 1
  %conv12.i.i = zext i8 %141 to i32
  %142 = shl nuw i32 %conv12.i.i, 24
  %143 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %iobase, align 4
  %add14.i.i = add i32 %144, 48
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %145 = inttoptr i32 %add16.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %145, i32 %142) #7, !srcloc !120
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then.i201.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %pci9118_ai_samples_ready.exit.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool13.not.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end15.i_crit_edge, label %if.then14.i

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end12.i
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i, align 4
  %148 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %private, align 4
  %150 = ptrtoint ptr %async.i203 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %async.i203, align 4
  %ai_add_front.i85.i = getelementptr inbounds %struct.pci9118_private, ptr %149, i32 0, i32 8
  %152 = ptrtoint ptr %ai_add_front.i85.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ai_add_front.i85.i, align 4
  %chanlist_len.i86.i = getelementptr inbounds %struct.comedi_async, ptr %151, i32 0, i32 17, i32 13
  %154 = ptrtoint ptr %chanlist_len.i86.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %chanlist_len.i86.i, align 4
  %add.i87.i = add i32 %155, %153
  %ai_add_back.i88.i = getelementptr inbounds %struct.pci9118_private, ptr %149, i32 0, i32 9
  %156 = ptrtoint ptr %ai_add_back.i88.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ai_add_back.i88.i, align 4
  %add2.i89.i = add i32 %add.i87.i, %157
  %ai_act_dmapos.i90.i = getelementptr inbounds %struct.pci9118_private, ptr %149, i32 0, i32 7
  %158 = ptrtoint ptr %ai_act_dmapos.i90.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ai_act_dmapos.i90.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i89.i, i32 %155)
  %cmp.i91.i = icmp eq i32 %add2.i89.i, %155
  br i1 %cmp.i91.i, label %if.then.i.i, label %if.then14.i.while.body.i92.i_crit_edge

if.then14.i.while.body.i92.i_crit_edge:           ; preds = %if.then14.i
  br label %while.body.i92.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef %147, i32 noundef %shr.i.i) #7
  %add4.i.i = add i32 %159, %shr.i.i
  br label %pci9118_ai_dma_xfer.exit.i

while.body.i92.i:                                 ; preds = %if.end24.i.i.while.body.i92.i_crit_edge, %if.then14.i.while.body.i92.i_crit_edge
  %dma_pos.074.i.i = phi i32 [ %dma_pos.2.i98.i, %if.end24.i.i.while.body.i92.i_crit_edge ], [ %159, %if.then14.i.while.body.i92.i_crit_edge ]
  %stop_pos.072.i.i = phi i32 [ %add26.i.i, %if.end24.i.i.while.body.i92.i_crit_edge ], [ %add.i87.i, %if.then14.i.while.body.i92.i_crit_edge ]
  %start_pos.070.i.i = phi i32 [ %add25.i99.i, %if.end24.i.i.while.body.i92.i_crit_edge ], [ %153, %if.then14.i.while.body.i92.i_crit_edge ]
  %n_raw_samples.addr.069.i.i = phi i32 [ %n_raw_samples.addr.2.i97.i, %if.end24.i.i.while.body.i92.i_crit_edge ], [ %shr.i.i, %if.then14.i.while.body.i92.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start_pos.070.i.i, i32 %dma_pos.074.i.i)
  %cmp5.i.i = icmp ugt i32 %start_pos.070.i.i, %dma_pos.074.i.i
  br i1 %cmp5.i.i, label %if.then6.i.i, label %while.body.i92.i.if.end14.i.i_crit_edge

while.body.i92.i.if.end14.i.i_crit_edge:          ; preds = %while.body.i92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then6.i.i:                                     ; preds = %while.body.i92.i
  %sub.i93.i = sub i32 %start_pos.070.i.i, %dma_pos.074.i.i
  %160 = tail call i32 @llvm.umin.i32(i32 %sub.i93.i, i32 %n_raw_samples.addr.069.i.i) #7
  %add9.i94.i = add i32 %160, %dma_pos.074.i.i
  %sub10.i.i = sub i32 %n_raw_samples.addr.069.i.i, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i.i)
  %tobool11.not.i.i = icmp eq i32 %sub10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then6.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge, label %if.then6.i.i.if.end14.i.i_crit_edge

if.then6.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then6.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_dma_xfer.exit.i

if.end14.i.i:                                     ; preds = %if.then6.i.i.if.end14.i.i_crit_edge, %while.body.i92.i.if.end14.i.i_crit_edge
  %n_raw_samples.addr.1.i95.i = phi i32 [ %sub10.i.i, %if.then6.i.i.if.end14.i.i_crit_edge ], [ %n_raw_samples.addr.069.i.i, %while.body.i92.i.if.end14.i.i_crit_edge ]
  %dma_pos.1.i96.i = phi i32 [ %add9.i94.i, %if.then6.i.i.if.end14.i.i_crit_edge ], [ %dma_pos.074.i.i, %while.body.i92.i.if.end14.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %stop_pos.072.i.i, i32 %dma_pos.1.i96.i)
  %cmp15.i.i = icmp ugt i32 %stop_pos.072.i.i, %dma_pos.1.i96.i
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end14.i.i.if.end24.i.i_crit_edge

if.end14.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i.i = sub i32 %stop_pos.072.i.i, %dma_pos.1.i96.i
  %161 = tail call i32 @llvm.umin.i32(i32 %sub17.i.i, i32 %n_raw_samples.addr.1.i95.i) #7
  %call21.i.i = tail call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef %147, i32 noundef %161) #7
  %add22.i.i = add i32 %161, %dma_pos.1.i96.i
  %sub23.i.i = sub i32 %n_raw_samples.addr.1.i95.i, %161
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end24.i.i_crit_edge
  %n_raw_samples.addr.2.i97.i = phi i32 [ %sub23.i.i, %if.then16.i.i ], [ %n_raw_samples.addr.1.i95.i, %if.end14.i.i.if.end24.i.i_crit_edge ]
  %dma_pos.2.i98.i = phi i32 [ %add22.i.i, %if.then16.i.i ], [ %dma_pos.1.i96.i, %if.end14.i.i.if.end24.i.i_crit_edge ]
  %add25.i99.i = add i32 %start_pos.070.i.i, %add2.i89.i
  %add26.i.i = add i32 %stop_pos.072.i.i, %add2.i89.i
  %tobool.not.i100.i = icmp eq i32 %n_raw_samples.addr.2.i97.i, 0
  br i1 %tobool.not.i100.i, label %if.end24.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge, label %if.end24.i.i.while.body.i92.i_crit_edge

if.end24.i.i.while.body.i92.i_crit_edge:          ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i92.i

if.end24.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_dma_xfer.exit.i

pci9118_ai_dma_xfer.exit.i:                       ; preds = %if.end24.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge, %if.then6.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge, %if.then.i.i
  %dma_pos.3.i.i = phi i32 [ %add4.i.i, %if.then.i.i ], [ %add9.i94.i, %if.then6.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge ], [ %dma_pos.2.i98.i, %if.end24.i.i.pci9118_ai_dma_xfer.exit.i_crit_edge ]
  %rem.i.i = urem i32 %dma_pos.3.i.i, %add2.i89.i
  %162 = ptrtoint ptr %ai_act_dmapos.i90.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %rem.i.i, ptr %ai_act_dmapos.i90.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %pci9118_ai_dma_xfer.exit.i, %if.end12.i.if.end15.i_crit_edge
  %ai_neverending.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 1
  %163 = ptrtoint ptr %ai_neverending.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load16.i = load i8, ptr %ai_neverending.i, align 4
  %164 = and i8 %bf.load16.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool20.not.i = icmp eq i8 %164, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end15.i.if.end27.i_crit_edge

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end15.i
  %165 = ptrtoint ptr %async.i203 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %async.i203, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %166, i32 0, i32 11
  %167 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %85, i32 0, i32 17, i32 11
  %169 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp23.not.i = icmp ult i32 %168, %170
  br i1 %cmp23.not.i, label %if.then21.i.if.end27.i_crit_edge, label %if.then24.i

if.then21.i.if.end27.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %166, i32 0, i32 16
  %171 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %events.i, align 4
  %or.i = or i32 %172, 2
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.then21.i.if.end27.i_crit_edge, %if.end15.i.if.end27.i_crit_edge
  %173 = ptrtoint ptr %async.i203 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %async.i203, align 4
  %events29.i = getelementptr inbounds %struct.comedi_async, ptr %174, i32 0, i32 16
  %175 = ptrtoint ptr %events29.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %events29.i, align 4
  %and.i = and i32 %176, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool30.not.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %land.lhs.true34.i, label %if.end27.i.interrupt_exit_crit_edge

if.end27.i.interrupt_exit_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %interrupt_exit

land.lhs.true34.i:                                ; preds = %if.end27.i
  %177 = ptrtoint ptr %ai_neverending.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load36.i = load i8, ptr %ai_neverending.i, align 4
  %178 = and i8 %bf.load36.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool40.not.i = icmp eq i8 %178, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %land.lhs.true34.i.interrupt_exit_crit_edge

land.lhs.true34.i.interrupt_exit_crit_edge:       ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %interrupt_exit

if.then41.i:                                      ; preds = %land.lhs.true34.i
  %179 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %hw.i103.i = getelementptr %struct.pci9118_private, ptr %180, i32 0, i32 13, i32 0, i32 1
  %181 = ptrtoint ptr %hw.i103.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %hw.i103.i, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %180, align 4
  %add.i104.i = add i32 %185, 36
  %and.i105.i = and i32 %add.i104.i, 1048575
  %add2.i106.i = or i32 %and.i105.i, -18874368
  %186 = inttoptr i32 %add2.i106.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %186, i32 %183) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %use_size.i107.i = getelementptr %struct.pci9118_private, ptr %180, i32 0, i32 13, i32 0, i32 3
  %187 = ptrtoint ptr %use_size.i107.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %use_size.i107.i, align 4
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #7
  %190 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %180, align 4
  %add7.i108.i = add i32 %191, 40
  %and8.i109.i = and i32 %add7.i108.i, 1048575
  %add9.i110.i = or i32 %and8.i109.i, -18874368
  %192 = inttoptr i32 %add9.i110.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %192, i32 %189) #7, !srcloc !120
  %ai_do42.i = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 5
  %193 = ptrtoint ptr %ai_do42.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %ai_do42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %194)
  %cmp43.i = icmp eq i32 %194, 4
  br i1 %cmp43.i, label %if.then44.i, label %if.then41.i.interrupt_exit_crit_edge

if.then41.i.interrupt_exit_crit_edge:             ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %interrupt_exit

if.then44.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %private, align 4
  %ai_cfg.i112.i = getelementptr inbounds %struct.pci9118_private, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %ai_cfg.i112.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -62, ptr %ai_cfg.i112.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %198 = ptrtoint ptr %ai_cfg.i112.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ai_cfg.i112.i, align 1
  %conv.i113.i = zext i8 %199 to i32
  %200 = shl nuw i32 %conv.i113.i, 24
  %201 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %iobase, align 4
  %add.i115.i = add i32 %202, 48
  %and.i116.i = and i32 %add.i115.i, 1048575
  %add3.i117.i = or i32 %and.i116.i, -18874368
  %203 = inttoptr i32 %add3.i117.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %203, i32 %200) #7, !srcloc !120
  %pacer.i118.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 2
  %204 = ptrtoint ptr %pacer.i118.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pacer.i118.i, align 4
  %hw.i119.i = getelementptr %struct.pci9118_private, ptr %196, i32 0, i32 13, i32 0, i32 1
  %206 = ptrtoint ptr %hw.i119.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %hw.i119.i, align 4
  %shr.i120.i = lshr i32 %207, 1
  %call4.i121.i = tail call i32 @comedi_8254_load(ptr noundef %205, i32 noundef 0, i32 noundef %shr.i120.i, i32 noundef 0) #7
  %208 = ptrtoint ptr %ai_cfg.i112.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %ai_cfg.i112.i, align 1
  %210 = or i8 %209, 1
  store i8 %210, ptr %ai_cfg.i112.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %211 = ptrtoint ptr %ai_cfg.i112.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %ai_cfg.i112.i, align 1
  %conv12.i122.i = zext i8 %212 to i32
  %213 = shl nuw i32 %conv12.i122.i, 24
  %214 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %iobase, align 4
  %add14.i123.i = add i32 %215, 48
  %and15.i124.i = and i32 %add14.i123.i, 1048575
  %add16.i125.i = or i32 %and15.i124.i, -18874368
  %216 = inttoptr i32 %add16.i125.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %216, i32 %213) #7, !srcloc !120
  br label %interrupt_exit

if.else146:                                       ; preds = %if.end139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sampl.i) #7
  %217 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %iobase, align 4
  %add.i204 = add i32 %218, 16
  %and.i205 = and i32 %add.i204, 1048575
  %add2.i = or i32 %and.i205, -18874368
  %219 = inttoptr i32 %add2.i to ptr
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %219) #7, !srcloc !117
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %conv.i = trunc i32 %221 to i16
  %222 = ptrtoint ptr %sampl.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i, ptr %sampl.i, align 2
  %call4.i206 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %sampl.i, i32 noundef 1) #7
  %ai_neverending.i207 = getelementptr inbounds %struct.pci9118_private, ptr %83, i32 0, i32 1
  %223 = ptrtoint ptr %ai_neverending.i207 to i32
  call void @__asan_load1_noabort(i32 %223)
  %bf.load.i208 = load i8, ptr %ai_neverending.i207, align 4
  %224 = and i8 %bf.load.i208, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i = icmp eq i8 %224, 0
  br i1 %tobool.not.i, label %if.then.i211, label %if.else146.pci9118_ai_get_onesample.exit_crit_edge

if.else146.pci9118_ai_get_onesample.exit_crit_edge: ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_get_onesample.exit

if.then.i211:                                     ; preds = %if.else146
  %225 = ptrtoint ptr %async.i203 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %async.i203, align 4
  %scans_done.i209 = getelementptr inbounds %struct.comedi_async, ptr %226, i32 0, i32 11
  %227 = ptrtoint ptr %scans_done.i209 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %scans_done.i209, align 4
  %stop_arg.i210 = getelementptr inbounds %struct.comedi_async, ptr %85, i32 0, i32 17, i32 11
  %229 = ptrtoint ptr %stop_arg.i210 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %stop_arg.i210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp.not.i = icmp ult i32 %228, %230
  br i1 %cmp.not.i, label %if.then.i211.pci9118_ai_get_onesample.exit_crit_edge, label %if.then7.i

if.then.i211.pci9118_ai_get_onesample.exit_crit_edge: ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_get_onesample.exit

if.then7.i:                                       ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #9
  %events.i212 = getelementptr inbounds %struct.comedi_async, ptr %226, i32 0, i32 16
  %231 = ptrtoint ptr %events.i212 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %events.i212, align 4
  %or.i213 = or i32 %232, 2
  store i32 %or.i213, ptr %events.i212, align 4
  br label %pci9118_ai_get_onesample.exit

pci9118_ai_get_onesample.exit:                    ; preds = %if.then7.i, %if.then.i211.pci9118_ai_get_onesample.exit_crit_edge, %if.else146.pci9118_ai_get_onesample.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sampl.i) #7
  br label %interrupt_exit

interrupt_exit:                                   ; preds = %pci9118_ai_get_onesample.exit, %if.then44.i, %if.then41.i.interrupt_exit_crit_edge, %land.lhs.true34.i.interrupt_exit_crit_edge, %if.end27.i.interrupt_exit_crit_edge, %do.end85, %do.end74, %do.end63, %do.end52, %do.end34, %do.end26
  %call148 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %interrupt_exit, %if.end90.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %interrupt_exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  tail call fastcc void @pci9118_set_chanlist(ptr noundef %dev, ptr noundef %s, i32 noundef 1, ptr noundef %chanspec, i32 noundef 0, i32 noundef 0)
  %ai_cfg = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -64, ptr %ai_cfg, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ai_cfg, align 1
  %conv = zext i8 %4 to i32
  %5 = shl nuw i32 %conv, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 48
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i = add i32 %10, 52
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #7, !srcloc !120
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44.not = icmp eq i32 %13, 0
  br i1 %cmp44.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add.i41 = add i32 %15, 32
  %and.i42 = and i32 %add.i41, 1048575
  %add1.i43 = or i32 %and.i42, -18874368
  %16 = inttoptr i32 %add1.i43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 0) #7, !srcloc !120
  %call4 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pci9118_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add6 = add i32 %18, 16
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %19 = inttoptr i32 %add8 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #7, !srcloc !117
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %22 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp11 = icmp eq i32 %23, 65535
  %and14 = and i32 %21, 65535
  %xor = xor i32 %and14, 32768
  %shr = lshr i32 %21, 4
  %and15 = and i32 %shr, 4095
  %and15.sink = select i1 %cmp11, i32 %xor, i32 %and15
  %24 = getelementptr i32, ptr %data, i32 %i.045
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and15.sink, ptr %24, align 4
  %inc = add nuw i32 %i.045, 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %27, %if.end.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #7
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arg, align 4, !annotation !116
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start_src, align 4
  %and.i = and i32 %4, 194
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %4)
  %cmp1.not.i = icmp eq i32 %and.i, %4
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %master = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool.not, i32 4, i32 84
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_begin_src, align 4
  %and.i322 = and i32 %spec.select, %7
  store i32 %and.i322, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i322)
  %cmp.i323 = icmp ne i32 %and.i322, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i322, i32 %7)
  %cmp1.not.i324 = icmp eq i32 %and.i322, %7
  %or.cond.i325 = and i1 %cmp.i323, %cmp1.not.i324
  %8 = select i1 %or.cond.i, i1 %or.cond.i325, i1 false
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load5 = load i8, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %tobool8.not = icmp sgt i8 %bf.load5, -1
  %flags.1 = select i1 %tobool8.not, i32 80, i32 82
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %10 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %convert_src, align 4
  %and.i327 = and i32 %flags.1, %11
  store i32 %and.i327, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i327)
  %cmp.i328 = icmp ne i32 %and.i327, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i327, i32 %11)
  %cmp1.not.i329 = icmp eq i32 %and.i327, %11
  %or.cond.i330 = and i1 %cmp.i328, %cmp1.not.i329
  %12 = select i1 %8, i1 %or.cond.i330, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %13 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_end_src, align 4
  %and.i332 = and i32 %14, 32
  store i32 %and.i332, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %cmp.i333 = icmp ne i32 %and.i332, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i332, i32 %14)
  %cmp1.not.i334 = icmp eq i32 %and.i332, %14
  %or.cond.i335 = and i1 %cmp.i333, %cmp1.not.i334
  %15 = select i1 %12, i1 %or.cond.i335, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %16 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stop_src, align 4
  %and.i337 = and i32 %17, 97
  store i32 %and.i337, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337)
  %cmp.i338 = icmp ne i32 %and.i337, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i337, i32 %17)
  %cmp1.not.i339 = icmp eq i32 %and.i337, %17
  %or.cond.i340 = and i1 %cmp.i338, %cmp1.not.i339
  %18 = select i1 %15, i1 %or.cond.i340, i1 false
  br i1 %18, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  %19 = tail call i32 @llvm.ctpop.i32(i32 %4) #7, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i = icmp ult i32 %19, 2
  %20 = tail call i32 @llvm.ctpop.i32(i32 %7) #7, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not.i342 = icmp ult i32 %20, 2
  %21 = select i1 %cmp.not.i, i1 %cmp.not.i342, i1 false
  %22 = tail call i32 @llvm.ctpop.i32(i32 %11) #7, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i344 = icmp ult i32 %22, 2
  %23 = select i1 %21, i1 %cmp.not.i344, i1 false
  %24 = tail call i32 @llvm.ctpop.i32(i32 %17) #7, !range !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not.i346 = icmp ult i32 %24, 2
  %25 = select i1 %23, i1 %cmp.not.i346, i1 false
  %or32 = select i1 %25, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp eq i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp35 = icmp eq i32 %7, 64
  %26 = select i1 %cmp, i1 %cmp35, i1 false
  %err.0 = select i1 %26, i32 -22, i32 %or32
  %and = and i32 %7, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end47, label %if.end47.thread

if.end47.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %spec.select319 = select i1 %tobool44.not, i32 -22, i32 %err.0
  br label %if.end56

if.end47:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp49 = icmp eq i32 %7, 4
  br i1 %cmp49, label %if.end56.thread, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56:                                         ; preds = %if.end47.if.end56_crit_edge, %if.end47.thread
  %err.2 = phi i32 [ %err.0, %if.end47.if.end56_crit_edge ], [ %spec.select319, %if.end47.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp58 = icmp eq i32 %17, 64
  %or.cond = select i1 %cmp58, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.end56.cleanup_crit_edge, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.thread:                                  ; preds = %if.end47
  %and52 = and i32 %11, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end56.thread.cleanup_crit_edge, label %if.end56.thread.if.end64_crit_edge

if.end56.thread.if.end64_crit_edge:               ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end56.thread.cleanup_crit_edge:                ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end56.thread.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end56.if.end64_crit_edge ], [ %err.0, %if.end56.thread.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool65.not = icmp eq i32 %err.3, 0
  br i1 %tobool65.not, label %if.end67, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.end64
  %trunc = trunc i32 %4 to i8
  %27 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %trunc, label %if.end67.sw.epilog_crit_edge [
    i8 2, label %if.end67.sw.bb_crit_edge
    i8 64, label %if.end67.sw.bb_crit_edge413
  ]

if.end67.sw.bb_crit_edge413:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end67.sw.bb_crit_edge:                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end67.sw.epilog_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end67.sw.bb_crit_edge, %if.end67.sw.bb_crit_edge413
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i348 = icmp eq i32 %29, 0
  br i1 %cmp.not.i348, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end67.sw.epilog_crit_edge
  %err.4 = phi i32 [ 0, %if.end67.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  %and72 = and i32 %7, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %sw.epilog.if.end77_crit_edge, label %if.then74

sw.epilog.if.end77_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %sw.epilog
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %31 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i350 = icmp eq i32 %32, 0
  br i1 %cmp.not.i350, label %if.then74.comedi_check_trigger_arg_is.exit353_crit_edge, label %if.then.i351

if.then74.comedi_check_trigger_arg_is.exit353_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit353

if.then.i351:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit353

comedi_check_trigger_arg_is.exit353:              ; preds = %if.then.i351, %if.then74.comedi_check_trigger_arg_is.exit353_crit_edge
  %retval.0.i352 = phi i32 [ -22, %if.then.i351 ], [ 0, %if.then74.comedi_check_trigger_arg_is.exit353_crit_edge ]
  %or76 = or i32 %retval.0.i352, %err.4
  br label %if.end77

if.end77:                                         ; preds = %comedi_check_trigger_arg_is.exit353, %sw.epilog.if.end77_crit_edge
  %err.5 = phi i32 [ %or76, %comedi_check_trigger_arg_is.exit353 ], [ %err.4, %sw.epilog.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp79 = icmp eq i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp82 = icmp eq i32 %11, 16
  %or.cond410 = select i1 %cmp79, i1 %cmp82, i1 false
  br i1 %or.cond410, label %land.lhs.true83, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true83:                                  ; preds = %if.end77
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp84 = icmp eq i32 %35, 1
  br i1 %cmp84, label %if.then85, label %land.lhs.true83.if.end89_crit_edge

land.lhs.true83.if.end89_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then85:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %scan_begin_src, align 4
  %scan_begin_arg87 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %37 = ptrtoint ptr %scan_begin_arg87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_begin_arg87, align 4
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %39 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %convert_arg, align 4
  store i32 0, ptr %scan_begin_arg87, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %land.lhs.true83.if.end89_crit_edge, %if.end77.if.end89_crit_edge
  %40 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp91 = icmp eq i32 %41, 16
  br i1 %cmp91, label %if.then92, label %if.end96

if.then92:                                        ; preds = %if.end89
  %scan_begin_arg93 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ai_ns_min = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %ai_ns_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ai_ns_min, align 4
  %44 = ptrtoint ptr %scan_begin_arg93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_begin_arg93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.i354 = icmp ult i32 %45, %43
  br i1 %cmp.i354, label %if.then.i355, label %if.then92.if.end96.thread_crit_edge

if.then92.if.end96.thread_crit_edge:              ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.thread

if.then.i355:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %scan_begin_arg93 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %scan_begin_arg93, align 4
  br label %if.end96.thread

if.end96.thread:                                  ; preds = %if.then.i355, %if.then92.if.end96.thread_crit_edge
  %retval.0.i356 = phi i32 [ -22, %if.then.i355 ], [ 0, %if.then92.if.end96.thread_crit_edge ]
  %or95 = or i32 %retval.0.i356, %err.5
  br label %if.end109

if.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %41)
  %cmp98 = icmp eq i32 %41, 64
  br i1 %cmp98, label %if.then99, label %if.end96.if.end109_crit_edge

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then99:                                        ; preds = %if.end96
  %scan_begin_arg100 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %47 = ptrtoint ptr %scan_begin_arg100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_begin_arg100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool101.not = icmp eq i32 %48, 0
  br i1 %tobool101.not, label %if.then99.if.end109_crit_edge, label %if.then102

if.then99.if.end109_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then102:                                       ; preds = %if.then99
  %49 = ptrtoint ptr %scan_begin_arg100 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %scan_begin_arg100, align 4
  %scan_end_arg105 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %50 = ptrtoint ptr %scan_end_arg105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_end_arg105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %51)
  %cmp.i357 = icmp ugt i32 %51, 65535
  br i1 %cmp.i357, label %if.then.i358, label %if.then102.if.end109_crit_edge

if.then102.if.end109_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then.i358:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %scan_end_arg105 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65535, ptr %scan_end_arg105, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then.i358, %if.then102.if.end109_crit_edge, %if.then99.if.end109_crit_edge, %if.end96.if.end109_crit_edge, %if.end96.thread
  %err.7 = phi i32 [ %err.5, %if.then99.if.end109_crit_edge ], [ %err.5, %if.end96.if.end109_crit_edge ], [ %or95, %if.end96.thread ], [ -22, %if.then102.if.end109_crit_edge ], [ -22, %if.then.i358 ]
  %and111 = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end109.if.end118_crit_edge, label %if.then113

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then113:                                       ; preds = %if.end109
  %convert_arg114 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_ns_min115 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 17
  %53 = ptrtoint ptr %ai_ns_min115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ai_ns_min115, align 4
  %55 = ptrtoint ptr %convert_arg114 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %convert_arg114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %54)
  %cmp.i360 = icmp ult i32 %56, %54
  br i1 %cmp.i360, label %if.then.i361, label %if.then113.comedi_check_trigger_arg_min.exit363_crit_edge

if.then113.comedi_check_trigger_arg_min.exit363_crit_edge: ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit363

if.then.i361:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %convert_arg114 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %convert_arg114, align 4
  br label %comedi_check_trigger_arg_min.exit363

comedi_check_trigger_arg_min.exit363:             ; preds = %if.then.i361, %if.then113.comedi_check_trigger_arg_min.exit363_crit_edge
  %retval.0.i362 = phi i32 [ -22, %if.then.i361 ], [ 0, %if.then113.comedi_check_trigger_arg_min.exit363_crit_edge ]
  %or117 = or i32 %retval.0.i362, %err.7
  br label %if.end118

if.end118:                                        ; preds = %comedi_check_trigger_arg_min.exit363, %if.end109.if.end118_crit_edge
  %err.8 = phi i32 [ %or117, %comedi_check_trigger_arg_min.exit363 ], [ %err.7, %if.end109.if.end118_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp120 = icmp eq i32 %11, 64
  br i1 %cmp120, label %if.then121, label %if.end118.if.end125_crit_edge

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then121:                                       ; preds = %if.end118
  %convert_arg122 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %58 = ptrtoint ptr %convert_arg122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %convert_arg122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i364 = icmp eq i32 %59, 0
  br i1 %cmp.not.i364, label %if.then121.comedi_check_trigger_arg_is.exit367_crit_edge, label %if.then.i365

if.then121.comedi_check_trigger_arg_is.exit367_crit_edge: ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit367

if.then.i365:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %convert_arg122 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %convert_arg122, align 4
  br label %comedi_check_trigger_arg_is.exit367

comedi_check_trigger_arg_is.exit367:              ; preds = %if.then.i365, %if.then121.comedi_check_trigger_arg_is.exit367_crit_edge
  %retval.0.i366 = phi i32 [ -22, %if.then.i365 ], [ 0, %if.then121.comedi_check_trigger_arg_is.exit367_crit_edge ]
  %or124 = or i32 %retval.0.i366, %err.8
  br label %if.end125

if.end125:                                        ; preds = %comedi_check_trigger_arg_is.exit367, %if.end118.if.end125_crit_edge
  %err.9 = phi i32 [ %or124, %comedi_check_trigger_arg_is.exit367 ], [ %err.8, %if.end118.if.end125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp127 = icmp eq i32 %17, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %61 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i368 = icmp eq i32 %62, 0
  br i1 %cmp127, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.end125
  br i1 %cmp.i368, label %if.then128.if.end134.sink.split_crit_edge, label %if.then128.if.end134_crit_edge

if.then128.if.end134_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then128.if.end134.sink.split_crit_edge:        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134.sink.split

if.else:                                          ; preds = %if.end125
  br i1 %cmp.i368, label %if.else.if.end134_crit_edge, label %if.else.if.end134.sink.split_crit_edge

if.else.if.end134.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134.sink.split

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.end134.sink.split:                             ; preds = %if.else.if.end134.sink.split_crit_edge, %if.then128.if.end134.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then128.if.end134.sink.split_crit_edge ], [ 0, %if.else.if.end134.sink.split_crit_edge ]
  %63 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.end134.sink.split, %if.else.if.end134_crit_edge, %if.then128.if.end134_crit_edge
  %call129.pn = phi i32 [ 0, %if.then128.if.end134_crit_edge ], [ 0, %if.else.if.end134_crit_edge ], [ -22, %if.end134.sink.split ]
  %err.10 = or i32 %call129.pn, %err.9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %64 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i376 = icmp eq i32 %65, 0
  br i1 %cmp.i376, label %if.then.i377, label %if.end134.comedi_check_trigger_arg_min.exit379_crit_edge

if.end134.comedi_check_trigger_arg_min.exit379_crit_edge: ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit379

if.then.i377:                                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit379

comedi_check_trigger_arg_min.exit379:             ; preds = %if.then.i377, %if.end134.comedi_check_trigger_arg_min.exit379_crit_edge
  %retval.0.i378 = phi i32 [ -22, %if.then.i377 ], [ 0, %if.end134.comedi_check_trigger_arg_min.exit379_crit_edge ]
  %or136 = or i32 %err.10, %retval.0.i378
  %scan_end_arg137 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %67 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chanlist_len, align 4
  %69 = ptrtoint ptr %scan_end_arg137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %scan_end_arg137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %68)
  %cmp.i380 = icmp ult i32 %70, %68
  br i1 %cmp.i380, label %if.then.i381, label %comedi_check_trigger_arg_min.exit379.comedi_check_trigger_arg_min.exit383_crit_edge

comedi_check_trigger_arg_min.exit379.comedi_check_trigger_arg_min.exit383_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit379
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit383

if.then.i381:                                     ; preds = %comedi_check_trigger_arg_min.exit379
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %scan_end_arg137 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %scan_end_arg137, align 4
  br label %comedi_check_trigger_arg_min.exit383

comedi_check_trigger_arg_min.exit383:             ; preds = %if.then.i381, %comedi_check_trigger_arg_min.exit379.comedi_check_trigger_arg_min.exit383_crit_edge
  %retval.0.i382 = phi i32 [ -22, %if.then.i381 ], [ 0, %comedi_check_trigger_arg_min.exit379.comedi_check_trigger_arg_min.exit383_crit_edge ]
  %72 = ptrtoint ptr %scan_end_arg137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scan_end_arg137, align 4
  %rem = urem i32 %73, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool143.not = icmp eq i32 %rem, 0
  br i1 %tobool143.not, label %if.end150, label %if.end150.thread

if.end150.thread:                                 ; preds = %comedi_check_trigger_arg_min.exit383
  call void @__sanitizer_cov_trace_pc() #9
  %mul = sub i32 %73, %rem
  %74 = ptrtoint ptr %scan_end_arg137 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul, ptr %scan_end_arg137, align 4
  br label %cleanup

if.end150:                                        ; preds = %comedi_check_trigger_arg_min.exit383
  %or140 = or i32 %or136, %retval.0.i382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or140)
  %tobool151.not = icmp eq i32 %or140, 0
  br i1 %tobool151.not, label %if.end153, label %if.end150.cleanup_crit_edge

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end153:                                        ; preds = %if.end150
  br i1 %cmp91, label %if.then156, label %if.end153.if.end162_crit_edge

if.end153.if.end162_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then156:                                       ; preds = %if.end153
  %scan_begin_arg157 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %75 = ptrtoint ptr %scan_begin_arg157 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %scan_begin_arg157, align 4
  %77 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %78 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pacer, align 4
  %flags158 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %80 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags158, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %79, ptr noundef nonnull %arg, i32 noundef %81) #7
  %82 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arg, align 4
  %84 = ptrtoint ptr %scan_begin_arg157 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %scan_begin_arg157, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %83)
  %cmp.not.i384 = icmp eq i32 %85, %83
  br i1 %cmp.not.i384, label %if.then156.if.end162_crit_edge, label %if.then.i385

if.then156.if.end162_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then.i385:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %scan_begin_arg157 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %scan_begin_arg157, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then.i385, %if.then156.if.end162_crit_edge, %if.end153.if.end162_crit_edge
  %err.12 = phi i32 [ 0, %if.end153.if.end162_crit_edge ], [ -22, %if.then.i385 ], [ 0, %if.then156.if.end162_crit_edge ]
  %87 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %convert_src, align 4
  %and164 = and i32 %88, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end162.if.end194_crit_edge, label %if.then166

if.end162.if.end194_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then166:                                       ; preds = %if.end162
  %convert_arg167 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %89 = ptrtoint ptr %convert_arg167 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %convert_arg167, align 4
  %91 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arg, align 4
  %pacer168 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %92 = ptrtoint ptr %pacer168 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pacer168, align 4
  %flags169 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %94 = ptrtoint ptr %flags169 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags169, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %93, ptr noundef nonnull %arg, i32 noundef %95) #7
  %96 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arg, align 4
  %98 = ptrtoint ptr %convert_arg167 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %convert_arg167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %97)
  %cmp.not.i388 = icmp eq i32 %99, %97
  br i1 %cmp.not.i388, label %if.then166.comedi_check_trigger_arg_is.exit391_crit_edge, label %if.then.i389

if.then166.comedi_check_trigger_arg_is.exit391_crit_edge: ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit391

if.then.i389:                                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %convert_arg167 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %convert_arg167, align 4
  br label %comedi_check_trigger_arg_is.exit391

comedi_check_trigger_arg_is.exit391:              ; preds = %if.then.i389, %if.then166.comedi_check_trigger_arg_is.exit391_crit_edge
  %retval.0.i390 = phi i32 [ -22, %if.then.i389 ], [ 0, %if.then166.comedi_check_trigger_arg_is.exit391_crit_edge ]
  %or172 = or i32 %retval.0.i390, %err.12
  %101 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %102)
  %cmp174 = icmp eq i32 %102, 16
  br i1 %cmp174, label %land.lhs.true175, label %comedi_check_trigger_arg_is.exit391.if.end194_crit_edge

comedi_check_trigger_arg_is.exit391.if.end194_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit391
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

land.lhs.true175:                                 ; preds = %comedi_check_trigger_arg_is.exit391
  %103 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp177 = icmp eq i32 %104, 2
  br i1 %cmp177, label %if.then178, label %land.lhs.true175.if.end194_crit_edge

land.lhs.true175.if.end194_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

if.then178:                                       ; preds = %land.lhs.true175
  %105 = ptrtoint ptr %convert_arg167 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %convert_arg167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp180 = icmp eq i32 %106, 0
  br i1 %cmp180, label %if.then181, label %if.else185

if.then181:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %ai_ns_min182 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 17
  %107 = ptrtoint ptr %ai_ns_min182 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ai_ns_min182, align 4
  %109 = ptrtoint ptr %scan_end_arg137 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %scan_end_arg137, align 4
  %add = add i32 %110, 2
  %mul184 = mul i32 %add, %108
  br label %if.end189

if.else185:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %chanlist_len, align 4
  %mul188 = mul i32 %112, %106
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then181
  %storemerge = phi i32 [ %mul188, %if.else185 ], [ %mul184, %if.then181 ]
  %113 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %storemerge, ptr %arg, align 4
  %scan_begin_arg190 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %114 = ptrtoint ptr %scan_begin_arg190 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %scan_begin_arg190, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %storemerge)
  %cmp.i392 = icmp ult i32 %115, %storemerge
  br i1 %cmp.i392, label %if.then.i393, label %if.end189.comedi_check_trigger_arg_min.exit395_crit_edge

if.end189.comedi_check_trigger_arg_min.exit395_crit_edge: ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit395

if.then.i393:                                     ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %scan_begin_arg190 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %storemerge, ptr %scan_begin_arg190, align 4
  br label %comedi_check_trigger_arg_min.exit395

comedi_check_trigger_arg_min.exit395:             ; preds = %if.then.i393, %if.end189.comedi_check_trigger_arg_min.exit395_crit_edge
  %retval.0.i394 = phi i32 [ -22, %if.then.i393 ], [ 0, %if.end189.comedi_check_trigger_arg_min.exit395_crit_edge ]
  %or192 = or i32 %retval.0.i394, %or172
  br label %if.end194

if.end194:                                        ; preds = %comedi_check_trigger_arg_min.exit395, %land.lhs.true175.if.end194_crit_edge, %comedi_check_trigger_arg_is.exit391.if.end194_crit_edge, %if.end162.if.end194_crit_edge
  %err.13 = phi i32 [ %or192, %comedi_check_trigger_arg_min.exit395 ], [ %or172, %land.lhs.true175.if.end194_crit_edge ], [ %or172, %comedi_check_trigger_arg_is.exit391.if.end194_crit_edge ], [ %err.12, %if.end162.if.end194_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.13)
  %tobool195.not = icmp eq i32 %err.13, 0
  br i1 %tobool195.not, label %if.end197, label %if.end194.cleanup_crit_edge

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end197:                                        ; preds = %if.end194
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %117 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %chanlist, align 4
  %tobool198.not = icmp eq ptr %118, null
  br i1 %tobool198.not, label %if.end197.if.end202.thread_crit_edge, label %if.end202

if.end197.if.end202.thread_crit_edge:             ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.thread

if.end202:                                        ; preds = %if.end197
  %call200 = call fastcc i32 @pci9118_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %phi.cmp = icmp eq i32 %call200, 0
  br i1 %phi.cmp, label %if.end202.if.end202.thread_crit_edge, label %if.end202.cleanup_crit_edge

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end202.if.end202.thread_crit_edge:             ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202.thread

if.end202.thread:                                 ; preds = %if.end202.if.end202.thread_crit_edge, %if.end197.if.end202.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end202.thread, %if.end202.cleanup_crit_edge, %if.end194.cleanup_crit_edge, %if.end150.cleanup_crit_edge, %if.end150.thread, %if.end64.cleanup_crit_edge, %if.end56.thread.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end64.cleanup_crit_edge ], [ 3, %if.end150.cleanup_crit_edge ], [ 4, %if.end194.cleanup_crit_edge ], [ 3, %if.end150.thread ], [ 0, %if.end202.thread ], [ 5, %if.end202.cleanup_crit_edge ], [ 2, %if.end56.cleanup_crit_edge ], [ 2, %if.end56.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %pacer1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pacer1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pacer1, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %ai12_startstop = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ai12_startstop, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %ai_flags = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %ai_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ai_flags, align 4
  %ai_add_front = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ai_add_front, align 4
  %ai_add_back = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ai_add_back, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp = icmp eq i32 %13, 64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ai12_startstop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %15 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %cmp5 = icmp eq i32 %16, 64
  br i1 %cmp5, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ai_neverending = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ai_neverending to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %ai_neverending, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %ai_neverending, align 4
  %18 = ptrtoint ptr %ai12_startstop to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ai12_startstop, align 4
  %20 = or i8 %19, 2
  store i8 %20, ptr %ai12_startstop, align 4
  %21 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %stop_src, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %22 = phi i32 [ %.pr, %if.then7 ], [ %16, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14 = icmp eq i32 %22, 1
  br i1 %cmp14, label %if.then16, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %ai_neverending17 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %ai_neverending17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load18 = load i8, ptr %ai_neverending17, align 4
  %bf.set20 = or i8 %bf.load18, 32
  store i8 %bf.set20, ptr %ai_neverending17, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end12.if.end21_crit_edge
  %24 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %25)
  %cmp23 = icmp eq i32 %25, 32
  br i1 %cmp23, label %if.then25, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %ai_neverending26 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %ai_neverending26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load27 = load i8, ptr %ai_neverending26, align 4
  %bf.clear28 = and i8 %bf.load27, -33
  store i8 %bf.clear28, ptr %ai_neverending26, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end21.if.end30_crit_edge
  %27 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ai_add_front, align 4
  %28 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ai_add_back, align 4
  %master = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load33 = load i8, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %tobool.not = icmp sgt i8 %bf.load33, -1
  br i1 %tobool.not, label %if.else80, label %if.then34

if.then34:                                        ; preds = %if.end30
  %bf.set37 = or i8 %bf.load33, 16
  %30 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set37, ptr %master, align 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then34.if.end57_crit_edge, label %land.lhs.true

if.then34.if.end57_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then34
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %33 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp40 = icmp eq i32 %34, 1
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then42:                                        ; preds = %land.lhs.true
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %35 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp43 = icmp eq i32 %36, 2
  br i1 %cmp43, label %if.then45, label %if.then42.if.end47_crit_edge

if.then42.if.end47_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %ai_add_back, align 4
  %38 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr528 = load i32, ptr %convert_src, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then42.if.end47_crit_edge
  %39 = phi i32 [ %.pr528, %if.then45 ], [ %36, %if.then42.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %39)
  %cmp49 = icmp eq i32 %39, 16
  br i1 %cmp49, label %if.then51, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load53 = load i8, ptr %master, align 4
  %bf.clear54 = and i8 %bf.load53, -17
  store i8 %bf.clear54, ptr %master, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end47.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.then34.if.end57_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and59 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end85_crit_edge, label %land.lhs.true61

if.end57.if.end85_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

land.lhs.true61:                                  ; preds = %if.end57
  %scan_end_arg62 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %43 = ptrtoint ptr %scan_end_arg62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_end_arg62, align 4
  %and63 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp ne i32 %and63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp67 = icmp ugt i32 %44, 1
  %or.cond = and i1 %cmp67, %tobool64.not
  br i1 %or.cond, label %if.then69, label %land.lhs.true61.if.end85_crit_edge

land.lhs.true61.if.end85_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then69:                                        ; preds = %land.lhs.true61
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %45 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp70 = icmp eq i32 %46, 4
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load74 = load i8, ptr %master, align 4
  %bf.clear75 = and i8 %bf.load74, -17
  store i8 %bf.clear75, ptr %master, align 4
  br label %if.end85

if.else:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %ai_add_back, align 4
  br label %if.end85

if.else80:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear83 = and i8 %bf.load33, -17
  %49 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %bf.clear83, ptr %master, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else80, %if.else, %if.then72, %land.lhs.true61.if.end85_crit_edge, %if.end57.if.end85_crit_edge
  %convert_src86 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %50 = ptrtoint ptr %convert_src86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %convert_src86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp87 = icmp eq i32 %51, 2
  br i1 %cmp87, label %land.lhs.true89, label %if.end85.if.end147_crit_edge

if.end85.if.end147_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

land.lhs.true89:                                  ; preds = %if.end85
  %softsshdelay = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 14
  %52 = ptrtoint ptr %softsshdelay to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %softsshdelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool90.not = icmp eq i32 %53, 0
  br i1 %tobool90.not, label %land.lhs.true89.if.end147_crit_edge, label %if.then91

land.lhs.true89.if.end147_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then91:                                        ; preds = %land.lhs.true89
  %54 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %ai_add_front, align 4
  %55 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load94 = load i8, ptr %master, align 4
  %56 = and i8 %bf.load94, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp98.not = icmp eq i8 %56, 0
  br i1 %cmp98.not, label %if.then91.if.end107_crit_edge, label %land.lhs.true100

if.then91.if.end107_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true100:                                 ; preds = %if.then91
  %57 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ai_add_back, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp102 = icmp eq i32 %58, 1
  br i1 %cmp102, label %if.then104, label %land.lhs.true100.if.end107_crit_edge

land.lhs.true100.if.end107_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then104:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %ai_add_front, align 4
  %60 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %ai_add_back, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %land.lhs.true100.if.end107_crit_edge, %if.then91.if.end107_crit_edge
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  %61 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %convert_arg, align 4
  %ai_ns_min = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 17
  %63 = ptrtoint ptr %ai_ns_min to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ai_ns_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp108 = icmp ult i32 %62, %64
  br i1 %cmp108, label %if.then110, label %if.end107.if.end113_crit_edge

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %convert_arg, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %66 = ptrtoint ptr %softsshdelay to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %softsshdelay, align 4
  %68 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %convert_arg, align 4
  %.frozen = freeze i32 %67
  %.frozen537 = freeze i32 %69
  %div = udiv i32 %.frozen, %.frozen537
  %70 = mul i32 %div, %.frozen537
  %rem.decomposed = sub i32 %.frozen, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool118.not = icmp ne i32 %rem.decomposed, 0
  %inc120 = zext i1 %tobool118.not to i32
  %spec.select = add i32 %div, %inc120
  %71 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ai_add_front, align 4
  %sub = add i32 %72, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sub)
  %cmp123 = icmp ugt i32 %spec.select, %sub
  br i1 %cmp123, label %if.then125, label %if.end113.if.end147_crit_edge

if.end113.if.end147_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then125:                                       ; preds = %if.end113
  %add = add i32 %spec.select, 1
  %73 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add, ptr %ai_add_front, align 4
  %74 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load128 = load i8, ptr %master, align 4
  %75 = and i8 %bf.load128, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp132.not = icmp eq i8 %75, 0
  br i1 %cmp132.not, label %if.then125.if.end147_crit_edge, label %if.then134

if.then125.if.end147_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then134:                                       ; preds = %if.then125
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %76 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chanlist_len, align 4
  %add136 = add i32 %77, %add
  %78 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ai_add_back, align 4
  %add138 = add i32 %add136, %79
  %and139 = and i32 %add138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.then134.if.end147_crit_edge, label %if.then141

if.then134.if.end147_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end147

if.then141:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  %inc143 = add i32 %spec.select, 2
  %80 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %inc143, ptr %ai_add_front, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %if.then134.if.end147_crit_edge, %if.then125.if.end147_crit_edge, %if.end113.if.end147_crit_edge, %land.lhs.true89.if.end147_crit_edge, %if.end85.if.end147_crit_edge
  %81 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ai_add_front, align 4
  %chanlist_len149 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %83 = ptrtoint ptr %chanlist_len149 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %chanlist_len149, align 4
  %add150 = add i32 %84, %82
  %85 = ptrtoint ptr %ai_add_back to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ai_add_back, align 4
  %add152 = add i32 %add150, %86
  %scan_end_arg153 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %87 = ptrtoint ptr %scan_end_arg153 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %scan_end_arg153, align 4
  %div155 = udiv i32 %88, %84
  %mul = mul i32 %div155, %add152
  %ai_n_realscanlen = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 6
  %89 = ptrtoint ptr %ai_n_realscanlen to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul, ptr %ai_n_realscanlen, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 5
  %90 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len_chanlist, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add152, i32 %91)
  %cmp156 = icmp ugt i32 %add152, %91
  br i1 %cmp156, label %do.end, label %if.end159

do.end:                                           ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %92 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end159:                                        ; preds = %if.end147
  %94 = ptrtoint ptr %chanlist_len149 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chanlist_len149, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %96 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chanlist, align 4
  tail call fastcc void @pci9118_set_chanlist(ptr noundef %dev, ptr noundef %s, i32 noundef %95, ptr noundef %97, i32 noundef %82, i32 noundef %86)
  %ai_do = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %ai_do to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %ai_do, align 4
  %scan_begin_src163 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %99 = ptrtoint ptr %scan_begin_src163 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %scan_begin_src163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %100)
  %cmp164.not = icmp eq i32 %100, 16
  br i1 %cmp164.not, label %if.end159.land.lhs.true226_crit_edge, label %land.lhs.true166

if.end159.land.lhs.true226_crit_edge:             ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true226

land.lhs.true166:                                 ; preds = %if.end159
  %101 = ptrtoint ptr %convert_src86 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %convert_src86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %102)
  %cmp168 = icmp eq i32 %102, 16
  br i1 %cmp168, label %if.then170, label %land.lhs.true166.if.end277_crit_edge

land.lhs.true166.if.end277_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.then170:                                       ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %100)
  %cmp172 = icmp eq i32 %100, 64
  %. = select i1 %cmp172, i32 4, i32 1
  %103 = ptrtoint ptr %ai_do to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %., ptr %ai_do, align 4
  %convert_arg179 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  tail call void @comedi_8254_cascade_ns_to_timer(ptr noundef %3, ptr noundef %convert_arg179, i32 noundef 0) #7
  tail call void @comedi_8254_update_divisors(ptr noundef %3) #7
  %ai_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %104 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ai_ctrl, align 1
  %106 = or i8 %105, 4
  store i8 %106, ptr %ai_ctrl, align 1
  %107 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load186 = load i8, ptr %master, align 4
  %108 = and i8 %bf.load186, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool190.not = icmp eq i8 %108, 0
  br i1 %tobool190.not, label %if.then191, label %if.then170.if.end199_crit_edge

if.then170.if.end199_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199

if.then191:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  %109 = or i8 %105, 6
  %110 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %ai_ctrl, align 1
  %int_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 3
  %111 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %int_ctrl, align 2
  %113 = or i8 %112, 8
  store i8 %113, ptr %int_ctrl, align 2
  br label %if.end199

if.end199:                                        ; preds = %if.then191, %if.then170.if.end199_crit_edge
  %114 = ptrtoint ptr %scan_begin_src163 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %scan_begin_src163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %115)
  %cmp201 = icmp eq i32 %115, 64
  br i1 %cmp201, label %if.then203, label %if.end199.if.end222_crit_edge

if.end199.if.end222_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

if.then203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  %ai_cfg = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ai_cfg, align 1
  %118 = or i8 %117, 2
  store i8 %118, ptr %ai_cfg, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ai_cfg, align 1
  %conv212 = zext i8 %120 to i32
  %121 = shl nuw i32 %conv212, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %122 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase, align 4
  %add213 = add i32 %123, 48
  %and214 = and i32 %add213, 1048575
  %add215 = or i32 %and214, -18874368
  %124 = inttoptr i32 %add215 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %124, i32 %121) #7, !srcloc !120
  %hw = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 13, i32 0, i32 1
  %125 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hw, align 4
  %shr = lshr i32 %126, 1
  %call216 = tail call i32 @comedi_8254_load(ptr noundef %3, i32 noundef 0, i32 noundef %shr, i32 noundef 0) #7
  %127 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ai_cfg, align 1
  %129 = or i8 %128, 1
  store i8 %129, ptr %ai_cfg, align 1
  %130 = ptrtoint ptr %scan_begin_src163 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr529 = load i32, ptr %scan_begin_src163, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.then203, %if.end199.if.end222_crit_edge
  %131 = phi i32 [ %115, %if.end199.if.end222_crit_edge ], [ %.pr529, %if.then203 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %131)
  %cmp224 = icmp eq i32 %131, 16
  br i1 %cmp224, label %if.end222.land.lhs.true226_crit_edge, label %if.end222.if.end277thread-pre-split_crit_edge

if.end222.if.end277thread-pre-split_crit_edge:    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277thread-pre-split

if.end222.land.lhs.true226_crit_edge:             ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true226

land.lhs.true226:                                 ; preds = %if.end222.land.lhs.true226_crit_edge, %if.end159.land.lhs.true226_crit_edge
  %132 = ptrtoint ptr %convert_src86 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %convert_src86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %133)
  %cmp228.not = icmp eq i32 %133, 64
  br i1 %cmp228.not, label %land.lhs.true226.if.end277thread-pre-split_crit_edge, label %if.then230

land.lhs.true226.if.end277thread-pre-split_crit_edge: ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277thread-pre-split

if.then230:                                       ; preds = %land.lhs.true226
  %134 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load232 = load i8, ptr %master, align 4
  %135 = and i8 %bf.load232, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool236.not = icmp eq i8 %135, 0
  br i1 %tobool236.not, label %do.end240, label %if.end242

do.end240:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev241 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %136 = ptrtoint ptr %class_dev241 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %class_dev241, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end242:                                        ; preds = %if.then230
  %138 = ptrtoint ptr %ai_do to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %ai_do, align 4
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 5
  %convert_arg244 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  %139 = ptrtoint ptr %ai_n_realscanlen to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ai_n_realscanlen, align 4
  %divisor1 = getelementptr inbounds %struct.comedi_8254, ptr %3, i32 0, i32 6
  %divisor2 = getelementptr inbounds %struct.comedi_8254, ptr %3, i32 0, i32 7
  %141 = ptrtoint ptr %ai_add_front to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ai_add_front, align 4
  %143 = ptrtoint ptr %pacer1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pacer1, align 4
  %145 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %async, align 4
  %147 = ptrtoint ptr %convert_arg244 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %convert_arg244, align 4
  %osc_base.i = getelementptr inbounds %struct.comedi_8254, ptr %144, i32 0, i32 4
  %149 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %osc_base.i, align 4
  %div.i = udiv i32 %148, %150
  %151 = ptrtoint ptr %divisor1 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %div.i, ptr %divisor1, align 4
  %152 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %scan_begin_arg, align 4
  %154 = load i32, ptr %osc_base.i, align 4
  %div4.i = udiv i32 %153, %154
  %div5.i = udiv i32 %div4.i, %div.i
  %155 = tail call i32 @llvm.umax.i32(i32 %div5.i, i32 %140) #7
  %156 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %divisor2, align 4
  %157 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %osc_base.i, align 4
  %mul.i = mul i32 %158, %div.i
  %159 = ptrtoint ptr %convert_arg244 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul.i, ptr %convert_arg244, align 4
  %convert_src.i = getelementptr inbounds %struct.comedi_async, ptr %146, i32 0, i32 17, i32 6
  %160 = ptrtoint ptr %convert_src.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %convert_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %cmp7.i = icmp eq i32 %161, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i = icmp eq i32 %142, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp7.i
  br i1 %or.cond.i, label %if.then8.i, label %if.end242.pci9118_calc_divisors.exit_crit_edge

if.end242.pci9118_calc_divisors.exit_crit_edge:   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_calc_divisors.exit

if.then8.i:                                       ; preds = %if.end242
  %162 = ptrtoint ptr %divisor2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %divisor2, align 4
  %add.i = add i32 %140, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %add.i)
  %cmp9.i = icmp ult i32 %163, %add.i
  br i1 %cmp9.i, label %if.then10.i, label %if.then8.i.pci9118_calc_divisors.exit_crit_edge

if.then8.i.pci9118_calc_divisors.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_calc_divisors.exit

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add.i, ptr %divisor2, align 4
  br label %pci9118_calc_divisors.exit

pci9118_calc_divisors.exit:                       ; preds = %if.then10.i, %if.then8.i.pci9118_calc_divisors.exit_crit_edge, %if.end242.pci9118_calc_divisors.exit_crit_edge
  %165 = ptrtoint ptr %divisor1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %divisor1, align 4
  %167 = ptrtoint ptr %divisor2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %divisor2, align 4
  %mul14.i = mul i32 %168, %166
  %169 = ptrtoint ptr %osc_base.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %osc_base.i, align 4
  %mul16.i = mul i32 %mul14.i, %170
  %171 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %mul16.i, ptr %scan_begin_arg, align 4
  %ai_ctrl248 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %172 = ptrtoint ptr %ai_ctrl248 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %ai_ctrl248, align 1
  %174 = or i8 %173, 4
  store i8 %174, ptr %ai_ctrl248, align 1
  %ai_cfg252 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %175 = ptrtoint ptr %ai_cfg252 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ai_cfg252, align 1
  %177 = or i8 %176, 24
  store i8 %177, ptr %ai_cfg252, align 1
  %178 = ptrtoint ptr %convert_src86 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %convert_src86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp257 = icmp eq i32 %179, 2
  br i1 %cmp257, label %land.lhs.true259, label %pci9118_calc_divisors.exit.do.body268_crit_edge

pci9118_calc_divisors.exit.do.body268_crit_edge:  ; preds = %pci9118_calc_divisors.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body268

land.lhs.true259:                                 ; preds = %pci9118_calc_divisors.exit
  %softsshdelay260 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 14
  %180 = ptrtoint ptr %softsshdelay260 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %softsshdelay260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool261.not = icmp eq i32 %181, 0
  br i1 %tobool261.not, label %if.then262, label %land.lhs.true259.do.body268_crit_edge

land.lhs.true259.do.body268_crit_edge:            ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body268

if.then262:                                       ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #9
  %182 = or i8 %176, 56
  %183 = ptrtoint ptr %ai_cfg252 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %ai_cfg252, align 1
  br label %do.body268

do.body268:                                       ; preds = %if.then262, %land.lhs.true259.do.body268_crit_edge, %pci9118_calc_divisors.exit.do.body268_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %184 = ptrtoint ptr %ai_n_realscanlen to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ai_n_realscanlen, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185)
  %iobase272 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %187 = ptrtoint ptr %iobase272 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %iobase272, align 4
  %add273 = add i32 %188, 40
  %and274 = and i32 %add273, 1048575
  %add275 = or i32 %and274, -18874368
  %189 = inttoptr i32 %add275 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %189, i32 %186) #7, !srcloc !120
  br label %if.end277thread-pre-split

if.end277thread-pre-split:                        ; preds = %do.body268, %land.lhs.true226.if.end277thread-pre-split_crit_edge, %if.end222.if.end277thread-pre-split_crit_edge
  %190 = ptrtoint ptr %scan_begin_src163 to i32
  call void @__asan_load4_noabort(i32 %190)
  %.pr536 = load i32, ptr %scan_begin_src163, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.end277thread-pre-split, %land.lhs.true166.if.end277_crit_edge
  %191 = phi i32 [ %.pr536, %if.end277thread-pre-split ], [ %100, %land.lhs.true166.if.end277_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %191)
  %cmp279 = icmp eq i32 %191, 4
  br i1 %cmp279, label %land.lhs.true281, label %if.end277.if.end291_crit_edge

if.end277.if.end291_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

land.lhs.true281:                                 ; preds = %if.end277
  %192 = ptrtoint ptr %convert_src86 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %convert_src86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %193)
  %cmp283 = icmp eq i32 %193, 64
  br i1 %cmp283, label %if.end291.thread, label %land.lhs.true281.if.end291_crit_edge

land.lhs.true281.if.end291_crit_edge:             ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end291

if.end291.thread:                                 ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %ai_do to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 3, ptr %ai_do, align 4
  %ai_ctrl287 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %195 = ptrtoint ptr %ai_ctrl287 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ai_ctrl287, align 1
  %197 = or i8 %196, 8
  store i8 %197, ptr %ai_ctrl287, align 1
  br label %if.end300

if.end291:                                        ; preds = %land.lhs.true281.if.end291_crit_edge, %if.end277.if.end291_crit_edge
  %198 = ptrtoint ptr %ai_do to i32
  call void @__asan_load4_noabort(i32 %198)
  %.pr533 = load i32, ptr %ai_do, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr533)
  %cmp293 = icmp eq i32 %.pr533, 0
  br i1 %cmp293, label %do.end298, label %if.end291.if.end300_crit_edge

if.end291.if.end300_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300

do.end298:                                        ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev299 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %199 = ptrtoint ptr %class_dev299 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %class_dev299, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end300:                                        ; preds = %if.end291.if.end300_crit_edge, %if.end291.thread
  %201 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %201)
  %bf.load302 = load i8, ptr %master, align 4
  %202 = and i8 %bf.load302, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool306.not = icmp eq i8 %202, 0
  br i1 %tobool306.not, label %if.end300.if.end312_crit_edge, label %if.then307

if.end300.if.end312_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end312

if.then307:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  %ai_ctrl308 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %203 = ptrtoint ptr %ai_ctrl308 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %ai_ctrl308, align 1
  %205 = or i8 %204, 1
  store i8 %205, ptr %ai_ctrl308, align 1
  br label %if.end312

if.end312:                                        ; preds = %if.then307, %if.end300.if.end312_crit_edge
  %ai_cfg313 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %206 = ptrtoint ptr %ai_cfg313 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -64, ptr %ai_cfg313, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %207 = ptrtoint ptr %ai_cfg313 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %ai_cfg313, align 1
  %conv318 = zext i8 %208 to i32
  %209 = shl nuw i32 %conv318, 24
  %iobase319 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %210 = ptrtoint ptr %iobase319 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %iobase319, align 4
  %add320 = add i32 %211, 48
  %and321 = and i32 %add320, 1048575
  %add322 = or i32 %and321, -18874368
  %212 = inttoptr i32 %add322 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %212, i32 %209) #7, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %213(i32 noundef 214748) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %214 = ptrtoint ptr %iobase319 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %iobase319, align 4
  %add.i518 = add i32 %215, 52
  %and.i = and i32 %add.i518, 1048575
  %add1.i = or i32 %and.i, -18874368
  %216 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %216, i32 0) #7, !srcloc !120
  %217 = ptrtoint ptr %iobase319 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %iobase319, align 4
  %add325 = add i32 %218, 24
  %and326 = and i32 %add325, 1048575
  %add327 = or i32 %and326, -18874368
  %219 = inttoptr i32 %add327 to ptr
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %219) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %221 = ptrtoint ptr %iobase319 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %iobase319, align 4
  %add332 = add i32 %222, 56
  %and333 = and i32 %add332, 1048575
  %add334 = or i32 %and333, -18874368
  %223 = inttoptr i32 %add334 to ptr
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %223) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %ai_act_dmapos = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 7
  %225 = ptrtoint ptr %ai_act_dmapos to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %ai_act_dmapos, align 4
  %226 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load339 = load i8, ptr %master, align 4
  %227 = and i8 %bf.load339, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool343.not = icmp eq i8 %227, 0
  %228 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %private, align 4
  br i1 %tobool343.not, label %if.else353, label %if.then344

if.then344:                                       ; preds = %if.end312
  %230 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %async, align 4
  %size.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 13, i32 0, i32 2
  %232 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %size.i, align 4
  %size4.i = getelementptr %struct.pci9118_private, ptr %229, i32 0, i32 13, i32 1, i32 2
  %234 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %size4.i, align 4
  %ai_n_realscanlen.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 6
  %236 = ptrtoint ptr %ai_n_realscanlen.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %ai_n_realscanlen.i, align 4
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %238 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %239, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 4
  %mul.i520 = mul i32 %cond.i.i, %237
  %prealloc_bufsz.i = getelementptr inbounds %struct.comedi_async, ptr %231, i32 0, i32 1
  %240 = ptrtoint ptr %prealloc_bufsz.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %prealloc_bufsz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %241)
  %cmp.i = icmp ugt i32 %233, %241
  %and.i521 = and i32 %241, -4
  %spec.select.i = select i1 %cmp.i, i32 %and.i521, i32 %233
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %241)
  %cmp10.i = icmp ugt i32 %235, %241
  %dmalen1.0.i = select i1 %cmp10.i, i32 %and.i521, i32 %235
  %ai_flags.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 10
  %242 = ptrtoint ptr %ai_flags.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ai_flags.i, align 4
  %and16.i = and i32 %243, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i522 = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i522, label %if.then344.if.end30.i_crit_edge, label %if.then17.i

if.then344.if.end30.i_crit_edge:                  ; preds = %if.then344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then17.i:                                      ; preds = %if.then344
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %mul.i520)
  %cmp18.i = icmp ult i32 %spec.select.i, %mul.i520
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and21.i = and i32 %243, -33
  %244 = ptrtoint ptr %ai_flags.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %and21.i, ptr %ai_flags.i, align 4
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %245 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %246, ptr noundef nonnull @.str.41, i32 noundef %spec.select.i, i32 noundef %mul.i520) #10
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i520)
  %cmp22.i = icmp ult i32 %mul.i520, 4
  br i1 %cmp22.i, label %do.end26.i, label %if.else.i.if.end30.i_crit_edge

if.else.i.if.end30.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

do.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev27.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %247 = ptrtoint ptr %class_dev27.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %class_dev27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %248, ptr noundef nonnull @.str.45, i32 noundef %mul.i520) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end26.i, %if.else.i.if.end30.i_crit_edge, %if.then19.i, %if.then344.if.end30.i_crit_edge
  %dmalen0.1.i = phi i32 [ %spec.select.i, %if.then19.i ], [ 4, %do.end26.i ], [ %mul.i520, %if.else.i.if.end30.i_crit_edge ], [ %spec.select.i, %if.then344.if.end30.i_crit_edge ]
  %249 = ptrtoint ptr %ai_flags.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %ai_flags.i, align 4
  %and32.i = and i32 %250, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.if.end52.i_crit_edge, label %if.then34.i

if.end30.i.if.end52.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dmalen1.0.i, i32 %mul.i520)
  %cmp35.i = icmp ult i32 %dmalen1.0.i, %mul.i520
  br i1 %cmp35.i, label %if.then36.i, label %if.else43.i

if.then36.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #9
  %and38.i = and i32 %250, -33
  %251 = ptrtoint ptr %ai_flags.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %and38.i, ptr %ai_flags.i, align 4
  %class_dev42.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %252 = ptrtoint ptr %class_dev42.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %class_dev42.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %253, ptr noundef nonnull @.str.48, i32 noundef %dmalen1.0.i, i32 noundef %mul.i520) #10
  br label %if.end52.i

if.else43.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i520)
  %cmp44.i = icmp ult i32 %mul.i520, 4
  br i1 %cmp44.i, label %do.end48.i, label %if.else43.i.if.end52.i_crit_edge

if.else43.i.if.end52.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

do.end48.i:                                       ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev49.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %254 = ptrtoint ptr %class_dev49.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %class_dev49.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %255, ptr noundef nonnull @.str.51, i32 noundef %mul.i520) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end48.i, %if.else43.i.if.end52.i_crit_edge, %if.then36.i, %if.end30.i.if.end52.i_crit_edge
  %dmalen1.1.i = phi i32 [ %dmalen1.0.i, %if.then36.i ], [ 4, %do.end48.i ], [ %mul.i520, %if.else43.i.if.end52.i_crit_edge ], [ %dmalen1.0.i, %if.end30.i.if.end52.i_crit_edge ]
  %256 = ptrtoint ptr %ai_flags.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %ai_flags.i, align 4
  %and54.i = and i32 %257, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end52.i.pci9118_ai_setup_dma.exit_crit_edge

if.end52.i.pci9118_ai_setup_dma.exit_crit_edge:   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_setup_dma.exit

if.then56.i:                                      ; preds = %if.end52.i
  %258 = urem i32 %dmalen0.1.i, %mul.i520
  %mul57.i = sub i32 %dmalen0.1.i, %258
  %and58.i = and i32 %mul57.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %spec.select1.i = select i1 %tobool59.not.i, i32 %dmalen0.1.i, i32 %and58.i
  %259 = urem i32 %dmalen1.1.i, %mul.i520
  %mul63.i = sub i32 %dmalen1.1.i, %259
  %and64.i = and i32 %mul63.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %dmalen1.2.i = select i1 %tobool65.not.i, i32 %dmalen1.1.i, i32 %and64.i
  %ai_neverending.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 1
  %260 = ptrtoint ptr %ai_neverending.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %bf.load.i = load i8, ptr %ai_neverending.i, align 4
  %261 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool68.not.i = icmp eq i8 %261, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %if.then56.i.pci9118_ai_setup_dma.exit_crit_edge

if.then56.i.pci9118_ai_setup_dma.exit_crit_edge:  ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_setup_dma.exit

if.then69.i:                                      ; preds = %if.then56.i
  %conv.i = zext i32 %mul.i520 to i64
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %231, i32 0, i32 17, i32 11
  %262 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %stop_arg.i, align 4
  %conv70.i = zext i32 %263 to i64
  %mul71.i = mul nuw i64 %conv70.i, %conv.i
  %conv72.i = zext i32 %spec.select1.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul71.i, i64 %conv72.i)
  %cmp73.i = icmp ult i64 %mul71.i, %conv72.i
  br i1 %cmp73.i, label %if.then75.i, label %if.else78.i

if.then75.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv76.i = trunc i64 %mul71.i to i32
  %and77.i = and i32 %conv76.i, -4
  br label %pci9118_ai_setup_dma.exit

if.else78.i:                                      ; preds = %if.then69.i
  %conv79.i = zext i32 %dmalen1.2.i to i64
  %sub.i = sub i64 %mul71.i, %conv72.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv79.i)
  %cmp81.i = icmp ult i64 %sub.i, %conv79.i
  br i1 %cmp81.i, label %if.then83.i, label %if.else78.i.pci9118_ai_setup_dma.exit_crit_edge

if.else78.i.pci9118_ai_setup_dma.exit_crit_edge:  ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_ai_setup_dma.exit

if.then83.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv86.i = trunc i64 %sub.i to i32
  %and87.i = and i32 %conv86.i, -4
  br label %pci9118_ai_setup_dma.exit

pci9118_ai_setup_dma.exit:                        ; preds = %if.then83.i, %if.else78.i.pci9118_ai_setup_dma.exit_crit_edge, %if.then75.i, %if.then56.i.pci9118_ai_setup_dma.exit_crit_edge, %if.end52.i.pci9118_ai_setup_dma.exit_crit_edge
  %dmalen0.5.i = phi i32 [ %dmalen0.1.i, %if.end52.i.pci9118_ai_setup_dma.exit_crit_edge ], [ %spec.select1.i, %if.then56.i.pci9118_ai_setup_dma.exit_crit_edge ], [ %and77.i, %if.then75.i ], [ %spec.select1.i, %if.then83.i ], [ %spec.select1.i, %if.else78.i.pci9118_ai_setup_dma.exit_crit_edge ]
  %dmalen1.5.i = phi i32 [ %dmalen1.1.i, %if.end52.i.pci9118_ai_setup_dma.exit_crit_edge ], [ %dmalen1.2.i, %if.then56.i.pci9118_ai_setup_dma.exit_crit_edge ], [ %dmalen1.2.i, %if.then75.i ], [ %and87.i, %if.then83.i ], [ %dmalen1.2.i, %if.else78.i.pci9118_ai_setup_dma.exit_crit_edge ]
  %dma_actbuf.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 12
  %264 = ptrtoint ptr %dma_actbuf.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %dma_actbuf.i, align 4
  %use_size.i = getelementptr inbounds %struct.pci9118_private, ptr %229, i32 0, i32 13, i32 0, i32 3
  %265 = ptrtoint ptr %use_size.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %dmalen0.5.i, ptr %use_size.i, align 4
  %use_size92.i = getelementptr %struct.pci9118_private, ptr %229, i32 0, i32 13, i32 1, i32 3
  %266 = ptrtoint ptr %use_size92.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %dmalen1.5.i, ptr %use_size92.i, align 4
  %267 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %private, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %268, align 4
  %add.i.i = add i32 %270, 60
  %and.i2.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i2.i, -18874368
  %271 = inttoptr i32 %add1.i.i to ptr
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %271) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %273 = and i32 %272, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %274 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %268, align 4
  %add5.i.i = add i32 %275, 60
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %276 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %276, i32 %273) #7, !srcloc !120
  %277 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %hw.i.i = getelementptr %struct.pci9118_private, ptr %278, i32 0, i32 13, i32 0, i32 1
  %279 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %hw.i.i, align 4
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #7
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %278, align 4
  %add.i4.i = add i32 %283, 36
  %and.i5.i = and i32 %add.i4.i, 1048575
  %add2.i.i = or i32 %and.i5.i, -18874368
  %284 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %284, i32 %281) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %use_size.i.i = getelementptr %struct.pci9118_private, ptr %278, i32 0, i32 13, i32 0, i32 3
  %285 = ptrtoint ptr %use_size.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %use_size.i.i, align 4
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #7
  %288 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %278, align 4
  %add7.i6.i = add i32 %289, 40
  %and8.i.i = and i32 %add7.i6.i, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %290 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %290, i32 %287) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %291 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %229, align 4
  %add.i523 = add i32 %292, 56
  %and96.i = and i32 %add.i523, 1048575
  %add97.i = or i32 %and96.i, -18874368
  %293 = inttoptr i32 %add97.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %293, i32 4194304) #7, !srcloc !120
  %294 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %private, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %295, align 4
  %add.i8.i = add i32 %297, 60
  %and.i9.i = and i32 %add.i8.i, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %298 = inttoptr i32 %add1.i10.i to ptr
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %298) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %300 = or i32 %299, 327684
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %301 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %295, align 4
  %add5.i13.i = add i32 %302, 60
  %and6.i14.i = and i32 %add5.i13.i, 1048575
  %add7.i15.i = or i32 %and6.i14.i, -18874368
  %303 = inttoptr i32 %add7.i15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %303, i32 %300) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %304 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %229, align 4
  %add103.i = add i32 %305, 56
  %and104.i = and i32 %add103.i, 1048575
  %add105.i = or i32 %and104.i, -18874368
  %306 = inttoptr i32 %add105.i to ptr
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %306) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %308 = or i32 %307, 262144
  %309 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %229, align 4
  %add110.i = add i32 %310, 56
  %and111.i = and i32 %add110.i, 1048575
  %add112.i = or i32 %and111.i, -18874368
  %311 = inttoptr i32 %add112.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %311, i32 %308) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %1, align 4
  %add349 = add i32 %313, 56
  %and350 = and i32 %add349, 1048575
  %add351 = or i32 %and350, -18874368
  %314 = inttoptr i32 %add351 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %314, i32 4194306) #7, !srcloc !120
  br label %if.end354

if.else353:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #9
  %315 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %229, align 4
  %add.i525 = add i32 %316, 56
  %and.i526 = and i32 %add.i525, 1048575
  %add1.i527 = or i32 %and.i526, -18874368
  %317 = inttoptr i32 %add1.i527 to ptr
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %317) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %319 = or i32 %318, 2031616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %320 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %229, align 4
  %add5.i = add i32 %321, 56
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %322 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %322, i32 %319) #7, !srcloc !120
  br label %if.end354

if.end354:                                        ; preds = %if.else353, %pci9118_ai_setup_dma.exit
  %323 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %start_src, align 4
  %325 = zext i32 %324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %325, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %324, label %if.end354.if.end366_crit_edge [
    i32 2, label %if.then358
    i32 128, label %if.then363
  ]

if.end354.if.end366_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end366

if.then358:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pci9118_ai_cmd_start(ptr noundef %dev)
  br label %if.end366thread-pre-split

if.then363:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  %326 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %327, i32 0, i32 20
  %328 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr @pci9118_ai_inttrig, ptr %inttrig, align 4
  br label %if.end366thread-pre-split

if.end366thread-pre-split:                        ; preds = %if.then363, %if.then358
  %329 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %329)
  %.pr535 = load i32, ptr %start_src, align 4
  br label %if.end366

if.end366:                                        ; preds = %if.end366thread-pre-split, %if.end354.if.end366_crit_edge
  %330 = phi i32 [ %.pr535, %if.end366thread-pre-split ], [ %324, %if.end354.if.end366_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %330)
  %cmp368 = icmp eq i32 %330, 64
  br i1 %cmp368, label %if.end366.if.then373_crit_edge, label %lor.lhs.false

if.end366.if.then373_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then373

lor.lhs.false:                                    ; preds = %if.end366
  %331 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %332)
  %cmp371 = icmp eq i32 %332, 64
  br i1 %cmp371, label %lor.lhs.false.if.then373_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then373_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then373

if.then373:                                       ; preds = %lor.lhs.false.if.then373_crit_edge, %if.end366.if.then373_crit_edge
  tail call fastcc void @pci9118_exttrg_enable(ptr noundef %dev, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then373, %lor.lhs.false.cleanup_crit_edge, %do.end298, %do.end240, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end298 ], [ -5, %do.end240 ], [ 0, %if.then373 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %usedma = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %usedma, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.i = add i32 %5, 60
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %8 = and i32 %7, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %add5.i = add i32 %10, 60
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #7, !srcloc !120
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @pci9118_exttrg_enable(ptr noundef %dev, i1 noundef zeroext false)
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %13, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #7
  %ai_cfg = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -64, ptr %ai_cfg, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ai_cfg, align 1
  %conv = zext i8 %16 to i32
  %17 = shl nuw i32 %conv, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add = add i32 %19, 48
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %20 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #7, !srcloc !120
  %ai_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ai_ctrl, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ai_ctrl, align 1
  %conv7 = zext i8 %23 to i32
  %24 = shl nuw i32 %conv7, 24
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add9 = add i32 %26, 24
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %27 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add17 = add i32 %29, 40
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %30 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add25 = add i32 %32, 44
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %33 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 16777216) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add33 = add i32 %35, 44
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %36 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 33554432) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add.i75 = add i32 %38, 52
  %and.i76 = and i32 %add.i75, 1048575
  %add1.i77 = or i32 %and.i76, -18874368
  %39 = inttoptr i32 %add1.i77 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 0) #7, !srcloc !120
  %int_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %int_ctrl, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %int_ctrl, align 2
  %conv41 = zext i8 %42 to i32
  %43 = shl nuw i32 %conv41, 24
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add43 = add i32 %45, 56
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %46 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #7, !srcloc !120
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add.i79 = add i32 %50, 56
  %and.i80 = and i32 %add.i79, 1048575
  %add1.i81 = or i32 %and.i80, -18874368
  %51 = inttoptr i32 %add1.i81 to ptr
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %53 = and i32 %52, -2031617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %48, align 4
  %add5.i82 = add i32 %55, 56
  %and6.i83 = and i32 %add5.i82, 1048575
  %add7.i84 = or i32 %and6.i83, -18874368
  %56 = inttoptr i32 %add7.i84 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #7, !srcloc !120
  %ai_do = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %ai_do to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ai_do, align 4
  %58 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load48 = load i8, ptr %usedma, align 4
  %bf.clear49 = and i8 %bf.load48, -17
  store i8 %bf.clear49, ptr %usedma, align 4
  %ai_act_dmapos = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 7
  %59 = ptrtoint ptr %ai_act_dmapos to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %ai_act_dmapos, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %60 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %inttrig, align 4
  %bf.load50 = load i8, ptr %usedma, align 4
  %bf.clear51 = and i8 %bf.load50, -33
  store i8 %bf.clear51, ptr %usedma, align 4
  %dma_actbuf = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 12
  %63 = ptrtoint ptr %dma_actbuf to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %dma_actbuf, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci9118_ai_munge(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %data, i32 noundef %num_bytes, i32 noundef %start_chan_index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %num_bytes, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp22.not = icmp eq i32 %shr.i, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp2 = icmp eq i32 %3, 65535
  %arrayidx4 = getelementptr i16, ptr %data, i32 %i.023
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  %6 = xor i16 %5, -32768
  %7 = lshr i16 %5, 4
  %.sink = select i1 %cmp2, i16 %6, i16 %7
  store i16 %.sink, ptr %arrayidx4, align 2
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not = icmp eq i32 %7, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 2
  %add = add nuw nsw i32 %mul, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.017
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add2 = add i32 %add, %12
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %13 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #7, !srcloc !120
  %inc = add nuw i32 %i.017, 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %16 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %readback, align 4
  %arrayidx6 = getelementptr i32, ptr %17, i32 %and
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val.0.lcssa, ptr %arrayidx6, align 4
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !117
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %and3 = and i32 %4, 15
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #7, !srcloc !120
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %6 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci9118_exttrg_enable(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %int_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_ctrl, align 2
  %4 = and i8 %3, -2
  %masksel = zext i1 %enable to i8
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %int_ctrl, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %int_ctrl5 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %int_ctrl5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %int_ctrl5, align 2
  %conv6 = zext i8 %6 to i32
  %7 = shl nuw i32 %conv6, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add = add i32 %9, 56
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %10 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #7, !srcloc !120
  %11 = ptrtoint ptr %int_ctrl5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %int_ctrl5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add.i21 = add i32 %16, 56
  %and.i22 = and i32 %add.i21, 1048575
  %add1.i23 = or i32 %and.i22, -18874368
  %17 = inttoptr i32 %add1.i23 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = or i32 %18, 2031616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %14, align 4
  %add5.i = add i32 %21, 56
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %22 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #7, !srcloc !120
  br label %if.end13

if.else12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = and i32 %18, -2031617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %14, align 4
  %add5.i24 = add i32 %25, 56
  %and6.i25 = and i32 %add5.i24, 1048575
  %add7.i26 = or i32 %and6.i25, -18874368
  %26 = inttoptr i32 %add7.i26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #7, !srcloc !120
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_load(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci9118_set_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %n_chan, ptr nocapture noundef readonly %chanlist, i32 noundef %frontadd, i32 noundef %backadd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanlist, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %ai_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ai_ctrl, align 1
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %5 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %6, i32 0, i32 1, i32 %and2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = lshr i32 %8, 24
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, -128
  %12 = xor i8 %11, -128
  store i8 %12, ptr %ai_ctrl, align 1
  %13 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cmp = icmp eq i32 %13, 33554432
  br i1 %cmp, label %if.then9, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ai_ctrl, align 1
  %16 = or i8 %15, 64
  store i8 %16, ptr %ai_ctrl, align 1
  br label %do.body

do.body:                                          ; preds = %if.then9, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ai_ctrl, align 1
  %conv16 = zext i8 %18 to i32
  %19 = shl nuw i32 %conv16, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add = add i32 %21, 24
  %and17 = and i32 %add, 1048575
  %add18 = or i32 %and17, -18874368
  %22 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add24 = add i32 %24, 44
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %25 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 33554432) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add32 = add i32 %27, 44
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %28 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add40 = add i32 %30, 44
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %31 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 16777216) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frontadd)
  %tobool.not = icmp eq i32 %frontadd, 0
  br i1 %tobool.not, label %do.body.if.end61_crit_edge, label %if.then44

do.body.if.end61_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then44:                                        ; preds = %do.body
  %and45 = shl nuw nsw i32 %shr, 8
  %shl46 = and i32 %and45, 768
  %or47 = or i32 %shl46, %and
  %softsshsample = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %softsshsample to i32
  call void @__asan_load1_noabort(i32 %32)
  %ssh.0.in151 = load i8, ptr %softsshsample, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frontadd)
  %cmp49153 = icmp sgt i32 %frontadd, 0
  br i1 %cmp49153, label %do.body51.lr.ph, label %if.then44.if.end61.loopexit_crit_edge

if.then44.if.end61.loopexit_crit_edge:            ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.loopexit

do.body51.lr.ph:                                  ; preds = %if.then44
  %softsshhold = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 16
  br label %do.body51

do.body51:                                        ; preds = %do.body51.do.body51_crit_edge, %do.body51.lr.ph
  %ssh.0155.in = phi i8 [ %ssh.0.in151, %do.body51.lr.ph ], [ %ssh.0.in, %do.body51.do.body51_crit_edge ]
  %i.0154 = phi i32 [ 0, %do.body51.lr.ph ], [ %inc, %do.body51.do.body51_crit_edge ]
  %ssh.0155 = zext i8 %ssh.0155.in to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %or54 = or i32 %or47, %ssh.0155
  %33 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add56 = add i32 %35, 36
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %36 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 %33) #7, !srcloc !120
  %inc = add nuw nsw i32 %i.0154, 1
  %37 = ptrtoint ptr %softsshhold to i32
  call void @__asan_load1_noabort(i32 %37)
  %ssh.0.in = load i8, ptr %softsshhold, align 1
  %exitcond.not = icmp eq i32 %inc, %frontadd
  br i1 %exitcond.not, label %do.body51.if.end61.loopexit_crit_edge, label %do.body51.do.body51_crit_edge

do.body51.do.body51_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

do.body51.if.end61.loopexit_crit_edge:            ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.loopexit

if.end61.loopexit:                                ; preds = %do.body51.if.end61.loopexit_crit_edge, %if.then44.if.end61.loopexit_crit_edge
  %ssh.0.in.lcssa = phi i8 [ %ssh.0.in151, %if.then44.if.end61.loopexit_crit_edge ], [ %ssh.0.in, %do.body51.if.end61.loopexit_crit_edge ]
  %ssh.0.le = zext i8 %ssh.0.in.lcssa to i32
  br label %if.end61

if.end61:                                         ; preds = %if.end61.loopexit, %do.body.if.end61_crit_edge
  %ssh.1 = phi i32 [ 0, %do.body.if.end61_crit_edge ], [ %ssh.0.le, %if.end61.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_chan)
  %cmp63156 = icmp sgt i32 %n_chan, 0
  br i1 %cmp63156, label %if.end61.for.body65_crit_edge, label %if.end61.for.end86_crit_edge

if.end61.for.end86_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end86

if.end61.for.body65_crit_edge:                    ; preds = %if.end61
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %if.end61.for.body65_crit_edge
  %i.1157 = phi i32 [ %inc85, %for.body65.for.body65_crit_edge ], [ 0, %if.end61.for.body65_crit_edge ]
  %arrayidx66 = getelementptr i32, ptr %chanlist, i32 %i.1157
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx66, align 4
  %and67 = and i32 %39, 65535
  %40 = lshr i32 %39, 8
  %shl73 = and i32 %40, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  tail call void @arm_heavy_mb() #7
  %or74 = or i32 %and67, %ssh.1
  %or78 = or i32 %or74, %shl73
  %41 = tail call i32 @llvm.bswap.i32(i32 %or78)
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add80 = add i32 %43, 36
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %44 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #7, !srcloc !120
  %inc85 = add nuw nsw i32 %i.1157, 1
  %exitcond161.not = icmp eq i32 %inc85, %n_chan
  br i1 %exitcond161.not, label %for.body65.for.end86_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65

for.body65.for.end86_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end86

for.end86:                                        ; preds = %for.body65.for.end86_crit_edge, %if.end61.for.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backadd)
  %cmp94158 = icmp sgt i32 %backadd, 0
  br i1 %cmp94158, label %do.body97.lr.ph, label %for.end86.do.body110_crit_edge

for.end86.do.body110_crit_edge:                   ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body110

do.body97.lr.ph:                                  ; preds = %for.end86
  %and90 = shl nuw nsw i32 %shr, 8
  %shl91 = and i32 %and90, 768
  %or92 = or i32 %shl91, %and
  %or100 = or i32 %or92, %ssh.1
  %45 = tail call i32 @llvm.bswap.i32(i32 %or100)
  br label %do.body97

do.body97:                                        ; preds = %do.body97.do.body97_crit_edge, %do.body97.lr.ph
  %i.2159 = phi i32 [ 0, %do.body97.lr.ph ], [ %inc107, %do.body97.do.body97_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase, align 4
  %add102 = add i32 %47, 36
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %48 = inttoptr i32 %add104 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #7, !srcloc !120
  %inc107 = add nuw nsw i32 %i.2159, 1
  %exitcond162.not = icmp eq i32 %inc107, %backadd
  br i1 %exitcond162.not, label %do.body97.do.body110_crit_edge, label %do.body97.do.body97_crit_edge

do.body97.do.body97_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

do.body97.do.body110_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body110

do.body110:                                       ; preds = %do.body97.do.body110_crit_edge, %for.end86.do.body110_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add114 = add i32 %50, 44
  %and115 = and i32 %add114, 1048575
  %add116 = or i32 %and115, -18874368
  %51 = inttoptr i32 %add116 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 0) #7, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 24
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci9118_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %shr3 = lshr i32 %3, 24
  %and4 = and i32 %shr3, 3
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp669 = icmp ugt i32 %5, 1
  br i1 %cmp669, label %for.body.lr.ph, label %entry.cleanup44_crit_edge

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

for.body.lr.ph:                                   ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %usemux = getelementptr inbounds %struct.pci9118_private, ptr %7, i32 0, i32 1
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and4)
  %cmp31 = icmp eq i32 %and4, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr i32, ptr %1, i32 %i.070
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %and9 = and i32 %9, 65535
  %shr16 = lshr i32 %9, 24
  %and17 = and i32 %shr16, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and17, i32 %and4)
  %cmp18.not = icmp eq i32 %and17, %and4
  br i1 %cmp18.not, label %if.end20, label %for.body.cleanup44.sink.split_crit_edge

for.body.cleanup44.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44.sink.split

if.end20:                                         ; preds = %for.body
  %shr12 = lshr i32 %9, 16
  %and13 = and i32 %shr12, 255
  %10 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %11, i32 0, i32 1, i32 %and13
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.i67 = getelementptr %struct.comedi_lrange, ptr %11, i32 0, i32 1, i32 %and
  %14 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i67, align 4
  %16 = xor i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %if.end20.cleanup44.sink.split_crit_edge, label %if.end30

if.end20.cleanup44.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44.sink.split

if.end30:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %usemux to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %usemux, align 4
  %19 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %or.cond = select i1 %tobool.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %land.lhs.true33, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true33:                                  ; preds = %if.end30
  %20 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %21, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %div)
  %cmp34.not = icmp ult i32 %and9, %div
  br i1 %cmp34.not, label %land.lhs.true33.for.inc_crit_edge, label %land.lhs.true33.cleanup44.sink.split_crit_edge

land.lhs.true33.cleanup44.sink.split_crit_edge:   ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44.sink.split

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %if.end30.for.inc_crit_edge
  %inc = add nuw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup44

cleanup44.sink.split:                             ; preds = %land.lhs.true33.cleanup44.sink.split_crit_edge, %if.end20.cleanup44.sink.split_crit_edge, %for.body.cleanup44.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.25, %for.body.cleanup44.sink.split_crit_edge ], [ @.str.28, %if.end20.cleanup44.sink.split_crit_edge ], [ @.str.31, %land.lhs.true33.cleanup44.sink.split_crit_edge ]
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.25.sink) #10
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup44.sink.split, %for.inc.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup44_crit_edge ], [ -22, %cleanup44.sink.split ], [ 0, %for.inc.cleanup44_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci9118_ai_cmd_start(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %int_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_ctrl, align 2
  %conv = zext i8 %3 to i32
  %4 = shl nuw i32 %conv, 24
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  tail call void @arm_heavy_mb() #7
  %ai_cfg = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ai_cfg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ai_cfg, align 1
  %conv5 = zext i8 %9 to i32
  %10 = shl nuw i32 %conv5, 24
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add7 = add i32 %12, 48
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %13 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #7, !srcloc !120
  %ai_do = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %ai_do to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ai_do, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %15, label %entry.pci9118_start_pacer.exit_crit_edge [
    i32 3, label %entry.do.body15_crit_edge
    i32 1, label %entry.if.then.i_crit_edge
    i32 2, label %entry.if.then.i_crit_edge34
    i32 4, label %entry.if.then.i_crit_edge35
  ]

entry.if.then.i_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

entry.pci9118_start_pacer.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci9118_start_pacer.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge34, %entry.if.then.i_crit_edge35
  %pacer.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pacer.i, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %18, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #7
  br label %pci9118_start_pacer.exit

pci9118_start_pacer.exit:                         ; preds = %if.then.i, %entry.pci9118_start_pacer.exit_crit_edge
  %ai_ctrl = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ai_ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ai_ctrl, align 1
  %21 = or i8 %20, 32
  store i8 %21, ptr %ai_ctrl, align 1
  br label %do.body15

do.body15:                                        ; preds = %pci9118_start_pacer.exit, %entry.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  %ai_ctrl18 = getelementptr inbounds %struct.pci9118_private, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %ai_ctrl18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ai_ctrl18, align 1
  %conv19 = zext i8 %23 to i32
  %24 = shl nuw i32 %conv19, 24
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add21 = add i32 %26, 24
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %27 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #7, !srcloc !120
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci9118_ai_inttrig(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inttrig, align 4
  tail call fastcc void @pci9118_ai_cmd_start(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci9118_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adl_pci9118_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_adl_pci9118__236_1731_adl_pci9118_driver_init6, !1, !"__initcall__kmod_adl_pci9118__236_1731_adl_pci9118_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1731, i32 1}
!2 = !{ptr @__exitcall_adl_pci9118_driver_exit, !1, !"__exitcall_adl_pci9118_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1733, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1734, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1735, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1699, i32 17}
!12 = !{ptr @adl_pci9118_driver, !13, !"adl_pci9118_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1698, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1453, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pci9118_find_pci._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pci9118_find_pci._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 697, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pci9118_interrupt._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pci9118_interrupt._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 703, i32 3}
!29 = !{ptr @pci9118_interrupt._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pci9118_interrupt._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 710, i32 3}
!33 = !{ptr @pci9118_interrupt._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pci9118_interrupt._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 716, i32 3}
!37 = !{ptr @pci9118_interrupt._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pci9118_interrupt._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 722, i32 3}
!41 = !{ptr @pci9118_interrupt._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pci9118_interrupt._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 727, i32 3}
!45 = !{ptr @pci9118_interrupt._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pci9118_interrupt._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @pci9118hg_ai_range, !48, !"pci9118hg_ai_range", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 151, i32 35}
!49 = !{ptr @pci9118_ai_range, !50, !"pci9118_ai_range", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 138, i32 35}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 305, i32 4}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pci9118_ai_check_chanlist._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pci9118_ai_check_chanlist._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 311, i32 4}
!58 = !{ptr @pci9118_ai_check_chanlist._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pci9118_ai_check_chanlist._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 317, i32 4}
!62 = !{ptr @pci9118_ai_check_chanlist._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pci9118_ai_check_chanlist._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1018, i32 3}
!66 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pci9118_ai_cmd._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @pci9118_ai_cmd._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1066, i32 4}
!71 = !{ptr @pci9118_ai_cmd._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pci9118_ai_cmd._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1099, i32 3}
!75 = !{ptr @pci9118_ai_cmd._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pci9118_ai_cmd._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 825, i32 4}
!79 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pci9118_ai_setup_dma._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @pci9118_ai_setup_dma._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 832, i32 5}
!85 = !{ptr @pci9118_ai_setup_dma._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pci9118_ai_setup_dma._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 843, i32 4}
!89 = !{ptr @pci9118_ai_setup_dma._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @pci9118_ai_setup_dma._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 850, i32 5}
!93 = !{ptr @pci9118_ai_setup_dma._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pci9118_ai_setup_dma._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 178, i32 12}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 181, i32 12}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 185, i32 12}
!101 = !{ptr @pci9118_boards, !102, !"pci9118_boards", i1 false, i1 false}
!102 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 176, i32 39}
!103 = !{ptr @adl_pci9118_pci_driver, !104, !"adl_pci9118_pci_driver", i1 false, i1 false}
!104 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1725, i32 26}
!105 = !{ptr @adl_pci9118_pci_table, !106, !"adl_pci9118_pci_table", i1 false, i1 false}
!106 = !{!"../drivers/comedi/drivers/adl_pci9118.c", i32 1717, i32 35}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
!117 = !{i64 4671531}
!118 = !{i64 2154659213}
!119 = !{i64 2154650886}
!120 = !{i64 4671113}
!121 = !{i64 2154651362}
!122 = !{i64 2154651838}
!123 = !{i64 2154592410}
!124 = !{i64 2154652743}
!125 = !{i64 2154653430}
!126 = !{i64 2154653688}
!127 = !{i64 2154654164}
!128 = !{i64 2154654640}
!129 = !{i64 2154655151}
!130 = !{i64 2154655684}
!131 = !{i64 2154609431}
!132 = !{i64 2154610142}
!133 = !{i64 2154610436}
!134 = !{i64 2154614739}
!135 = !{i64 2154622471}
!136 = !{i64 2154588909}
!137 = !{i64 2154589430}
!138 = !{i64 2154603292}
!139 = !{i64 2154603892}
!140 = !{i64 2154608744}
!141 = !{i64 2154647942}
!142 = !{i64 2154647288}
!143 = !{i64 2154648875}
!144 = !{i32 0, i32 33}
!145 = !{i64 2154637228}
!146 = !{i64 2154640165}
!147 = !{i64 2154643002}
!148 = !{i64 2154644471}
!149 = !{i64 2154645158}
!150 = !{i64 2154590395}
!151 = !{i64 2154590708}
!152 = !{i64 2154632123}
!153 = !{i64 2154633687}
!154 = !{i64 2154634386}
!155 = !{i64 2154645455}
!156 = !{i64 2154591649}
!157 = !{i64 2154591918}
!158 = !{i64 2154605273}
!159 = !{i64 2154605792}
!160 = !{i64 2154606298}
!161 = !{i64 2154606774}
!162 = !{i64 2154607250}
!163 = !{i64 2154607742}
!164 = !{i64 2154649203}
!165 = !{i64 2154650131}
!166 = !{i64 2154650396}
!167 = !{i64 2154604576}
!168 = !{i64 2154598935}
!169 = !{i64 2154599441}
!170 = !{i64 2154599917}
!171 = !{i64 2154600393}
!172 = !{i64 2154600920}
!173 = !{i64 2154601521}
!174 = !{i64 2154602064}
!175 = !{i64 2154602556}
!176 = !{i64 2154646945}
!177 = !{i64 2154623003}
!178 = !{i64 2154623525}
!179 = !{i64 2154624126}
