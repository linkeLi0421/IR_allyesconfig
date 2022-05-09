; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/amplc_pci230.c_pt.bc'
source_filename = "../drivers/comedi/drivers/amplc_pci230.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci230_board = type { ptr, i16, i8, i8, i8, i8 }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci230_private = type { %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i16, i16, i16, i16, i16, i8, [2 x i8], i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }

@__initcall__kmod_amplc_pci230__246_2569_amplc_pci230_driver_init6 = internal global ptr @amplc_pci230_driver_init, section ".initcall6.init", align 4
@amplc_pci230_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @pci230_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@amplc_pci230_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @amplc_pci230_pci_table, ptr @amplc_pci230_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amplc_pci230_driver_exit = internal global ptr @amplc_pci230_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [50 x i8] c"amplc_pci230.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [76 x i8] c"amplc_pci230.description=Comedi driver for Amplicon PCI230(+) and PCI260(+)\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [54 x i8] c"amplc_pci230.file=drivers/comedi/drivers/amplc_pci230\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [25 x i8] c"amplc_pci230.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amplc_pci230\00", [19 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"amplc_pci230: attach pci %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci230_auto_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/comedi/drivers/amplc_pci230.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry_ptr = internal global ptr @pci230_auto_attach._entry, section ".printk_index", align 4
@pci230_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&devpriv->isr_spinlock\00", [41 x i8] zeroinitializer }, align 32
@pci230_auto_attach.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&devpriv->res_spinlock\00", [41 x i8] zeroinitializer }, align 32
@pci230_auto_attach.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&devpriv->ai_stop_spinlock\00", [37 x i8] zeroinitializer }, align 32
@pci230_auto_attach.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&devpriv->ao_stop_spinlock\00", [37 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2392, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"amplc_pci230: BUG! cannot determine board type!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry_ptr.16 = internal global ptr @pci230_auto_attach._entry.13, section ".printk_index", align 4
@pci230_auto_attach.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 2, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s I/O region 1 0x%04lx I/O region 2 0x%04lx\0A\00", [50 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2426, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - bad hardware version - got %u, need %u\0A\00", [51 x i8] zeroinitializer }, align 32
@pci230_auto_attach._entry_ptr.20 = internal global ptr @pci230_auto_attach._entry.18, section ".printk_index", align 4
@pci230_boards = internal constant { [4 x %struct.pci230_board], [48 x i8] } { [4 x %struct.pci230_board] [%struct.pci230_board { ptr @.str.21, i16 0, i8 16, i8 12, i8 1, i8 -128 }, %struct.pci230_board { ptr @.str.22, i16 6, i8 16, i8 0, i8 1, i8 0 }, %struct.pci230_board { ptr @.str.23, i16 0, i8 12, i8 12, i8 0, i8 -128 }, %struct.pci230_board { ptr @.str.24, i16 6, i8 12, i8 0, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci230+\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pci260+\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci230\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pci260\00", [25 x i8] zeroinitializer }, align 32
@pci230_handle_ao_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1111, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AO FIFO underrun\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci230_handle_ao_fifo\00", [42 x i8] zeroinitializer }, align 32
@pci230_handle_ao_fifo._entry_ptr = internal global ptr @pci230_handle_ao_fifo._entry, section ".printk_index", align 4
@pci230_handle_ao_fifo._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1121, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AO buffer underrun\0A\00", [44 x i8] zeroinitializer }, align 32
@pci230_handle_ao_fifo._entry_ptr.29 = internal global ptr @pci230_handle_ao_fifo._entry.27, section ".printk_index", align 4
@pci230_handle_ao_fifo._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1166, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pci230_handle_ao_fifo._entry_ptr.31 = internal global ptr @pci230_handle_ao_fifo._entry.30, section ".printk_index", align 4
@pci230_handle_ai._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 2037, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AI FIFO overrun\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci230_handle_ai\00", [47 x i8] zeroinitializer }, align 32
@pci230_handle_ai._entry_ptr = internal global ptr @pci230_handle_ai._entry, section ".printk_index", align 4
@pci230_ai_range = internal constant { { i32, [7 x %struct.comedi_krange] }, [40 x i8] } { { i32, [7 x %struct.comedi_krange] } { i32 7, [7 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }] }, [40 x i8] zeroinitializer }, align 32
@pci230_ai_insn_read.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 -71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pci230_ai_insn_read\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: differential channel number out of range 0 to %u\0A\00", [42 x i8] zeroinitializer }, align 32
@pci230_ai_gain = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\03\01\02\03", [25 x i8] zeroinitializer }, align 32
@pci230_timebase = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.36, i8 1, i8 100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci230_ai_check_chanlist\00", [39 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 1, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: channel numbers must increase or sequence must repeat exactly\0A\00", [61 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.39, i8 1, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s: channel sequence analogue references must be all the same (single-ended or differential)\0A\00", [34 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.40, i8 1, i8 107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: channel sequence ranges must be all bipolar or all unipolar\0A\00", [63 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.41, i8 1, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: single-ended channel pairs must have the same range\0A\00", [39 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.42, i8 1, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: sequence must repeat exactly\0A\00", [62 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"amplc_pci230: ai_cmdtest: Buggy PCI230+/260+ h/w version %u requires first channel of multi-channel sequence to be 0 (corrected in h/w version 4)\0A\00", [45 x i8] zeroinitializer }, align 32
@pci230_ai_check_chanlist._entry_ptr = internal global ptr @pci230_ai_check_chanlist._entry, section ".printk_index", align 4
@pci230_ao_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@pci230_ao_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci230_ao_check_chanlist\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: channel numbers must increase\0A\00", [61 x i8] zeroinitializer }, align 32
@pci230_ao_check_chanlist.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.47, i8 0, i8 -39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: channels must have the same range\0A\00", [57 x i8] zeroinitializer }, align 32
@amplc_pci230_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5340, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5340, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 64]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 64]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 64]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 128]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 128]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 16, i64 64]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 128]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 64, i64 128]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 128]
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"amplc_pci230_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2542, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"amplc_pci230_pci_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2563, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2543, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2377, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2384, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2385, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2386, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2387, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2391, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2408, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2423, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"pci230_boards\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 448, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 450, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 458, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 464, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 471, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1111, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1121, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1166, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2037, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"pci230_ai_range\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 508, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 738, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"pci230_ai_gain\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 521, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"pci230_timebase\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 499, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1422, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1438, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1445, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1452, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1460, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1476, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1494, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"pci230_ao_range\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 524, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 860, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 867, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant [23 x i8] c"amplc_pci230_pci_table\00", align 1
@___asan_gen_.245 = private constant [41 x i8] c"../drivers/comedi/drivers/amplc_pci230.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 2556, i32 35 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_amplc_pci230_driver_exit, ptr @__initcall__kmod_amplc_pci230__246_2569_amplc_pci230_driver_init6, ptr @amplc_pci230_driver_exit, ptr @pci230_ai_check_chanlist._entry, ptr @pci230_ai_check_chanlist._entry_ptr, ptr @pci230_auto_attach._entry, ptr @pci230_auto_attach._entry.13, ptr @pci230_auto_attach._entry.18, ptr @pci230_auto_attach._entry_ptr, ptr @pci230_auto_attach._entry_ptr.16, ptr @pci230_auto_attach._entry_ptr.20, ptr @pci230_handle_ai._entry, ptr @pci230_handle_ai._entry_ptr, ptr @pci230_handle_ao_fifo._entry, ptr @pci230_handle_ao_fifo._entry.27, ptr @pci230_handle_ao_fifo._entry.30, ptr @pci230_handle_ao_fifo._entry_ptr, ptr @pci230_handle_ao_fifo._entry_ptr.29, ptr @pci230_handle_ao_fifo._entry_ptr.31, ptr @amplc_pci230_driver, ptr @amplc_pci230_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pci230_auto_attach.__key, ptr @.str.6, ptr @pci230_auto_attach.__key.7, ptr @.str.8, ptr @pci230_auto_attach.__key.9, ptr @.str.10, ptr @pci230_auto_attach.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @pci230_boards, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @pci230_ai_range, ptr @.str.35, ptr @.str.36, ptr @pci230_ai_gain, ptr @pci230_timebase, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @pci230_ao_range, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @amplc_pci230_pci_table], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci230_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci230_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_auto_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_boards to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_handle_ao_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_handle_ao_fifo._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_handle_ao_fifo._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_handle_ai._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_ai_range to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_ai_gain to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_timebase to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_ai_check_chanlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci230_ao_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amplc_pci230_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amplc_pci230_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @amplc_pci230_driver, ptr noundef nonnull @amplc_pci230_pci_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amplc_pci230_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @amplc_pci230_driver, ptr noundef nonnull @amplc_pci230_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i) #11
  %call2 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 200) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %pci_name.exit.cleanup272_crit_edge, label %do.body3

pci_name.exit.cleanup272_crit_edge:               ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

do.body3:                                         ; preds = %pci_name.exit
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call2, ptr noundef nonnull @.str.6, ptr noundef nonnull @pci230_auto_attach.__key, i16 noundef signext 3) #8
  %res_spinlock = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %res_spinlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @pci230_auto_attach.__key.7, i16 noundef signext 3) #8
  %ai_stop_spinlock = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ai_stop_spinlock, ptr noundef nonnull @.str.10, ptr noundef nonnull @pci230_auto_attach.__key.9, i16 noundef signext 3) #8
  %ao_stop_spinlock = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ao_stop_spinlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @pci230_auto_attach.__key.11, i16 noundef signext 3) #8
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  %end.i.i = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3, i32 1
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %do.body3.do.end24_crit_edge [
    i16 0, label %if.end7.i.i
    i16 6, label %if.end7.i.1.i
  ]

do.body3.do.end24_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end7.i.i:                                      ; preds = %do.body3
  %9 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.i.i = icmp eq i32 %10, 0
  br i1 %cmp8.i.i, label %if.end7.i.i.cleanup.split.loop.exit6.i_crit_edge, label %cond.end.i.i

if.end7.i.i.cleanup.split.loop.exit6.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.split.loop.exit6.i

cond.end.i.i:                                     ; preds = %if.end7.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = add i32 %10, 1
  %add.i.i = sub i32 %sub.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i)
  %phi.cmp.i.i = icmp ult i32 %add.i.i, 32
  br i1 %phi.cmp.i.i, label %cond.end.i.i.cleanup.split.loop.exit6.i_crit_edge, label %cond.end.i.i.pci230_find_pci_board.exit_crit_edge

cond.end.i.i.pci230_find_pci_board.exit_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_find_pci_board.exit

cond.end.i.i.cleanup.split.loop.exit6.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.split.loop.exit6.i

if.end7.i.1.i:                                    ; preds = %do.body3
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8.i.1.i = icmp eq i32 %14, 0
  br i1 %cmp8.i.1.i, label %if.end7.i.1.i.cleanup.split.loop.exit6.i_crit_edge, label %cond.end.i.1.i

if.end7.i.1.i.cleanup.split.loop.exit6.i_crit_edge: ; preds = %if.end7.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.split.loop.exit6.i

cond.end.i.1.i:                                   ; preds = %if.end7.i.1.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.1.i = add i32 %14, 1
  %add.i.1.i = sub i32 %sub.i.1.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.1.i)
  %phi.cmp.i.1.i = icmp ult i32 %add.i.1.i, 32
  br i1 %phi.cmp.i.1.i, label %cond.end.i.1.i.cleanup.split.loop.exit6.i_crit_edge, label %cond.end.i.1.i.pci230_find_pci_board.exit_crit_edge

cond.end.i.1.i.pci230_find_pci_board.exit_crit_edge: ; preds = %cond.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_find_pci_board.exit

cond.end.i.1.i.cleanup.split.loop.exit6.i_crit_edge: ; preds = %cond.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.split.loop.exit6.i

cleanup.split.loop.exit6.i:                       ; preds = %cond.end.i.1.i.cleanup.split.loop.exit6.i_crit_edge, %if.end7.i.1.i.cleanup.split.loop.exit6.i_crit_edge, %cond.end.i.i.cleanup.split.loop.exit6.i_crit_edge, %if.end7.i.i.cleanup.split.loop.exit6.i_crit_edge
  %i.012.lcssa.i = phi i32 [ 3, %cond.end.i.1.i.cleanup.split.loop.exit6.i_crit_edge ], [ 3, %if.end7.i.1.i.cleanup.split.loop.exit6.i_crit_edge ], [ 2, %cond.end.i.i.cleanup.split.loop.exit6.i_crit_edge ], [ 2, %if.end7.i.i.cleanup.split.loop.exit6.i_crit_edge ]
  br label %pci230_find_pci_board.exit

pci230_find_pci_board.exit:                       ; preds = %cleanup.split.loop.exit6.i, %cond.end.i.1.i.pci230_find_pci_board.exit_crit_edge, %cond.end.i.i.pci230_find_pci_board.exit_crit_edge
  %i.012.lcssa14.i.pn = phi i32 [ %i.012.lcssa.i, %cleanup.split.loop.exit6.i ], [ 0, %cond.end.i.i.pci230_find_pci_board.exit_crit_edge ], [ 1, %cond.end.i.1.i.pci230_find_pci_board.exit_crit_edge ]
  %retval.0.i394 = getelementptr [4 x %struct.pci230_board], ptr @pci230_boards, i32 0, i32 %i.012.lcssa14.i.pn
  %tobool20.not = icmp eq ptr %retval.0.i394, null
  br i1 %tobool20.not, label %pci230_find_pci_board.exit.do.end24_crit_edge, label %if.end26

pci230_find_pci_board.exit.do.end24_crit_edge:    ; preds = %pci230_find_pci_board.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.end24:                                         ; preds = %pci230_find_pci_board.exit.do.end24_crit_edge, %do.body3.do.end24_crit_edge
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14) #11
  br label %cleanup272

if.end26:                                         ; preds = %pci230_find_pci_board.exit
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %19 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i394, ptr %board_ptr, align 4
  %20 = ptrtoint ptr %retval.0.i394 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i394, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %board_name, align 4
  %call27 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup272_crit_edge

if.end26.cleanup272_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.end30:                                         ; preds = %if.end26
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %iobase, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 8
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 4
  %28 = ptrtoint ptr %daqio to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %daqio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_auto_attach.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_auto_attach, %do.end47)) #8
          to label %if.then40 [label %do.end47], !srcloc !128

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev, align 4
  %31 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %board_name, align 4
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %35 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %daqio, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_auto_attach.__UNIQUE_ID_ddebug245, ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef %32, i32 noundef %34, i32 noundef %36) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %if.end30
  %37 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daqio, align 4
  %and = and i32 %38, 1048575
  %add49 = or i32 %and, -18874368
  %39 = inttoptr i32 %add49 to ptr
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %39) #8, !srcloc !129
  %41 = lshr i16 %40, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %42 = and i16 %41, 1
  %daccon = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 8
  %43 = ptrtoint ptr %daccon to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %daccon, align 4
  %44 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp = icmp eq i32 %45, 0
  br i1 %cmp, label %do.end47.do.body158_crit_edge, label %cond.end

do.end47.do.body158_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body158

cond.end:                                         ; preds = %do.end47
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 8
  %sub = add i32 %45, -31
  %48 = sub i32 %sub, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %48)
  %cmp65 = icmp ult i32 %48, -32
  br i1 %cmp65, label %if.then67, label %cond.end.do.body158_crit_edge

cond.end.do.body158_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body158

if.then67:                                        ; preds = %cond.end
  %49 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %daqio, align 4
  %add70 = add i32 %50, 30
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %51 = inttoptr i32 %add72 to ptr
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %51) #8, !srcloc !129
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 6
  %54 = ptrtoint ptr %hwver to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %hwver, align 4
  %conv77 = zext i16 %53 to i32
  %min_hwver = getelementptr [4 x %struct.pci230_board], ptr @pci230_boards, i32 0, i32 %i.012.lcssa14.i.pn, i32 4
  %55 = ptrtoint ptr %min_hwver to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %min_hwver, align 4
  %conv78 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv77, i32 %conv78)
  %cmp79 = icmp ult i32 %conv77, %conv78
  br i1 %cmp79, label %do.end84, label %if.end91

do.end84:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class_dev, align 4
  %59 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.19, ptr noundef %60, i32 noundef %conv77, i32 noundef %conv78) #11
  br label %cleanup272

if.end91:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp94.not = icmp eq i16 %52, 0
  br i1 %cmp94.not, label %if.end91.do.body114_crit_edge, label %if.then96

if.end91.do.body114_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114

if.then96:                                        ; preds = %if.end91
  %61 = and i32 %i.012.lcssa14.i.pn, 1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %if.then96.do.body114_crit_edge, label %land.lhs.true

if.then96.do.body114_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114

land.lhs.true:                                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = zext i1 %62 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp106 = icmp ugt i16 %53, 1
  %63 = or i16 %spec.select, 2
  %spec.select392 = select i1 %cmp106, i16 %63, i16 %spec.select
  br label %do.body114

do.body114:                                       ; preds = %land.lhs.true, %if.then96.do.body114_crit_edge, %if.end91.do.body114_crit_edge
  %extfunc.1 = phi i16 [ 1, %if.then96.do.body114_crit_edge ], [ 0, %if.end91.do.body114_crit_edge ], [ %spec.select392, %land.lhs.true ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %64 = tail call i16 @llvm.bswap.i16(i16 %extfunc.1)
  %65 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %daqio, align 4
  %add118 = add i32 %66, 28
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %67 = inttoptr i32 %add120 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %67, i16 %64) #8, !srcloc !133
  %68 = and i16 %extfunc.1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool124.not = icmp eq i16 %68, 0
  br i1 %tobool124.not, label %do.body114.do.body158_crit_edge, label %do.body126

do.body114.do.body158_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body158

do.body126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %daccon, align 4
  %71 = or i16 %70, 4352
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %73 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %daqio, align 4
  %and136 = and i32 %74, 1048575
  %add137 = or i32 %and136, -18874368
  %75 = inttoptr i32 %add137 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 %72) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %daqio, align 4
  %add143 = add i32 %77, 6
  %and144 = and i32 %add143, 1048575
  %add145 = or i32 %and144, -18874368
  %78 = inttoptr i32 %add145 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %78, i16 0) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %daccon, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %82 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %daqio, align 4
  %and153 = and i32 %83, 1048575
  %add154 = or i32 %and153, -18874368
  %84 = inttoptr i32 %add154 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %84, i16 %81) #8, !srcloc !133
  br label %do.body158

do.body158:                                       ; preds = %do.body126, %do.body114.do.body158_crit_edge, %cond.end.do.body158_crit_edge, %do.end47.do.body158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %85 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase, align 4
  %add162 = add i32 %86, 30
  %and163 = and i32 %add162, 1048575
  %add164 = or i32 %and163, -18874368
  %87 = inttoptr i32 %add164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 0) #8, !srcloc !138
  %adcg = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 10
  %88 = ptrtoint ptr %adcg to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %adcg, align 4
  %adccon = getelementptr inbounds %struct.pci230_private, ptr %call2, i32 0, i32 7
  %89 = ptrtoint ptr %adccon to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 8, ptr %adccon, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %daqio, align 4
  %add170 = add i32 %91, 12
  %and171 = and i32 %add170, 1048575
  %add172 = or i32 %and171, -18874368
  %92 = inttoptr i32 %add172 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %92, i16 256) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %adcg to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %adcg, align 4
  %95 = tail call i16 @llvm.bswap.i16(i16 %94)
  %96 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %daqio, align 4
  %add179 = add i32 %97, 14
  %and180 = and i32 %add179, 1048575
  %add181 = or i32 %and180, -18874368
  %98 = inttoptr i32 %add181 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %98, i16 %95) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %adccon to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %adccon, align 2
  %101 = or i16 %100, 4096
  %102 = tail call i16 @llvm.bswap.i16(i16 %101)
  %103 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %daqio, align 4
  %add191 = add i32 %104, 10
  %and192 = and i32 %add191, 1048575
  %add193 = or i32 %and192, -18874368
  %105 = inttoptr i32 %add193 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %105, i16 %102) #8, !srcloc !133
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %106 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool195.not = icmp eq i32 %107, 0
  br i1 %tobool195.not, label %do.body158.if.end206_crit_edge, label %if.then196

do.body158.if.end206_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then196:                                       ; preds = %do.body158
  %108 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %107, ptr noundef nonnull @pci230_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %109, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp200 = icmp eq i32 %call.i, 0
  br i1 %cmp200, label %if.then202, label %if.then196.if.end206_crit_edge

if.then196.if.end206_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then202:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq, align 4
  %irq204 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %112 = ptrtoint ptr %irq204 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %irq204, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then202, %if.then196.if.end206_crit_edge, %do.body158.if.end206_crit_edge
  %113 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iobase, align 4
  %add208 = add i32 %114, 20
  %call209 = tail call ptr @comedi_8254_init(i32 noundef %add208, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %115 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call209, ptr %pacer, align 4
  %tobool211.not = icmp eq ptr %call209, null
  br i1 %tobool211.not, label %if.end206.cleanup272_crit_edge, label %if.end213

if.end206.cleanup272_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.end213:                                        ; preds = %if.end206
  %call214 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end213.cleanup272_crit_edge

if.end213.cleanup272_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.end217:                                        ; preds = %if.end213
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %116 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 4
  %119 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 5308416, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 3
  %120 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 16, ptr %n_chan, align 4
  %ai_bits = getelementptr [4 x %struct.pci230_board], ptr @pci230_boards, i32 0, i32 %i.012.lcssa14.i.pn, i32 2
  %121 = ptrtoint ptr %ai_bits to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ai_bits, align 2
  %conv219 = zext i8 %122 to i32
  %notmask = shl nsw i32 -1, %conv219
  %sub220 = xor i32 %notmask, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 13
  %123 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %sub220, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 15
  %124 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @pci230_ai_range, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 18
  %125 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @pci230_ai_insn_read, ptr %insn_read, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 5
  %126 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 256, ptr %len_chanlist, align 4
  %irq221 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %127 = ptrtoint ptr %irq221 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %irq221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool222.not = icmp eq i32 %128, 0
  br i1 %tobool222.not, label %if.end217.if.end226_crit_edge, label %if.then223

if.end217.if.end226_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

if.then223:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %129 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %117, ptr %read_subdev, align 4
  %130 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %subdev_flags, align 4
  %or225 = or i32 %131, 32768
  store i32 %or225, ptr %subdev_flags, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 22
  %132 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @pci230_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 23
  %133 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @pci230_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %117, i32 0, i32 25
  %134 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @pci230_ai_cancel, ptr %cancel, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.end217.if.end226_crit_edge
  %135 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %subdevices, align 4
  %arrayidx228 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1
  %137 = and i32 %i.012.lcssa14.i.pn, 1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %if.else269, label %if.then231

if.then231:                                       ; preds = %if.end226
  %ao_bits229 = getelementptr [4 x %struct.pci230_board], ptr @pci230_boards, i32 0, i32 %i.012.lcssa14.i.pn, i32 3
  %type232 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 2
  %139 = ptrtoint ptr %type232 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %type232, align 4
  %subdev_flags233 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 4
  %140 = ptrtoint ptr %subdev_flags233 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1179648, ptr %subdev_flags233, align 4
  %n_chan234 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 3
  %141 = ptrtoint ptr %n_chan234 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %n_chan234, align 4
  %142 = ptrtoint ptr %ao_bits229 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ao_bits229, align 1
  %conv236 = zext i8 %143 to i32
  %notmask391 = shl nsw i32 -1, %conv236
  %sub238 = xor i32 %notmask391, -1
  %maxdata239 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 13
  %144 = ptrtoint ptr %maxdata239 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub238, ptr %maxdata239, align 4
  %range_table240 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 15
  %145 = ptrtoint ptr %range_table240 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @pci230_ao_range, ptr %range_table240, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 19
  %146 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @pci230_ao_insn_write, ptr %insn_write, align 4
  %len_chanlist241 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 5
  %147 = ptrtoint ptr %len_chanlist241 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %len_chanlist241, align 4
  %148 = ptrtoint ptr %irq221 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool243.not = icmp eq i32 %149, 0
  br i1 %tobool243.not, label %if.then231.if.end250_crit_edge, label %if.then244

if.then231.if.end250_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end250

if.then244:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #10
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %150 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %arrayidx228, ptr %write_subdev, align 4
  %151 = ptrtoint ptr %subdev_flags233 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %subdev_flags233, align 4
  %or246 = or i32 %152, 16384
  store i32 %or246, ptr %subdev_flags233, align 4
  %do_cmd247 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 22
  %153 = ptrtoint ptr %do_cmd247 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @pci230_ao_cmd, ptr %do_cmd247, align 4
  %do_cmdtest248 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 23
  %154 = ptrtoint ptr %do_cmdtest248 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @pci230_ao_cmdtest, ptr %do_cmdtest248, align 4
  %cancel249 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 25
  %155 = ptrtoint ptr %cancel249 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @pci230_ao_cancel, ptr %cancel249, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then244, %if.then231.if.end250_crit_edge
  %call251 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx228) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then264, label %if.end250.cleanup272_crit_edge

if.end250.cleanup272_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.then264:                                       ; preds = %if.end250
  %156 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %subdevices, align 4
  %arrayidx258 = getelementptr %struct.comedi_subdevice, ptr %157, i32 2
  %call265 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx258, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.then264.if.end271_crit_edge, label %if.then264.cleanup272_crit_edge

if.then264.cleanup272_crit_edge:                  ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.then264.if.end271_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

if.else269:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #10
  %type255 = getelementptr %struct.comedi_subdevice, ptr %136, i32 1, i32 2
  %158 = ptrtoint ptr %type255 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %type255, align 4
  %159 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %subdevices, align 4
  %type270 = getelementptr %struct.comedi_subdevice, ptr %160, i32 2, i32 2
  %161 = ptrtoint ptr %type270 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %type270, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else269, %if.then264.if.end271_crit_edge
  br label %cleanup272

cleanup272:                                       ; preds = %if.end271, %if.then264.cleanup272_crit_edge, %if.end250.cleanup272_crit_edge, %if.end213.cleanup272_crit_edge, %if.end206.cleanup272_crit_edge, %do.end84, %if.end26.cleanup272_crit_edge, %do.end24, %pci_name.exit.cleanup272_crit_edge
  %retval.1 = phi i32 [ 0, %if.end271 ], [ -22, %do.end24 ], [ -12, %pci_name.exit.cleanup272_crit_edge ], [ %call27, %if.end26.cleanup272_crit_edge ], [ -5, %do.end84 ], [ -12, %if.end206.cleanup272_crit_edge ], [ %call214, %if.end213.cleanup272_crit_edge ], [ %call251, %if.end250.cleanup272_crit_edge ], [ %call265, %if.then264.cleanup272_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 22
  %2 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_subdev, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %4 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_subdev, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 30
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %ier = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ier, align 2
  %and14123 = and i8 %11, %9
  %neg = xor i8 %9, -1
  %and19 = and i8 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add25 = add i32 %13, 30
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %14 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %and19) #8, !srcloc !138
  %intr_running = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %intr_running to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %intr_running, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %intr_running, align 1
  %16 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %intr_cpuid = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %intr_cpuid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %intr_cpuid, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call9) #8
  %conv31 = zext i8 %and14123 to i32
  %and32 = and i32 %conv31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool.not = icmp eq i32 %and32, 0
  br i1 %tobool.not, label %do.body4.if.end34_crit_edge, label %if.then33

do.body4.if.end34_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pci230_handle_ao_nofifo(ptr noundef %d, ptr noundef %3)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %do.body4.if.end34_crit_edge
  %and36 = and i32 %conv31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.then38

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call fastcc zeroext i1 @pci230_handle_ao_fifo(ptr noundef %d, ptr noundef %3)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  %and42 = and i32 %conv31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.do.body47_crit_edge, label %if.then44

if.end40.do.body47_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

if.then44:                                        ; preds = %if.end40
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private, align 4
  %async1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %async1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %val.i, align 2, !annotation !145
  %call.i = tail call i32 @comedi_nsamples_left(ptr noundef %5, i32 noundef 2049) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then44.pci230_handle_ai.exit_crit_edge, label %for.body.lr.ph.i

if.then44.pci230_handle_ai.exit_crit_edge:        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_handle_ai.exit

for.body.lr.ph.i:                                 ; preds = %if.then44
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %22, i32 0, i32 4
  %hwver.i = getelementptr inbounds %struct.pci230_private, ptr %22, i32 0, i32 6
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 17, i32 10
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 11
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 17, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fifoamount.088.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %i.087.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifoamount.088.i)
  %cmp4.i = icmp eq i32 %fifoamount.088.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i.if.end41.i_crit_edge

for.body.i.if.end41.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then5.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %daqio.i, align 4
  %add.i = add i32 %27, 10
  %and.i124 = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i124, -18874368
  %28 = inttoptr i32 %add6.i to ptr
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #8, !srcloc !129
  %30 = call i16 @llvm.bswap.i16(i16 %29) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %conv.i = zext i16 %30 to i32
  %and9.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %31 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.32) #11
  br label %for.end.sink.split.i

if.else.i:                                        ; preds = %if.then5.i
  %and11.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else14.i, label %if.else.i.for.end.i_crit_edge

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.else14.i:                                      ; preds = %if.else.i
  %and15.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else18.i, label %if.else14.i.if.end41.i_crit_edge

if.else14.i.if.end41.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.else18.i:                                      ; preds = %if.else14.i
  %33 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp20.not.i = icmp eq i16 %34, 0
  br i1 %cmp20.not.i, label %if.else18.i.if.end41.i_crit_edge, label %if.then22.i

if.else18.i.if.end41.i_crit_edge:                 ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then22.i:                                      ; preds = %if.else18.i
  %35 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %daqio.i, align 4
  %add25.i = add i32 %36, 22
  %and26.i = and i32 %add25.i, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %37 = inttoptr i32 %add27.i to ptr
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #8, !srcloc !129
  %39 = call i16 @llvm.bswap.i16(i16 %38) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %conv31.i = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp32.i = icmp eq i16 %38, 0
  br i1 %cmp32.i, label %if.then22.i.for.end.i_crit_edge, label %if.then22.i.if.end41.i_crit_edge

if.then22.i.if.end41.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.then22.i.for.end.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end41.i:                                       ; preds = %if.then22.i.if.end41.i_crit_edge, %if.else18.i.if.end41.i_crit_edge, %if.else14.i.if.end41.i_crit_edge, %for.body.i.if.end41.i_crit_edge
  %fifoamount.1.i = phi i32 [ %conv31.i, %if.then22.i.if.end41.i_crit_edge ], [ %fifoamount.088.i, %for.body.i.if.end41.i_crit_edge ], [ 2049, %if.else14.i.if.end41.i_crit_edge ], [ 1, %if.else18.i.if.end41.i_crit_edge ]
  %40 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %board_ptr.i.i, align 4
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private, align 4
  %daqio.i.i = getelementptr inbounds %struct.pci230_private, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %daqio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %daqio.i.i, align 4
  %add.i.i = add i32 %45, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %46 = inttoptr i32 %add1.i.i to ptr
  %47 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %46) #8, !srcloc !129
  %48 = call i16 @llvm.bswap.i16(i16 %47) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %ai_bipolar.i.i = getelementptr inbounds %struct.pci230_private, ptr %43, i32 0, i32 13
  %49 = ptrtoint ptr %ai_bipolar.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i.i = load i8, ptr %ai_bipolar.i.i, align 1
  %50 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i = icmp eq i8 %50, 0
  %51 = xor i16 %48, -32768
  %spec.select.i.i = select i1 %tobool.not.i.i, i16 %48, i16 %51
  %ai_bits.i.i = getelementptr inbounds %struct.pci230_board, ptr %41, i32 0, i32 2
  %52 = ptrtoint ptr %ai_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ai_bits.i.i, align 2
  %conv4.i.i = zext i8 %53 to i32
  %sub.i.i = sub nsw i32 16, %conv4.i.i
  %conv5.i.i = zext i16 %spec.select.i.i to i32
  %shr.i.i = lshr i32 %conv5.i.i, %sub.i.i
  %conv6.i.i = trunc i32 %shr.i.i to i16
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv6.i.i, ptr %val.i, align 2
  %call43.i = call i32 @comedi_buf_write_samples(ptr noundef %5, ptr noundef nonnull %val.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.for.end.i_crit_edge, label %if.end46.i

if.end41.i.for.end.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end46.i:                                       ; preds = %if.end41.i
  %dec.i = add i32 %fifoamount.1.i, -1
  %55 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %56)
  %cmp47.i = icmp eq i32 %56, 32
  br i1 %cmp47.i, label %land.lhs.true.i, label %if.end46.i.for.inc.i_crit_edge

if.end46.i.for.inc.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end46.i
  %57 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scans_done.i, align 4
  %59 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp49.not.i = icmp ult i32 %58, %60
  br i1 %cmp49.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.for.end.sink.split.i_crit_edge

land.lhs.true.i.for.end.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.sink.split.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end46.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.sink.split.i:                             ; preds = %land.lhs.true.i.for.end.sink.split.i_crit_edge, %do.end.i
  %.sink89.i = phi i32 [ 16, %do.end.i ], [ 2, %land.lhs.true.i.for.end.sink.split.i_crit_edge ]
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 16
  %61 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %events.i, align 4
  %or53.i = or i32 %62, %.sink89.i
  store i32 %or53.i, ptr %events.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.sink.split.i, %for.inc.i.for.end.i_crit_edge, %if.end41.i.for.end.i_crit_edge, %if.then22.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %events55.i = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 16
  %63 = ptrtoint ptr %events55.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %events55.i, align 4
  %and56.i = and i32 %64, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %for.end.i.pci230_handle_ai.exit_crit_edge

for.end.i.pci230_handle_ai.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_handle_ai.exit

if.then58.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @pci230_ai_update_fifo_trigger_level(ptr noundef %d, ptr noundef %5) #8
  br label %pci230_handle_ai.exit

pci230_handle_ai.exit:                            ; preds = %if.then58.i, %for.end.i.pci230_handle_ai.exit_crit_edge, %if.then44.pci230_handle_ai.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #8
  br label %do.body47

do.body47:                                        ; preds = %pci230_handle_ai.exit, %if.end40.do.body47_crit_edge
  %call55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %65 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ier, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %and19)
  %cmp63.not = icmp eq i8 %66, %and19
  br i1 %cmp63.not, label %do.body47.if.end75_crit_edge, label %do.body66

do.body47.if.end75_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body66:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ier, align 2
  %69 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iobase, align 4
  %add71 = add i32 %70, 30
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %71 = inttoptr i32 %add73 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %68) #8, !srcloc !138
  br label %if.end75

if.end75:                                         ; preds = %do.body66, %do.body47.if.end75_crit_edge
  %72 = ptrtoint ptr %intr_running to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load77 = load i8, ptr %intr_running, align 1
  %bf.clear78 = and i8 %bf.load77, 127
  store i8 %bf.clear78, ptr %intr_running, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call55) #8
  %tobool81.not = icmp eq ptr %3, null
  br i1 %tobool81.not, label %if.end75.if.end84_crit_edge, label %if.then82

if.end75.if.end84_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then82:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %call83 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef nonnull %3) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end75.if.end84_crit_edge
  %call85 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end84 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = and i32 %3, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %4)
  %cmp = icmp eq i32 %4, 33554432
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %6, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %div)
  %cmp6.not = icmp ult i32 %and, %div
  br i1 %cmp6.not, label %if.then.if.end15_crit_edge, label %do.body

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_insn_read.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_insn_read, %cleanup)) #8
          to label %if.then11 [label %cleanup], !srcloc !128

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  %9 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_chan, align 4
  %div13 = sdiv i32 %10, 2
  %sub = add nsw i32 %div13, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_insn_read.__UNIQUE_ID_ddebug236, ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %sub) #8
  br label %cleanup

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pacer, align 4
  %call16 = tail call i32 @comedi_8254_set_mode(ptr noundef %12, i32 noundef 2, i32 noundef 0) #8
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %13 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %14, i32 0, i32 1, i32 %and2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %ai_bipolar = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %ai_bipolar to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %ai_bipolar, align 1
  %18 = lshr i32 %16, 25
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %20, %bf.clear
  store i8 %bf.set, ptr %ai_bipolar, align 1
  br i1 %cmp, label %if.then20, label %if.else31

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nuw nsw i32 %and, 1
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp22 = icmp eq i16 %22, 0
  %. = select i1 %cmp22, i32 3, i32 1
  %adcen.0.in = shl i32 %., %mul
  br label %if.end38

if.else31:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %shl32 = shl nuw i32 1, %and
  %and34 = and i32 %3, 65534
  br label %if.end38

if.end38:                                         ; preds = %if.else31, %if.then20
  %gainshift.0 = phi i32 [ %mul, %if.then20 ], [ %and34, %if.else31 ]
  %adccon.0 = phi i16 [ 278, %if.then20 ], [ 262, %if.else31 ]
  %adcen.1.in = phi i32 [ %adcen.0.in, %if.then20 ], [ %shl32, %if.else31 ]
  %adcen.1 = trunc i32 %adcen.1.in to i16
  %adcg = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %adcg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %adcg, align 4
  %conv39 = zext i16 %24 to i32
  %shl40 = shl i32 3, %gainshift.0
  %neg = xor i32 %shl40, -1
  %and41 = and i32 %conv39, %neg
  %arrayidx = getelementptr [7 x i8], ptr @pci230_ai_gain, i32 0, i32 %and2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv42 = zext i8 %26 to i32
  %shl43 = shl i32 %conv42, %gainshift.0
  %or44 = or i32 %shl43, %and41
  %conv45 = trunc i32 %or44 to i16
  store i16 %conv45, ptr %adcg, align 4
  %27 = lshr exact i8 %20, 3
  %28 = zext i8 %27 to i16
  %29 = or i16 %adccon.0, %28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %30 = tail call i16 @llvm.bswap.i16(i16 %adcen.1)
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %daqio, align 4
  %add = add i32 %32, 12
  %and63 = and i32 %add, 1048575
  %add64 = or i32 %and63, -18874368
  %33 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %adcg to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %adcg, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daqio, align 4
  %add71 = add i32 %38, 14
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %39 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #8, !srcloc !133
  %adccon75 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %adccon75 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %29, ptr %adccon75, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %41 = or i16 %29, 4096
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %daqio, align 4
  %add83 = add i32 %44, 10
  %and84 = and i32 %add83, 1048575
  %add85 = or i32 %and84, -18874368
  %45 = inttoptr i32 %add85 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #8, !srcloc !133
  %n87 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %46 = ptrtoint ptr %n87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp88149.not = icmp eq i32 %47, 0
  br i1 %cmp88149.not, label %if.end38.cleanup_crit_edge, label %for.body.lr.ph

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end38
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end97.for.body_crit_edge, %for.body.lr.ph
  %n.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end97.for.body_crit_edge ]
  %48 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pacer, align 4
  %call91 = tail call i32 @comedi_8254_set_mode(ptr noundef %49, i32 noundef 2, i32 noundef 0) #8
  %50 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pacer, align 4
  %call93 = tail call i32 @comedi_8254_set_mode(ptr noundef %51, i32 noundef 2, i32 noundef 2) #8
  %call94 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pci230_ai_eoc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %for.body
  %52 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %board_ptr.i, align 4
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private, align 4
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %daqio.i, align 4
  %add.i = add i32 %57, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %58 = inttoptr i32 %add1.i to ptr
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %58) #8, !srcloc !129
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %ai_bipolar.i = getelementptr inbounds %struct.pci230_private, ptr %55, i32 0, i32 13
  %61 = ptrtoint ptr %ai_bipolar.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i = load i8, ptr %ai_bipolar.i, align 1
  %62 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  %63 = xor i16 %60, -32768
  %spec.select.i = select i1 %tobool.not.i, i16 %60, i16 %63
  %ai_bits.i = getelementptr inbounds %struct.pci230_board, ptr %53, i32 0, i32 2
  %64 = ptrtoint ptr %ai_bits.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ai_bits.i, align 2
  %conv4.i = zext i8 %65 to i32
  %sub.i = sub nsw i32 16, %conv4.i
  %conv5.i = zext i16 %spec.select.i to i32
  %shr.i = lshr i32 %conv5.i, %sub.i
  %arrayidx100 = getelementptr i32, ptr %data, i32 %n.0150
  %66 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr.i, ptr %arrayidx100, align 4
  %inc = add nuw i32 %n.0150, 1
  %67 = ptrtoint ptr %n87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n87, align 4
  %cmp88 = icmp ult i32 %inc, %68
  br i1 %cmp88, label %if.end97.for.body_crit_edge, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end97.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then11, %do.body
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %do.body ], [ 0, %if.end38.cleanup_crit_edge ], [ %call94, %for.body.cleanup_crit_edge ], [ %inc, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_cmd(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 16
  %switch.select = select i1 %switch.selectcmp, i8 7, i8 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch.selectcmp246 = icmp eq i32 %5, 4
  %switch.select247 = select i1 %switch.selectcmp246, i8 4, i8 %switch.select
  %res_spinlock.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_spinlock.i) #8
  %arrayidx.1.i = getelementptr %struct.pci230_private, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %and33.1.i = and i8 %switch.select247, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and33.1.i)
  %tobool.not.1.i = icmp eq i8 %and33.1.i, 0
  br i1 %tobool.not.1.i, label %if.end10, label %pci230_claim_shared.exit

pci230_claim_shared.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i, i32 noundef %call2.i) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %arrayidx16.i = getelementptr %struct.pci230_private, ptr %1, i32 0, i32 12, i32 0
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16.i, align 1
  %or32.i = or i8 %9, %switch.select247
  store i8 %or32.i, ptr %arrayidx16.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i, i32 noundef %call2.i) #8
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %10 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chanlist, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %14)
  %cmp11 = icmp eq i32 %14, 33554432
  %. = select i1 %cmp11, i16 272, i16 256
  %shr23 = lshr i32 %13, 16
  %and24 = and i32 %shr23, 255
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %15 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %16, i32 0, i32 1, i32 %and24
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp slt i32 %18, 0
  %ai_bipolar = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %ai_bipolar to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %ai_bipolar, align 1
  %20 = lshr i32 %18, 25
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %22, %bf.clear
  store i8 %bf.set, ptr %ai_bipolar, align 1
  %23 = or i16 %., 8
  %adccon.1 = select i1 %cmp.i, i16 %23, i16 %.
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp39249.not = icmp eq i32 %25, 0
  br i1 %cmp39249.not, label %if.end10.do.body_crit_edge, label %for.body.lr.ph

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %if.end10
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %adcg = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end69.for.body_crit_edge, %for.body.lr.ph
  %adcen.0251 = phi i16 [ 0, %for.body.lr.ph ], [ %adcen.1, %if.end69.for.body_crit_edge ]
  %i.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end69.for.body_crit_edge ]
  %26 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chanlist, align 4
  %arrayidx42 = getelementptr i32, ptr %27, i32 %i.0250
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx42, align 4
  %and43 = and i32 %29, 65535
  %shr46 = lshr i32 %29, 16
  %and47 = and i32 %shr46, 255
  br i1 %cmp11, label %if.then49, label %if.else63

if.then49:                                        ; preds = %for.body
  %mul = shl nuw nsw i32 %and43, 1
  %30 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp51 = icmp eq i16 %31, 0
  br i1 %cmp51, label %if.then53, label %if.else57

if.then53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 3, %mul
  br label %if.end69

if.else57:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %shl58 = shl nuw i32 1, %mul
  br label %if.end69

if.else63:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %and64 = and i32 %29, 65534
  %shl65 = shl nuw i32 1, %and43
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.else57, %if.then53
  %.pn.in = phi i32 [ %shl, %if.then53 ], [ %shl58, %if.else57 ], [ %shl65, %if.else63 ]
  %gainshift.0 = phi i32 [ %mul, %if.then53 ], [ %mul, %if.else57 ], [ %and64, %if.else63 ]
  %.pn = trunc i32 %.pn.in to i16
  %adcen.1 = or i16 %adcen.0251, %.pn
  %32 = ptrtoint ptr %adcg to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %adcg, align 4
  %conv70 = zext i16 %33 to i32
  %shl71 = shl i32 3, %gainshift.0
  %neg = xor i32 %shl71, -1
  %and72 = and i32 %conv70, %neg
  %arrayidx73 = getelementptr [7 x i8], ptr @pci230_ai_gain, i32 0, i32 %and47
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %35 to i32
  %shl75 = shl i32 %conv74, %gainshift.0
  %or76 = or i32 %shl75, %and72
  %conv77 = trunc i32 %or76 to i16
  store i16 %conv77, ptr %adcg, align 4
  %inc = add nuw i32 %i.0250, 1
  %36 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chanlist_len, align 4
  %cmp39 = icmp ult i32 %inc, %37
  br i1 %cmp39, label %if.end69.for.body_crit_edge, label %if.end69.do.body_crit_edge

if.end69.do.body_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body:                                          ; preds = %if.end69.do.body_crit_edge, %if.end10.do.body_crit_edge
  %adcen.0.lcssa = phi i16 [ 0, %if.end10.do.body_crit_edge ], [ %adcen.1, %if.end69.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %38 = tail call i16 @llvm.bswap.i16(i16 %adcen.0.lcssa)
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daqio, align 4
  %add = add i32 %40, 12
  %and79 = and i32 %add, 1048575
  %add80 = or i32 %and79, -18874368
  %41 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #8, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %adcg85 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %adcg85 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %adcg85, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %daqio, align 4
  %add87 = add i32 %46, 14
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %47 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %47, i16 %44) #8, !srcloc !133
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %48 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pacer, align 4
  %call91 = tail call i32 @comedi_8254_set_mode(ptr noundef %49, i32 noundef 2, i32 noundef 2) #8
  %50 = or i16 %adccon.1, 2566
  %adccon95 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %adccon95 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %adccon95, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %52 = or i16 %adccon.1, 6662
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %daqio, align 4
  %add103 = add i32 %55, 10
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %56 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %56, i16 %53) #8, !srcloc !133
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %daqio, align 4
  %add114 = add i32 %58, 10
  %and115 = and i32 %add114, 1048575
  %add116 = or i32 %and115, -18874368
  %59 = inttoptr i32 %add116 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 %53) #8, !srcloc !133
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %60 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %61)
  %cmp118 = icmp eq i32 %61, 16
  br i1 %cmp118, label %if.then120, label %do.body.if.end167_crit_edge

do.body.if.end167_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then120:                                       ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %62 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase, align 4
  %add126 = add i32 %63, 29
  %and127 = and i32 %add126, 1048575
  %add128 = or i32 %and127, -18874368
  %64 = inttoptr i32 %add128 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 17) #8, !srcloc !138
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %65 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %convert_arg, align 4
  %conv130 = zext i32 %66 to i64
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 4
  tail call fastcc void @pci230_ct_setup_ns_mode(ptr noundef %dev, i32 noundef 2, i32 noundef 6, i64 noundef %conv130, i32 noundef %68)
  %69 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp132.not = icmp eq i32 %70, 4
  br i1 %cmp132.not, label %if.then120.if.end167_crit_edge, label %if.then134

if.then120.if.end167_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then134:                                       ; preds = %if.then120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase, align 4
  %add141 = add i32 %72, 29
  %and142 = and i32 %add141, 1048575
  %add143 = or i32 %and142, -18874368
  %73 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 0) #8, !srcloc !138
  %74 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %convert_arg, align 4
  %conv146 = zext i32 %75 to i64
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %76 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scan_end_arg, align 4
  %conv147 = zext i32 %77 to i64
  %mul148 = mul nuw i64 %conv147, %conv146
  tail call fastcc void @pci230_ct_setup_ns_mode(ptr noundef %dev, i32 noundef 0, i32 noundef 2, i64 noundef %mul148, i32 noundef 131072)
  %78 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %79)
  %cmp150 = icmp eq i32 %79, 16
  br i1 %cmp150, label %if.then152, label %if.then134.if.end167_crit_edge

if.then134.if.end167_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then152:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iobase, align 4
  %add159 = add i32 %81, 29
  %and160 = and i32 %add159, 1048575
  %add161 = or i32 %and160, -18874368
  %82 = inttoptr i32 %add161 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 9) #8, !srcloc !138
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %83 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %scan_begin_arg, align 4
  %conv163 = zext i32 %84 to i64
  %85 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags, align 4
  tail call fastcc void @pci230_ct_setup_ns_mode(ptr noundef %dev, i32 noundef 1, i32 noundef 6, i64 noundef %conv163, i32 noundef %86)
  br label %if.end167

if.end167:                                        ; preds = %if.then152, %if.then134.if.end167_crit_edge, %if.then120.if.end167_crit_edge, %do.body.if.end167_crit_edge
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %87 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %88)
  %cmp168 = icmp eq i32 %88, 128
  br i1 %cmp168, label %if.then170, label %if.else172

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %async1, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %90, i32 0, i32 20
  %91 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @pci230_ai_inttrig_start, ptr %inttrig, align 4
  br label %cleanup

if.else172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pci230_ai_start(ptr noundef %dev, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %if.else172, %if.then170, %pci230_claim_shared.exit
  %retval.0 = phi i32 [ -16, %pci230_claim_shared.exit ], [ 0, %if.else172 ], [ 0, %if.then170 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  %and.i = and i32 %5, 130
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp1.not.i = icmp eq i32 %and.i, %5
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %have_dio = getelementptr inbounds %struct.pci230_board, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %have_dio to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %have_dio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %min_hwver = getelementptr inbounds %struct.pci230_board, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %min_hwver to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %min_hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tmp.0 = phi i32 [ 212, %if.then ], [ 148, %lor.lhs.false.if.end_crit_edge ]
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_begin_src, align 4
  %and.i318 = and i32 %10, %tmp.0
  store i32 %and.i318, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i318)
  %cmp.i319 = icmp ne i32 %and.i318, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i318, i32 %10)
  %cmp1.not.i320 = icmp eq i32 %and.i318, %10
  %or.cond.i321 = and i1 %cmp.i319, %cmp1.not.i320
  %11 = select i1 %or.cond.i, i1 %or.cond.i321, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %12 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %convert_src, align 4
  %and.i323 = and i32 %13, 208
  store i32 %and.i323, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i323)
  %cmp.i324 = icmp ne i32 %and.i323, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i323, i32 %13)
  %cmp1.not.i325 = icmp eq i32 %and.i323, %13
  %or.cond.i326 = and i1 %cmp.i324, %cmp1.not.i325
  %14 = select i1 %11, i1 %or.cond.i326, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %15 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_end_src, align 4
  %and.i328 = and i32 %16, 32
  store i32 %and.i328, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i328)
  %cmp.i329 = icmp ne i32 %and.i328, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i328, i32 %16)
  %cmp1.not.i330 = icmp eq i32 %and.i328, %16
  %or.cond.i331 = and i1 %cmp.i329, %cmp1.not.i330
  %17 = select i1 %14, i1 %or.cond.i331, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %18 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_src, align 4
  %and.i333 = and i32 %19, 33
  store i32 %and.i333, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %cmp.i334 = icmp ne i32 %and.i333, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i333, i32 %19)
  %cmp1.not.i335 = icmp eq i32 %and.i333, %19
  %or.cond.i336 = and i1 %cmp.i334, %cmp1.not.i335
  %20 = select i1 %17, i1 %or.cond.i336, i1 false
  br i1 %20, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %21 = tail call i32 @llvm.ctpop.i32(i32 %5) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i = icmp ult i32 %21, 2
  %22 = tail call i32 @llvm.ctpop.i32(i32 %10) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i338 = icmp ult i32 %22, 2
  %23 = tail call i32 @llvm.ctpop.i32(i32 %13) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i340 = icmp ult i32 %23, 2
  %24 = tail call i32 @llvm.ctpop.i32(i32 %19) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not.i342 = icmp ult i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp27.not = icmp eq i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp30.not = icmp eq i32 %13, 16
  %or.cond = select i1 %cmp27.not, i1 true, i1 %cmp30.not
  %25 = select i1 %or.cond, i1 %cmp.not.i, i1 false
  %26 = select i1 %25, i1 %cmp.not.i338, i1 false
  %27 = select i1 %26, i1 %cmp.not.i340, i1 false
  %or.cond556 = select i1 %27, i1 %cmp.not.i342, i1 false
  br i1 %or.cond556, label %if.end37, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end13
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %28 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i344 = icmp eq i32 %29, 0
  br i1 %cmp.not.i344, label %if.end37.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end37.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end37.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i345 = phi i32 [ -22, %if.then.i ], [ 0, %if.end37.comedi_check_trigger_arg_is.exit_crit_edge ]
  %trunc = trunc i32 %13 to i8
  %31 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %trunc, label %if.else103 [
    i8 16, label %if.then43
    i8 64, label %if.then71
  ]

if.then43:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp45 = icmp eq i16 %33, 0
  br i1 %cmp45, label %if.then47, label %if.then43.if.end61_crit_edge

if.then43.if.end61_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then47:                                        ; preds = %if.then43
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %34 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chanlist, align 4
  %tobool48.not = icmp eq ptr %35, null
  br i1 %tobool48.not, label %if.then47.if.end61_crit_edge, label %land.lhs.true49

if.then47.if.end61_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

land.lhs.true49:                                  ; preds = %if.then47
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %36 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp50.not = icmp eq i32 %37, 0
  br i1 %cmp50.not, label %land.lhs.true49.if.end61_crit_edge, label %if.then52

land.lhs.true49.if.end61_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %40 = and i32 %39, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %40)
  %cmp54 = icmp eq i32 %40, 33554432
  %. = select i1 %cmp54, i32 8000, i32 3200
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %land.lhs.true49.if.end61_crit_edge, %if.then47.if.end61_crit_edge, %if.then43.if.end61_crit_edge
  %max_speed_ai.0 = phi i32 [ %., %if.then52 ], [ 3200, %land.lhs.true49.if.end61_crit_edge ], [ 3200, %if.then47.if.end61_crit_edge ], [ 4000, %if.then43.if.end61_crit_edge ]
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %41 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %max_speed_ai.0)
  %cmp.i346 = icmp ult i32 %42, %max_speed_ai.0
  br i1 %cmp.i346, label %if.then.i347, label %if.end61.comedi_check_trigger_arg_min.exit_crit_edge

if.end61.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i347:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %max_speed_ai.0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i347, %if.end61.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i348 = phi i32 [ -22, %if.then.i347 ], [ 0, %if.end61.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or63 = or i32 %retval.0.i348, %retval.0.i345
  br label %if.end108

if.then71:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %convert_arg72 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %44 = ptrtoint ptr %convert_arg72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %convert_arg72, align 4
  %and73 = and i32 %45, -67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else98, label %if.then75

if.then75:                                        ; preds = %if.then71
  %and77 = and i32 %45, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then75.if.end85_crit_edge, label %if.then79

if.then75.if.end85_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %convert_arg72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and73, ptr %convert_arg72, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.then75.if.end85_crit_edge
  %err.1 = phi i32 [ -22, %if.then79 ], [ %retval.0.i345, %if.then75.if.end85_crit_edge ]
  %47 = ptrtoint ptr %convert_arg72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %convert_arg72, align 4
  %and88 = and i32 %48, 2080374784
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and88)
  %cmp89.not = icmp eq i32 %and88, 1073741824
  br i1 %cmp89.not, label %if.end85.if.end108_crit_edge, label %if.then91

if.end85.if.end108_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then91:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %start_arg, align 4
  %and93 = and i32 %50, -2080374785
  %or94 = or i32 %and93, 1073741824
  %51 = ptrtoint ptr %convert_arg72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or94, ptr %convert_arg72, align 4
  br label %if.end108

if.else98:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i350 = icmp ugt i32 %45, 1
  br i1 %cmp.i350, label %if.then.i351, label %if.else98.comedi_check_trigger_arg_max.exit_crit_edge

if.else98.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_max.exit

if.then.i351:                                     ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %convert_arg72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %convert_arg72, align 4
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_max.exit:                ; preds = %if.then.i351, %if.else98.comedi_check_trigger_arg_max.exit_crit_edge
  %retval.0.i352 = phi i32 [ -22, %if.then.i351 ], [ 0, %if.else98.comedi_check_trigger_arg_max.exit_crit_edge ]
  %or101 = or i32 %retval.0.i352, %retval.0.i345
  br label %if.end108

if.else103:                                       ; preds = %comedi_check_trigger_arg_is.exit
  %convert_arg104 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %53 = ptrtoint ptr %convert_arg104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %convert_arg104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not.i353 = icmp eq i32 %54, 0
  br i1 %cmp.not.i353, label %if.else103.comedi_check_trigger_arg_is.exit356_crit_edge, label %if.then.i354

if.else103.comedi_check_trigger_arg_is.exit356_crit_edge: ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit356

if.then.i354:                                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %convert_arg104 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %convert_arg104, align 4
  br label %comedi_check_trigger_arg_is.exit356

comedi_check_trigger_arg_is.exit356:              ; preds = %if.then.i354, %if.else103.comedi_check_trigger_arg_is.exit356_crit_edge
  %retval.0.i355 = phi i32 [ -22, %if.then.i354 ], [ 0, %if.else103.comedi_check_trigger_arg_is.exit356_crit_edge ]
  %or106 = or i32 %retval.0.i355, %retval.0.i345
  br label %if.end108

if.end108:                                        ; preds = %comedi_check_trigger_arg_is.exit356, %comedi_check_trigger_arg_max.exit, %if.then91, %if.end85.if.end108_crit_edge, %comedi_check_trigger_arg_min.exit
  %err.2 = phi i32 [ %or63, %comedi_check_trigger_arg_min.exit ], [ -22, %if.then91 ], [ %err.1, %if.end85.if.end108_crit_edge ], [ %or101, %comedi_check_trigger_arg_max.exit ], [ %or106, %comedi_check_trigger_arg_is.exit356 ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len109 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %56 = ptrtoint ptr %chanlist_len109 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chanlist_len109, align 4
  %58 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp.not.i357 = icmp eq i32 %59, %57
  br i1 %cmp.not.i357, label %if.end108.comedi_check_trigger_arg_is.exit360_crit_edge, label %if.then.i358

if.end108.comedi_check_trigger_arg_is.exit360_crit_edge: ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit360

if.then.i358:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit360

comedi_check_trigger_arg_is.exit360:              ; preds = %if.then.i358, %if.end108.comedi_check_trigger_arg_is.exit360_crit_edge
  %retval.0.i359 = phi i32 [ -22, %if.then.i358 ], [ 0, %if.end108.comedi_check_trigger_arg_is.exit360_crit_edge ]
  %or111 = or i32 %retval.0.i359, %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp113 = icmp eq i32 %19, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %61 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i361 = icmp eq i32 %62, 0
  br i1 %cmp113, label %if.then115, label %if.else118

if.then115:                                       ; preds = %comedi_check_trigger_arg_is.exit360
  br i1 %cmp.i361, label %if.then115.if.end122.sink.split_crit_edge, label %if.then115.if.end122_crit_edge

if.then115.if.end122_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then115.if.end122.sink.split_crit_edge:        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.sink.split

if.else118:                                       ; preds = %comedi_check_trigger_arg_is.exit360
  br i1 %cmp.i361, label %if.else118.if.end122_crit_edge, label %if.else118.if.end122.sink.split_crit_edge

if.else118.if.end122.sink.split_crit_edge:        ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122.sink.split

if.else118.if.end122_crit_edge:                   ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.end122.sink.split:                             ; preds = %if.else118.if.end122.sink.split_crit_edge, %if.then115.if.end122.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then115.if.end122.sink.split_crit_edge ], [ 0, %if.else118.if.end122.sink.split_crit_edge ]
  %63 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.else118.if.end122_crit_edge, %if.then115.if.end122_crit_edge
  %call116.pn = phi i32 [ 0, %if.then115.if.end122_crit_edge ], [ 0, %if.else118.if.end122_crit_edge ], [ -22, %if.end122.sink.split ]
  %err.3 = or i32 %or111, %call116.pn
  %trunc558 = trunc i32 %10 to i8
  %64 = zext i8 %trunc558 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %trunc558, label %if.else157 [
    i8 64, label %if.then126
    i8 16, label %if.then151
  ]

if.then126:                                       ; preds = %if.end122
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %65 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %scan_begin_arg, align 4
  %and127 = and i32 %66, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.then126.if.end135_crit_edge, label %if.then129

if.then126.if.end135_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then129:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  %and131 = and i32 %66, -67108864
  %67 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and131, ptr %scan_begin_arg, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then129, %if.then126.if.end135_crit_edge
  %err.4 = phi i32 [ -22, %if.then129 ], [ %err.3, %if.then126.if.end135_crit_edge ]
  %68 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_begin_arg, align 4
  %and138 = and i32 %69, -1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end135.if.end162_crit_edge, label %if.then140

if.end135.if.end162_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then140:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %and142 = and i32 %69, 1140850687
  %70 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and142, ptr %scan_begin_arg, align 4
  br label %cleanup

if.then151:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i369 = icmp eq i32 %57, 0
  %spec.store.select.i = select i1 %cmp.i369, i32 1, i32 %57
  %convert_arg.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %71 = ptrtoint ptr %convert_arg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %convert_arg.i, align 4
  %mul.i = mul i32 %72, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %spec.store.select.i)
  %cmp3.i = icmp ult i32 %mul.i, %spec.store.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %72)
  %cmp5.i = icmp ult i32 %mul.i, %72
  %or.cond.i370 = or i1 %cmp3.i, %cmp5.i
  %min_scan_period.0.i = select i1 %or.cond.i370, i32 -1, i32 %mul.i
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %73 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scan_begin_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %min_scan_period.0.i)
  %cmp8.i = icmp ult i32 %74, %min_scan_period.0.i
  br i1 %cmp8.i, label %pci230_ai_check_scan_period.exit.thread, label %pci230_ai_check_scan_period.exit

pci230_ai_check_scan_period.exit.thread:          ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %min_scan_period.0.i, ptr %scan_begin_arg.i, align 4
  br label %cleanup

pci230_ai_check_scan_period.exit:                 ; preds = %if.then151
  br i1 %or.cond.i370, label %pci230_ai_check_scan_period.exit.cleanup_crit_edge, label %pci230_ai_check_scan_period.exit.if.end162_crit_edge

pci230_ai_check_scan_period.exit.if.end162_crit_edge: ; preds = %pci230_ai_check_scan_period.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

pci230_ai_check_scan_period.exit.cleanup_crit_edge: ; preds = %pci230_ai_check_scan_period.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else157:                                       ; preds = %if.end122
  %scan_begin_arg158 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %76 = ptrtoint ptr %scan_begin_arg158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scan_begin_arg158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.not.i371 = icmp eq i32 %77, 0
  br i1 %cmp.not.i371, label %if.else157.comedi_check_trigger_arg_is.exit374_crit_edge, label %if.then.i372

if.else157.comedi_check_trigger_arg_is.exit374_crit_edge: ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit374

if.then.i372:                                     ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %scan_begin_arg158 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %scan_begin_arg158, align 4
  br label %comedi_check_trigger_arg_is.exit374

comedi_check_trigger_arg_is.exit374:              ; preds = %if.then.i372, %if.else157.comedi_check_trigger_arg_is.exit374_crit_edge
  %retval.0.i373 = phi i32 [ -22, %if.then.i372 ], [ 0, %if.else157.comedi_check_trigger_arg_is.exit374_crit_edge ]
  %or160 = or i32 %retval.0.i373, %err.3
  br label %if.end162

if.end162:                                        ; preds = %comedi_check_trigger_arg_is.exit374, %pci230_ai_check_scan_period.exit.if.end162_crit_edge, %if.end135.if.end162_crit_edge
  %err.5 = phi i32 [ %err.4, %if.end135.if.end162_crit_edge ], [ %or160, %comedi_check_trigger_arg_is.exit374 ], [ %err.3, %pci230_ai_check_scan_period.exit.if.end162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool163.not = icmp eq i32 %err.5, 0
  br i1 %tobool163.not, label %if.end165, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end165:                                        ; preds = %if.end162
  br i1 %cmp30.not, label %if.then169, label %if.end177.thread

if.then169:                                       ; preds = %if.end165
  %convert_arg170 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %79 = ptrtoint ptr %convert_arg170 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %convert_arg170, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and182.i.i.i = and i32 %82, 196608
  %.frozen = freeze i32 %80
  %div174.i.i.i = udiv i32 %.frozen, 100
  %83 = mul i32 %div174.i.i.i, 100
  %rem172.i.i.i.decomposed = sub i32 %.frozen, %83
  %84 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i [
    i32 131072, label %sw.bb189.i.i.i
    i32 65536, label %if.then169.pci230_divide_ns.exit.i.i_crit_edge
  ]

if.then169.pci230_divide_ns.exit.i.i_crit_edge:   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i = add nuw nsw i32 %rem172.i.i.i.decomposed, 50
  br label %sw.epilog.sink.split.i.i.i

sw.bb189.i.i.i:                                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i = add nuw nsw i32 %rem172.i.i.i.decomposed, 99
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb189.i.i.i, %sw.bb.i.i.i
  %sub191.sink.i.i.i = phi i32 [ %sub191.i.i.i, %sw.bb189.i.i.i ], [ %add185.i.i.i, %sw.bb.i.i.i ]
  %div192.i.i.i = udiv i32 %sub191.sink.i.i.i, 100
  %narrow601 = add nuw nsw i32 %div174.i.i.i, %div192.i.i.i
  br label %pci230_divide_ns.exit.i.i

pci230_divide_ns.exit.i.i:                        ; preds = %sw.epilog.sink.split.i.i.i, %if.then169.pci230_divide_ns.exit.i.i_crit_edge
  %div.1.i.i.i.in = phi i32 [ %div174.i.i.i, %if.then169.pci230_divide_ns.exit.i.i_crit_edge ], [ %narrow601, %sw.epilog.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.in)
  %cmp.i.i = icmp ult i32 %div.1.i.i.i.in, 65537
  br i1 %cmp.i.i, label %pci230_divide_ns.exit.i.i.if.end177_crit_edge, label %for.cond.i.i.1

pci230_divide_ns.exit.i.i.if.end177_crit_edge:    ; preds = %pci230_divide_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

for.cond.i.i.1:                                   ; preds = %pci230_divide_ns.exit.i.i
  %.frozen602 = freeze i32 %80
  %div174.i.i.i.1 = udiv i32 %.frozen602, 1000
  %85 = mul i32 %div174.i.i.i.1, 1000
  %rem172.i.i.i.1.decomposed = sub i32 %.frozen602, %85
  %86 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.1 [
    i32 131072, label %sw.bb189.i.i.i.1
    i32 65536, label %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge
  ]

for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.1

sw.bb189.i.i.i.1:                                 ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.1 = add nuw nsw i32 %rem172.i.i.i.1.decomposed, 999
  br label %sw.epilog.sink.split.i.i.i.1

sw.bb.i.i.i.1:                                    ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.1 = add nuw nsw i32 %rem172.i.i.i.1.decomposed, 500
  br label %sw.epilog.sink.split.i.i.i.1

sw.epilog.sink.split.i.i.i.1:                     ; preds = %sw.bb.i.i.i.1, %sw.bb189.i.i.i.1
  %sub191.sink.i.i.i.1 = phi i32 [ %sub191.i.i.i.1, %sw.bb189.i.i.i.1 ], [ %add185.i.i.i.1, %sw.bb.i.i.i.1 ]
  %div192.i.i.i.1 = udiv i32 %sub191.sink.i.i.i.1, 1000
  %narrow600 = add nuw nsw i32 %div174.i.i.i.1, %div192.i.i.i.1
  br label %pci230_divide_ns.exit.i.i.1

pci230_divide_ns.exit.i.i.1:                      ; preds = %sw.epilog.sink.split.i.i.i.1, %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge
  %div.1.i.i.i.1.in = phi i32 [ %div174.i.i.i.1, %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge ], [ %narrow600, %sw.epilog.sink.split.i.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.1.in)
  %cmp.i.i.1 = icmp ult i32 %div.1.i.i.i.1.in, 65537
  br i1 %cmp.i.i.1, label %pci230_divide_ns.exit.i.i.1.if.end177_crit_edge, label %for.cond.i.i.2

pci230_divide_ns.exit.i.i.1.if.end177_crit_edge:  ; preds = %pci230_divide_ns.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

for.cond.i.i.2:                                   ; preds = %pci230_divide_ns.exit.i.i.1
  %.frozen603 = freeze i32 %80
  %div174.i.i.i.2 = udiv i32 %.frozen603, 10000
  %87 = mul i32 %div174.i.i.i.2, 10000
  %rem172.i.i.i.2.decomposed = sub i32 %.frozen603, %87
  %88 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.2 [
    i32 131072, label %sw.bb189.i.i.i.2
    i32 65536, label %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge
  ]

for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.2

sw.bb189.i.i.i.2:                                 ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.2 = add nuw nsw i32 %rem172.i.i.i.2.decomposed, 9999
  br label %sw.epilog.sink.split.i.i.i.2

sw.bb.i.i.i.2:                                    ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.2 = add nuw nsw i32 %rem172.i.i.i.2.decomposed, 5000
  br label %sw.epilog.sink.split.i.i.i.2

sw.epilog.sink.split.i.i.i.2:                     ; preds = %sw.bb.i.i.i.2, %sw.bb189.i.i.i.2
  %sub191.sink.i.i.i.2 = phi i32 [ %sub191.i.i.i.2, %sw.bb189.i.i.i.2 ], [ %add185.i.i.i.2, %sw.bb.i.i.i.2 ]
  %div192.i.i.i.2 = udiv i32 %sub191.sink.i.i.i.2, 10000
  %narrow599 = add nuw nsw i32 %div174.i.i.i.2, %div192.i.i.i.2
  br label %pci230_divide_ns.exit.i.i.2

pci230_divide_ns.exit.i.i.2:                      ; preds = %sw.epilog.sink.split.i.i.i.2, %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge
  %div.1.i.i.i.2.in = phi i32 [ %div174.i.i.i.2, %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge ], [ %narrow599, %sw.epilog.sink.split.i.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.2.in)
  %cmp.i.i.2 = icmp ult i32 %div.1.i.i.i.2.in, 65537
  br i1 %cmp.i.i.2, label %pci230_divide_ns.exit.i.i.2.if.end177_crit_edge, label %for.cond.i.i.3

pci230_divide_ns.exit.i.i.2.if.end177_crit_edge:  ; preds = %pci230_divide_ns.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

for.cond.i.i.3:                                   ; preds = %pci230_divide_ns.exit.i.i.2
  %.frozen604 = freeze i32 %80
  %div174.i.i.i.3 = udiv i32 %.frozen604, 100000
  %89 = mul i32 %div174.i.i.i.3, 100000
  %rem172.i.i.i.3.decomposed = sub i32 %.frozen604, %89
  %90 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.3 [
    i32 131072, label %sw.bb189.i.i.i.3
    i32 65536, label %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge
  ]

for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.3

sw.bb189.i.i.i.3:                                 ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.3 = add nuw nsw i32 %rem172.i.i.i.3.decomposed, 99999
  br label %sw.epilog.sink.split.i.i.i.3

sw.bb.i.i.i.3:                                    ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.3 = add nuw nsw i32 %rem172.i.i.i.3.decomposed, 50000
  br label %sw.epilog.sink.split.i.i.i.3

sw.epilog.sink.split.i.i.i.3:                     ; preds = %sw.bb.i.i.i.3, %sw.bb189.i.i.i.3
  %sub191.sink.i.i.i.3 = phi i32 [ %sub191.i.i.i.3, %sw.bb189.i.i.i.3 ], [ %add185.i.i.i.3, %sw.bb.i.i.i.3 ]
  %div192.i.i.i.3 = udiv i32 %sub191.sink.i.i.i.3, 100000
  %narrow598 = add nuw nsw i32 %div174.i.i.i.3, %div192.i.i.i.3
  br label %pci230_divide_ns.exit.i.i.3

pci230_divide_ns.exit.i.i.3:                      ; preds = %sw.epilog.sink.split.i.i.i.3, %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge
  %div.1.i.i.i.3.in = phi i32 [ %div174.i.i.i.3, %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge ], [ %narrow598, %sw.epilog.sink.split.i.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.3.in)
  %cmp.i.i.3 = icmp ult i32 %div.1.i.i.i.3.in, 65537
  br i1 %cmp.i.i.3, label %pci230_divide_ns.exit.i.i.3.if.end177_crit_edge, label %for.cond.i.i.4

pci230_divide_ns.exit.i.i.3.if.end177_crit_edge:  ; preds = %pci230_divide_ns.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

for.cond.i.i.4:                                   ; preds = %pci230_divide_ns.exit.i.i.3
  %.frozen605 = freeze i32 %80
  %div174.i.i.i.4 = udiv i32 %.frozen605, 1000000
  %91 = mul i32 %div174.i.i.i.4, 1000000
  %rem172.i.i.i.4.decomposed = sub i32 %.frozen605, %91
  %92 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.4 [
    i32 131072, label %sw.bb189.i.i.i.4
    i32 65536, label %for.cond.i.i.4.if.end177_crit_edge
  ]

for.cond.i.i.4.if.end177_crit_edge:               ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

sw.bb189.i.i.i.4:                                 ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.4 = add nuw nsw i32 %rem172.i.i.i.4.decomposed, 999999
  br label %sw.epilog.sink.split.i.i.i.4

sw.bb.i.i.i.4:                                    ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.4 = add nuw nsw i32 %rem172.i.i.i.4.decomposed, 500000
  br label %sw.epilog.sink.split.i.i.i.4

sw.epilog.sink.split.i.i.i.4:                     ; preds = %sw.bb.i.i.i.4, %sw.bb189.i.i.i.4
  %sub191.sink.i.i.i.4 = phi i32 [ %sub191.i.i.i.4, %sw.bb189.i.i.i.4 ], [ %add185.i.i.i.4, %sw.bb.i.i.i.4 ]
  %div192.i.i.i.4 = udiv i32 %sub191.sink.i.i.i.4, 1000000
  %narrow597 = add nuw nsw i32 %div174.i.i.i.4, %div192.i.i.i.4
  br label %if.end177

if.end177:                                        ; preds = %sw.epilog.sink.split.i.i.i.4, %for.cond.i.i.4.if.end177_crit_edge, %pci230_divide_ns.exit.i.i.3.if.end177_crit_edge, %pci230_divide_ns.exit.i.i.2.if.end177_crit_edge, %pci230_divide_ns.exit.i.i.1.if.end177_crit_edge, %pci230_divide_ns.exit.i.i.if.end177_crit_edge
  %.lcssa584.off0 = phi i32 [ %div.1.i.i.i.in, %pci230_divide_ns.exit.i.i.if.end177_crit_edge ], [ %div.1.i.i.i.1.in, %pci230_divide_ns.exit.i.i.1.if.end177_crit_edge ], [ %div.1.i.i.i.2.in, %pci230_divide_ns.exit.i.i.2.if.end177_crit_edge ], [ %div.1.i.i.i.3.in, %pci230_divide_ns.exit.i.i.3.if.end177_crit_edge ], [ %div174.i.i.i.4, %for.cond.i.i.4.if.end177_crit_edge ], [ %narrow597, %sw.epilog.sink.split.i.i.i.4 ]
  %.lcssa583 = phi i32 [ 100, %pci230_divide_ns.exit.i.i.if.end177_crit_edge ], [ 1000, %pci230_divide_ns.exit.i.i.1.if.end177_crit_edge ], [ 10000, %pci230_divide_ns.exit.i.i.2.if.end177_crit_edge ], [ 100000, %pci230_divide_ns.exit.i.i.3.if.end177_crit_edge ], [ 1000000, %sw.epilog.sink.split.i.i.i.4 ], [ 1000000, %for.cond.i.i.4.if.end177_crit_edge ]
  %mul.i375 = mul i32 %.lcssa583, %.lcssa584.off0
  %93 = ptrtoint ptr %convert_arg170 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul.i375, ptr %convert_arg170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %mul.i375)
  %cmp173.not = icmp ne i32 %80, %mul.i375
  %spec.select315 = zext i1 %cmp173.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp179 = icmp eq i32 %10, 16
  br i1 %cmp179, label %if.end177.if.then181_crit_edge, label %if.end197

if.end177.if.then181_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then181

if.end177.thread:                                 ; preds = %if.end165
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %cmp179569 = icmp eq i32 %10, 16
  br i1 %cmp179569, label %if.end177.thread.if.then181_crit_edge, label %if.end177.thread.if.end200_crit_edge

if.end177.thread.if.end200_crit_edge:             ; preds = %if.end177.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.end177.thread.if.then181_crit_edge:            ; preds = %if.end177.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then181

if.then181:                                       ; preds = %if.end177.thread.if.then181_crit_edge, %if.end177.if.then181_crit_edge
  %err.6571 = phi i32 [ 0, %if.end177.thread.if.then181_crit_edge ], [ %spec.select315, %if.end177.if.then181_crit_edge ]
  %scan_begin_arg182 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %94 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %scan_begin_arg182, align 4
  %flags184 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %96 = ptrtoint ptr %flags184 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags184, align 4
  %and182.i.i.i377 = and i32 %97, 196608
  %.frozen606 = freeze i32 %95
  %div174.i.i.i488 = udiv i32 %.frozen606, 100
  %98 = mul i32 %div174.i.i.i488, 100
  %rem172.i.i.i487.decomposed = sub i32 %.frozen606, %98
  %99 = zext i32 %and182.i.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and182.i.i.i377, label %sw.bb.i.i.i496 [
    i32 131072, label %sw.bb189.i.i.i499
    i32 65536, label %if.then181.pci230_divide_ns.exit.i.i510_crit_edge
  ]

if.then181.pci230_divide_ns.exit.i.i510_crit_edge: ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i510

sw.bb.i.i.i496:                                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i495 = add nuw nsw i32 %rem172.i.i.i487.decomposed, 50
  br label %sw.epilog.sink.split.i.i.i504

sw.bb189.i.i.i499:                                ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i498 = add nuw nsw i32 %rem172.i.i.i487.decomposed, 99
  br label %sw.epilog.sink.split.i.i.i504

sw.epilog.sink.split.i.i.i504:                    ; preds = %sw.bb189.i.i.i499, %sw.bb.i.i.i496
  %sub191.sink.i.i.i500 = phi i32 [ %sub191.i.i.i498, %sw.bb189.i.i.i499 ], [ %add185.i.i.i495, %sw.bb.i.i.i496 ]
  %div192.i.i.i501 = udiv i32 %sub191.sink.i.i.i500, 100
  %narrow592 = add nuw nsw i32 %div174.i.i.i488, %div192.i.i.i501
  br label %pci230_divide_ns.exit.i.i510

pci230_divide_ns.exit.i.i510:                     ; preds = %sw.epilog.sink.split.i.i.i504, %if.then181.pci230_divide_ns.exit.i.i510_crit_edge
  %div.1.i.i.i505.in = phi i32 [ %div174.i.i.i488, %if.then181.pci230_divide_ns.exit.i.i510_crit_edge ], [ %narrow592, %sw.epilog.sink.split.i.i.i504 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i505.in)
  %cmp.i.i506 = icmp ult i32 %div.1.i.i.i505.in, 65537
  br i1 %cmp.i.i506, label %pci230_divide_ns.exit.i.i510.pci230_ns_to_single_timer.exit512_crit_edge, label %for.cond.i.i380.1

pci230_divide_ns.exit.i.i510.pci230_ns_to_single_timer.exit512_crit_edge: ; preds = %pci230_divide_ns.exit.i.i510
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit512

for.cond.i.i380.1:                                ; preds = %pci230_divide_ns.exit.i.i510
  %.frozen607 = freeze i32 %95
  %div174.i.i.i488.1 = udiv i32 %.frozen607, 1000
  %100 = mul i32 %div174.i.i.i488.1, 1000
  %rem172.i.i.i487.1.decomposed = sub i32 %.frozen607, %100
  %101 = zext i32 %and182.i.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and182.i.i.i377, label %sw.bb.i.i.i496.1 [
    i32 131072, label %sw.bb189.i.i.i499.1
    i32 65536, label %for.cond.i.i380.1.pci230_divide_ns.exit.i.i510.1_crit_edge
  ]

for.cond.i.i380.1.pci230_divide_ns.exit.i.i510.1_crit_edge: ; preds = %for.cond.i.i380.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i510.1

sw.bb189.i.i.i499.1:                              ; preds = %for.cond.i.i380.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i498.1 = add nuw nsw i32 %rem172.i.i.i487.1.decomposed, 999
  br label %sw.epilog.sink.split.i.i.i504.1

sw.bb.i.i.i496.1:                                 ; preds = %for.cond.i.i380.1
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i495.1 = add nuw nsw i32 %rem172.i.i.i487.1.decomposed, 500
  br label %sw.epilog.sink.split.i.i.i504.1

sw.epilog.sink.split.i.i.i504.1:                  ; preds = %sw.bb.i.i.i496.1, %sw.bb189.i.i.i499.1
  %sub191.sink.i.i.i500.1 = phi i32 [ %sub191.i.i.i498.1, %sw.bb189.i.i.i499.1 ], [ %add185.i.i.i495.1, %sw.bb.i.i.i496.1 ]
  %div192.i.i.i501.1 = udiv i32 %sub191.sink.i.i.i500.1, 1000
  %narrow591 = add nuw nsw i32 %div174.i.i.i488.1, %div192.i.i.i501.1
  br label %pci230_divide_ns.exit.i.i510.1

pci230_divide_ns.exit.i.i510.1:                   ; preds = %sw.epilog.sink.split.i.i.i504.1, %for.cond.i.i380.1.pci230_divide_ns.exit.i.i510.1_crit_edge
  %div.1.i.i.i505.1.in = phi i32 [ %div174.i.i.i488.1, %for.cond.i.i380.1.pci230_divide_ns.exit.i.i510.1_crit_edge ], [ %narrow591, %sw.epilog.sink.split.i.i.i504.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i505.1.in)
  %cmp.i.i506.1 = icmp ult i32 %div.1.i.i.i505.1.in, 65537
  br i1 %cmp.i.i506.1, label %pci230_divide_ns.exit.i.i510.1.pci230_ns_to_single_timer.exit512_crit_edge, label %for.cond.i.i380.2

pci230_divide_ns.exit.i.i510.1.pci230_ns_to_single_timer.exit512_crit_edge: ; preds = %pci230_divide_ns.exit.i.i510.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit512

for.cond.i.i380.2:                                ; preds = %pci230_divide_ns.exit.i.i510.1
  %.frozen608 = freeze i32 %95
  %div174.i.i.i488.2 = udiv i32 %.frozen608, 10000
  %102 = mul i32 %div174.i.i.i488.2, 10000
  %rem172.i.i.i487.2.decomposed = sub i32 %.frozen608, %102
  %103 = zext i32 %and182.i.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and182.i.i.i377, label %sw.bb.i.i.i496.2 [
    i32 131072, label %sw.bb189.i.i.i499.2
    i32 65536, label %for.cond.i.i380.2.pci230_divide_ns.exit.i.i510.2_crit_edge
  ]

for.cond.i.i380.2.pci230_divide_ns.exit.i.i510.2_crit_edge: ; preds = %for.cond.i.i380.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i510.2

sw.bb189.i.i.i499.2:                              ; preds = %for.cond.i.i380.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i498.2 = add nuw nsw i32 %rem172.i.i.i487.2.decomposed, 9999
  br label %sw.epilog.sink.split.i.i.i504.2

sw.bb.i.i.i496.2:                                 ; preds = %for.cond.i.i380.2
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i495.2 = add nuw nsw i32 %rem172.i.i.i487.2.decomposed, 5000
  br label %sw.epilog.sink.split.i.i.i504.2

sw.epilog.sink.split.i.i.i504.2:                  ; preds = %sw.bb.i.i.i496.2, %sw.bb189.i.i.i499.2
  %sub191.sink.i.i.i500.2 = phi i32 [ %sub191.i.i.i498.2, %sw.bb189.i.i.i499.2 ], [ %add185.i.i.i495.2, %sw.bb.i.i.i496.2 ]
  %div192.i.i.i501.2 = udiv i32 %sub191.sink.i.i.i500.2, 10000
  %narrow590 = add nuw nsw i32 %div174.i.i.i488.2, %div192.i.i.i501.2
  br label %pci230_divide_ns.exit.i.i510.2

pci230_divide_ns.exit.i.i510.2:                   ; preds = %sw.epilog.sink.split.i.i.i504.2, %for.cond.i.i380.2.pci230_divide_ns.exit.i.i510.2_crit_edge
  %div.1.i.i.i505.2.in = phi i32 [ %div174.i.i.i488.2, %for.cond.i.i380.2.pci230_divide_ns.exit.i.i510.2_crit_edge ], [ %narrow590, %sw.epilog.sink.split.i.i.i504.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i505.2.in)
  %cmp.i.i506.2 = icmp ult i32 %div.1.i.i.i505.2.in, 65537
  br i1 %cmp.i.i506.2, label %pci230_divide_ns.exit.i.i510.2.pci230_ns_to_single_timer.exit512_crit_edge, label %for.cond.i.i380.3

pci230_divide_ns.exit.i.i510.2.pci230_ns_to_single_timer.exit512_crit_edge: ; preds = %pci230_divide_ns.exit.i.i510.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit512

for.cond.i.i380.3:                                ; preds = %pci230_divide_ns.exit.i.i510.2
  %.frozen609 = freeze i32 %95
  %div174.i.i.i488.3 = udiv i32 %.frozen609, 100000
  %104 = mul i32 %div174.i.i.i488.3, 100000
  %rem172.i.i.i487.3.decomposed = sub i32 %.frozen609, %104
  %105 = zext i32 %and182.i.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and182.i.i.i377, label %sw.bb.i.i.i496.3 [
    i32 131072, label %sw.bb189.i.i.i499.3
    i32 65536, label %for.cond.i.i380.3.pci230_divide_ns.exit.i.i510.3_crit_edge
  ]

for.cond.i.i380.3.pci230_divide_ns.exit.i.i510.3_crit_edge: ; preds = %for.cond.i.i380.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i510.3

sw.bb189.i.i.i499.3:                              ; preds = %for.cond.i.i380.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i498.3 = add nuw nsw i32 %rem172.i.i.i487.3.decomposed, 99999
  br label %sw.epilog.sink.split.i.i.i504.3

sw.bb.i.i.i496.3:                                 ; preds = %for.cond.i.i380.3
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i495.3 = add nuw nsw i32 %rem172.i.i.i487.3.decomposed, 50000
  br label %sw.epilog.sink.split.i.i.i504.3

sw.epilog.sink.split.i.i.i504.3:                  ; preds = %sw.bb.i.i.i496.3, %sw.bb189.i.i.i499.3
  %sub191.sink.i.i.i500.3 = phi i32 [ %sub191.i.i.i498.3, %sw.bb189.i.i.i499.3 ], [ %add185.i.i.i495.3, %sw.bb.i.i.i496.3 ]
  %div192.i.i.i501.3 = udiv i32 %sub191.sink.i.i.i500.3, 100000
  %narrow589 = add nuw nsw i32 %div174.i.i.i488.3, %div192.i.i.i501.3
  br label %pci230_divide_ns.exit.i.i510.3

pci230_divide_ns.exit.i.i510.3:                   ; preds = %sw.epilog.sink.split.i.i.i504.3, %for.cond.i.i380.3.pci230_divide_ns.exit.i.i510.3_crit_edge
  %div.1.i.i.i505.3.in = phi i32 [ %div174.i.i.i488.3, %for.cond.i.i380.3.pci230_divide_ns.exit.i.i510.3_crit_edge ], [ %narrow589, %sw.epilog.sink.split.i.i.i504.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i505.3.in)
  %cmp.i.i506.3 = icmp ult i32 %div.1.i.i.i505.3.in, 65537
  br i1 %cmp.i.i506.3, label %pci230_divide_ns.exit.i.i510.3.pci230_ns_to_single_timer.exit512_crit_edge, label %for.cond.i.i380.4

pci230_divide_ns.exit.i.i510.3.pci230_ns_to_single_timer.exit512_crit_edge: ; preds = %pci230_divide_ns.exit.i.i510.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit512

for.cond.i.i380.4:                                ; preds = %pci230_divide_ns.exit.i.i510.3
  %.frozen610 = freeze i32 %95
  %div174.i.i.i488.4 = udiv i32 %.frozen610, 1000000
  %106 = mul i32 %div174.i.i.i488.4, 1000000
  %rem172.i.i.i487.4.decomposed = sub i32 %.frozen610, %106
  %107 = zext i32 %and182.i.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and182.i.i.i377, label %sw.bb.i.i.i496.4 [
    i32 131072, label %sw.bb189.i.i.i499.4
    i32 65536, label %for.cond.i.i380.4.pci230_ns_to_single_timer.exit512_crit_edge
  ]

for.cond.i.i380.4.pci230_ns_to_single_timer.exit512_crit_edge: ; preds = %for.cond.i.i380.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit512

sw.bb189.i.i.i499.4:                              ; preds = %for.cond.i.i380.4
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i498.4 = add nuw nsw i32 %rem172.i.i.i487.4.decomposed, 999999
  br label %sw.epilog.sink.split.i.i.i504.4

sw.bb.i.i.i496.4:                                 ; preds = %for.cond.i.i380.4
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i495.4 = add nuw nsw i32 %rem172.i.i.i487.4.decomposed, 500000
  br label %sw.epilog.sink.split.i.i.i504.4

sw.epilog.sink.split.i.i.i504.4:                  ; preds = %sw.bb.i.i.i496.4, %sw.bb189.i.i.i499.4
  %sub191.sink.i.i.i500.4 = phi i32 [ %sub191.i.i.i498.4, %sw.bb189.i.i.i499.4 ], [ %add185.i.i.i495.4, %sw.bb.i.i.i496.4 ]
  %div192.i.i.i501.4 = udiv i32 %sub191.sink.i.i.i500.4, 1000000
  %narrow = add nuw nsw i32 %div174.i.i.i488.4, %div192.i.i.i501.4
  br label %pci230_ns_to_single_timer.exit512

pci230_ns_to_single_timer.exit512:                ; preds = %sw.epilog.sink.split.i.i.i504.4, %for.cond.i.i380.4.pci230_ns_to_single_timer.exit512_crit_edge, %pci230_divide_ns.exit.i.i510.3.pci230_ns_to_single_timer.exit512_crit_edge, %pci230_divide_ns.exit.i.i510.2.pci230_ns_to_single_timer.exit512_crit_edge, %pci230_divide_ns.exit.i.i510.1.pci230_ns_to_single_timer.exit512_crit_edge, %pci230_divide_ns.exit.i.i510.pci230_ns_to_single_timer.exit512_crit_edge
  %.lcssa582.off0 = phi i32 [ %div.1.i.i.i505.in, %pci230_divide_ns.exit.i.i510.pci230_ns_to_single_timer.exit512_crit_edge ], [ %div.1.i.i.i505.1.in, %pci230_divide_ns.exit.i.i510.1.pci230_ns_to_single_timer.exit512_crit_edge ], [ %div.1.i.i.i505.2.in, %pci230_divide_ns.exit.i.i510.2.pci230_ns_to_single_timer.exit512_crit_edge ], [ %div.1.i.i.i505.3.in, %pci230_divide_ns.exit.i.i510.3.pci230_ns_to_single_timer.exit512_crit_edge ], [ %div174.i.i.i488.4, %for.cond.i.i380.4.pci230_ns_to_single_timer.exit512_crit_edge ], [ %narrow, %sw.epilog.sink.split.i.i.i504.4 ]
  %.lcssa = phi i32 [ 100, %pci230_divide_ns.exit.i.i510.pci230_ns_to_single_timer.exit512_crit_edge ], [ 1000, %pci230_divide_ns.exit.i.i510.1.pci230_ns_to_single_timer.exit512_crit_edge ], [ 10000, %pci230_divide_ns.exit.i.i510.2.pci230_ns_to_single_timer.exit512_crit_edge ], [ 100000, %pci230_divide_ns.exit.i.i510.3.pci230_ns_to_single_timer.exit512_crit_edge ], [ 1000000, %sw.epilog.sink.split.i.i.i504.4 ], [ 1000000, %for.cond.i.i380.4.pci230_ns_to_single_timer.exit512_crit_edge ]
  %mul.i511 = mul i32 %.lcssa, %.lcssa582.off0
  %108 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul.i511, ptr %scan_begin_arg182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i514 = icmp eq i32 %57, 0
  %spec.store.select.i515 = select i1 %cmp.i514, i32 1, i32 %57
  %convert_arg.i516 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %109 = ptrtoint ptr %convert_arg.i516 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %convert_arg.i516, align 4
  %mul.i517 = mul i32 %110, %spec.store.select.i515
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i517, i32 %spec.store.select.i515)
  %cmp3.i518 = icmp ult i32 %mul.i517, %spec.store.select.i515
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i517, i32 %110)
  %cmp5.i519 = icmp ult i32 %mul.i517, %110
  %or.cond.i520 = or i1 %cmp3.i518, %cmp5.i519
  %min_scan_period.0.i521 = select i1 %or.cond.i520, i32 -1, i32 %mul.i517
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i511, i32 %min_scan_period.0.i521)
  %cmp8.i524 = icmp ult i32 %mul.i511, %min_scan_period.0.i521
  br i1 %cmp8.i524, label %pci230_ai_check_scan_period.exit527.thread, label %pci230_ai_check_scan_period.exit527

pci230_ai_check_scan_period.exit527.thread:       ; preds = %pci230_ns_to_single_timer.exit512
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %min_scan_period.0.i521, ptr %scan_begin_arg182, align 4
  br label %if.then187

pci230_ai_check_scan_period.exit527:              ; preds = %pci230_ns_to_single_timer.exit512
  br i1 %or.cond.i520, label %pci230_ai_check_scan_period.exit527.if.then187_crit_edge, label %pci230_ai_check_scan_period.exit527.if.end190_crit_edge

pci230_ai_check_scan_period.exit527.if.end190_crit_edge: ; preds = %pci230_ai_check_scan_period.exit527
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

pci230_ai_check_scan_period.exit527.if.then187_crit_edge: ; preds = %pci230_ai_check_scan_period.exit527
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then187

if.then187:                                       ; preds = %pci230_ai_check_scan_period.exit527.if.then187_crit_edge, %pci230_ai_check_scan_period.exit527.thread
  tail call fastcc void @pci230_ns_to_single_timer(ptr noundef %scan_begin_arg182, i32 noundef 131072)
  %112 = ptrtoint ptr %chanlist_len109 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %chanlist_len109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i529 = icmp eq i32 %113, 0
  %spec.store.select.i530 = select i1 %cmp.i529, i32 1, i32 %113
  %114 = ptrtoint ptr %convert_arg.i516 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %convert_arg.i516, align 4
  %mul.i532 = mul i32 %spec.store.select.i530, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i532, i32 %spec.store.select.i530)
  %cmp3.i533 = icmp ult i32 %mul.i532, %spec.store.select.i530
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i532, i32 %115)
  %cmp5.i534 = icmp ult i32 %mul.i532, %115
  %or.cond.i535 = or i1 %cmp3.i533, %cmp5.i534
  %min_scan_period.0.i536 = select i1 %or.cond.i535, i32 -1, i32 %mul.i532
  %116 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %scan_begin_arg182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %min_scan_period.0.i536)
  %cmp8.i539 = icmp ult i32 %117, %min_scan_period.0.i536
  br i1 %cmp8.i539, label %if.then9.i540, label %if.then187.if.end190_crit_edge

if.then187.if.end190_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then9.i540:                                    ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %min_scan_period.0.i536, ptr %scan_begin_arg182, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then9.i540, %if.then187.if.end190_crit_edge, %pci230_ai_check_scan_period.exit527.if.end190_crit_edge
  %119 = ptrtoint ptr %scan_begin_arg182 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %scan_begin_arg182, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %120)
  %cmp192.not = icmp eq i32 %95, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6571)
  %tobool198.not = icmp eq i32 %err.6571, 0
  %or.cond557 = select i1 %cmp192.not, i1 %tobool198.not, i1 false
  br i1 %or.cond557, label %if.end190.if.end200_crit_edge, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end190.if.end200_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.end197:                                        ; preds = %if.end177
  br i1 %cmp173.not, label %if.end197.cleanup_crit_edge, label %if.end197.if.end200_crit_edge

if.end197.if.end200_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end200:                                        ; preds = %if.end197.if.end200_crit_edge, %if.end190.if.end200_crit_edge, %if.end177.thread.if.end200_crit_edge
  %chanlist201 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %121 = ptrtoint ptr %chanlist201 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %chanlist201, align 4
  %tobool202.not = icmp eq ptr %122, null
  br i1 %tobool202.not, label %if.end200.if.end210.thread_crit_edge, label %land.lhs.true203

if.end200.if.end210.thread_crit_edge:             ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210.thread

land.lhs.true203:                                 ; preds = %if.end200
  %123 = ptrtoint ptr %chanlist_len109 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %chanlist_len109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp205.not = icmp eq i32 %124, 0
  br i1 %cmp205.not, label %land.lhs.true203.if.end210.thread_crit_edge, label %if.end210

land.lhs.true203.if.end210.thread_crit_edge:      ; preds = %land.lhs.true203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210.thread

if.end210:                                        ; preds = %land.lhs.true203
  %call208 = tail call fastcc i32 @pci230_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %phi.cmp = icmp eq i32 %call208, 0
  br i1 %phi.cmp, label %if.end210.if.end210.thread_crit_edge, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end210.if.end210.thread_crit_edge:             ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210.thread

if.end210.thread:                                 ; preds = %if.end210.if.end210.thread_crit_edge, %land.lhs.true203.if.end210.thread_crit_edge, %if.end200.if.end210.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end210.thread, %if.end210.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %if.end190.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %pci230_ai_check_scan_period.exit.cleanup_crit_edge, %pci230_ai_check_scan_period.exit.thread, %if.then140, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 3, %if.end162.cleanup_crit_edge ], [ 4, %if.end197.cleanup_crit_edge ], [ 0, %if.end210.thread ], [ 5, %if.end210.cleanup_crit_edge ], [ 3, %if.then140 ], [ 3, %pci230_ai_check_scan_period.exit.thread ], [ 3, %pci230_ai_check_scan_period.exit.cleanup_crit_edge ], [ 4, %if.end190.cleanup_crit_edge ], [ 2, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ai_stop_spinlock.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ai_stop_spinlock.i) #8
  %ai_cmd_started.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ai_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ai_cmd_started.i, align 1
  %3 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %bf.clear7.i = and i8 %bf.load.i, -17
  %4 = ptrtoint ptr %ai_cmd_started.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7.i, ptr %ai_cmd_started.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ai_stop_spinlock.i, i32 noundef %call2.i) #8
  br i1 %tobool.not.i, label %entry.pci230_ai_stop.exit_crit_edge, label %if.end.i

entry.pci230_ai_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ai_stop.exit

if.end.i:                                         ; preds = %entry
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %5 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async.i, align 4
  %convert_src.i = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 6
  %7 = ptrtoint ptr %convert_src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp11.i = icmp eq i32 %8, 16
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pacer.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pacer.i.i, align 4
  %call.i.i = tail call i32 @comedi_8254_set_mode(ptr noundef %10, i32 noundef 2, i32 noundef 2) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end.i.if.end14.i_crit_edge
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 4
  %11 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp15.not.i = icmp eq i32 %12, 4
  br i1 %cmp15.not.i, label %if.end14.i.do.body20.i_crit_edge, label %if.then17.i

if.end14.i.do.body20.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %pacer.i104.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %pacer.i104.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pacer.i104.i, align 4
  %call.i105.i = tail call i32 @comedi_8254_set_mode(ptr noundef %14, i32 noundef 0, i32 noundef 2) #8
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.then17.i, %if.end14.i.do.body20.i_crit_edge
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %ier.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ier.i, align 2
  %17 = and i8 %16, -5
  store i8 %17, ptr %ier.i, align 2
  %intr_cpuid.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ai_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load34106.i = load i8, ptr %ai_cmd_started.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34106.i)
  %tobool37.not107.i = icmp sgt i8 %bf.load34106.i, -1
  br i1 %tobool37.not107.i, label %do.body20.i.do.body56.i_crit_edge, label %do.body20.i.land.rhs.i_crit_edge

do.body20.i.land.rhs.i_crit_edge:                 ; preds = %do.body20.i
  br label %land.rhs.i

do.body20.i.do.body56.i_crit_edge:                ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %do.body20.i.land.rhs.i_crit_edge
  %irqflags.0108.i = phi i32 [ %call51.i, %while.body.i.land.rhs.i_crit_edge ], [ %call27.i, %do.body20.i.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %intr_cpuid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intr_cpuid.i, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp39.not.i = icmp eq i32 %20, %24
  br i1 %cmp39.not.i, label %land.rhs.i.do.body56.i_crit_edge, label %while.body.i

land.rhs.i.do.body56.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %irqflags.0108.i) #8
  %call51.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %25 = ptrtoint ptr %ai_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load34.i = load i8, ptr %ai_cmd_started.i, align 1
  %tobool37.not.i = icmp sgt i8 %bf.load34.i, -1
  br i1 %tobool37.not.i, label %while.body.i.do.body56.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.do.body56.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56.i

do.body56.i:                                      ; preds = %while.body.i.do.body56.i_crit_edge, %land.rhs.i.do.body56.i_crit_edge, %do.body20.i.do.body56.i_crit_edge
  %irqflags.0.lcssa.i = phi i32 [ %call27.i, %do.body20.i.do.body56.i_crit_edge ], [ %call51.i, %while.body.i.do.body56.i_crit_edge ], [ %irqflags.0108.i, %land.rhs.i.do.body56.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ier.i, align 2
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %29, 30
  %and60.i = and i32 %add.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %30 = inttoptr i32 %add61.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #8, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %irqflags.0.lcssa.i) #8
  %adccon.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %adccon.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %adccon.i, align 2
  %33 = and i16 %32, 24
  store i16 %33, ptr %adccon.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %adccon.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %adccon.i, align 2
  %36 = or i16 %35, 4096
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daqio.i, align 4
  %add75.i = add i32 %39, 10
  %and76.i = and i32 %add75.i, 1048575
  %add77.i = or i32 %and76.i, -18874368
  %40 = inttoptr i32 %add77.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %37) #8, !srcloc !133
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 4
  %res_spinlock.i.i.i = getelementptr inbounds %struct.pci230_private, ptr %42, i32 0, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_spinlock.i.i.i) #8
  %arrayidx.i.i.i = getelementptr %struct.pci230_private, ptr %42, i32 0, i32 12, i32 0
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i.i.i, i32 noundef %call2.i.i.i) #8
  br label %pci230_ai_stop.exit

pci230_ai_stop.exit:                              ; preds = %do.body56.i, %entry.pci230_ai_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %8 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %9, i32 0, i32 1, i32 %and2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %ao_bipolar = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ao_bipolar to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ao_bipolar, align 1
  %13 = lshr i32 %11, 26
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %15, %bf.clear
  store i8 %bf.set, ptr %ao_bipolar, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %conv3 = trunc i32 %and2 to i16
  %16 = shl nuw i16 %conv3, 8
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %daqio, align 4
  %and4 = and i32 %18, 1048575
  %add5 = or i32 %and4, -18874368
  %19 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #8, !srcloc !133
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27.not = icmp eq i32 %21, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i26 = icmp eq i32 %and, 0
  %cond.i = select i1 %cmp.i26, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx8 = getelementptr i32, ptr %data, i32 %i.028
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8, align 4
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board_ptr.i.i, align 4
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private, align 4
  %ao_bits.i.i = getelementptr inbounds %struct.pci230_board, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %ao_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ao_bits.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %sub.i.i = sub nsw i32 16, %conv.i.i
  %shl.i.i = shl i32 %23, %sub.i.i
  %conv2.i.i = trunc i32 %shl.i.i to i16
  %ao_bipolar.i.i = getelementptr inbounds %struct.pci230_private, ptr %29, i32 0, i32 13
  %32 = ptrtoint ptr %ao_bipolar.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i = load i8, ptr %ao_bipolar.i.i, align 1
  %33 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  %conv4.i.i = xor i16 %conv2.i.i, -32768
  %datum.addr.0.i.i = select i1 %tobool.not.i.i, i16 %conv2.i.i, i16 %conv4.i.i
  %34 = tail call i16 @llvm.bswap.i16(i16 %datum.addr.0.i.i) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %25, i32 0, i32 4
  %35 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %daqio.i, align 4
  %add.i = add i32 %36, %cond.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %37 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 %34) #8, !srcloc !133
  %inc = add nuw i32 %i.028, 1
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  %40 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %readback, align 4
  %arrayidx11 = getelementptr i32, ptr %41, i32 %and
  %42 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %val.0.lcssa, ptr %arrayidx11, align 4
  %43 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n, align 4
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp eq i32 %5, 16
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %res_spinlock.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_spinlock.i) #8
  %arrayidx.i = getelementptr %struct.pci230_private, ptr %1, i32 0, i32 12, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %and33.i = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and33.i)
  %tobool.not.i = icmp eq i8 %and33.i, 0
  br i1 %tobool.not.i, label %pci230_claim_shared.exit.thread, label %pci230_claim_shared.exit

pci230_claim_shared.exit.thread:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr %struct.pci230_private, ptr %1, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16.i, align 1
  %or32.i = or i8 %9, 2
  store i8 %or32.i, ptr %arrayidx16.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i, i32 noundef %call2.i) #8
  br label %if.end3

pci230_claim_shared.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i, i32 noundef %call2.i) #8
  br label %cleanup

if.end3:                                          ; preds = %pci230_claim_shared.exit.thread, %entry.if.end3_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %10 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chanlist, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr = lshr i32 %13, 16
  %and = and i32 %shr, 255
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %14 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i79 = getelementptr %struct.comedi_lrange, ptr %15, i32 0, i32 1, i32 %and
  %16 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i79, align 4
  %ao_bipolar = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %ao_bipolar to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %ao_bipolar, align 1
  %19 = lshr i32 %17, 26
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %21, %bf.clear
  store i8 %bf.set, ptr %ao_bipolar, align 1
  %.lobit = lshr i32 %17, 31
  %22 = trunc i32 %.lobit to i16
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp10 = icmp ugt i16 %24, 1
  br i1 %cmp10, label %for.cond.preheader, label %if.end3.do.body27_crit_edge

if.end3.do.body27_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

for.cond.preheader:                               ; preds = %if.end3
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %25 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1381.not = icmp eq i32 %26, 0
  br i1 %cmp1381.not, label %for.cond.preheader.do.body_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %27 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dacen.082 = phi i16 [ 0, %for.body.lr.ph ], [ %conv19, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr i32, ptr %28, i32 %i.083
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx16, align 4
  %and17 = and i32 %30, 65535
  %shl = shl nuw i32 1, %and17
  %31 = trunc i32 %shl to i16
  %conv19 = or i16 %dacen.082, %31
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %dacen.0.lcssa = phi i16 [ 0, %for.cond.preheader.do.body_crit_edge ], [ %conv19, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %32 = tail call i16 @llvm.bswap.i16(i16 %dacen.0.lcssa)
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daqio, align 4
  %add = add i32 %34, 6
  %and20 = and i32 %add, 1048575
  %add21 = or i32 %and20, -18874368
  %35 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #8, !srcloc !133
  %or24 = or i16 %22, 5408
  br label %do.body27

do.body27:                                        ; preds = %do.body, %if.end3.do.body27_crit_edge
  %daccon.0 = phi i16 [ %or24, %do.body ], [ %22, %if.end3.do.body27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %36 = tail call i16 @llvm.bswap.i16(i16 %daccon.0)
  %daqio30 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %daqio30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daqio30, align 4
  %and32 = and i32 %38, 1048575
  %add33 = or i32 %and32, -18874368
  %39 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #8, !srcloc !133
  %40 = and i16 %daccon.0, -4129
  %daccon38 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %daccon38 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %daccon38, align 4
  %42 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %43)
  %cmp40 = icmp eq i32 %43, 16
  br i1 %cmp40, label %do.body43, label %do.body27.if.end53_crit_edge

do.body27.if.end53_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body43:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase, align 4
  %add48 = add i32 %45, 29
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %46 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 9) #8, !srcloc !138
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 5
  %47 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_begin_arg, align 4
  %conv52 = zext i32 %48 to i64
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  tail call fastcc void @pci230_ct_setup_ns_mode(ptr noundef %dev, i32 noundef 1, i32 noundef 6, i64 noundef %conv52, i32 noundef %50)
  br label %if.end53

if.end53:                                         ; preds = %do.body43, %do.body27.if.end53_crit_edge
  %51 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %52, i32 0, i32 20
  %53 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @pci230_ao_inttrig_start, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %pci230_claim_shared.exit
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -16, %pci230_claim_shared.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  %and.i = and i32 %5, 128
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp1.not.i = icmp eq i32 %and.i, %5
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %min_hwver = getelementptr inbounds %struct.pci230_board, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %min_hwver to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %min_hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp3 = icmp ugt i16 %9, 1
  %spec.select = select i1 %cmp3, i32 208, i32 144
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %tmp.0 = phi i32 [ 144, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_begin_src, align 4
  %and.i159 = and i32 %11, %tmp.0
  store i32 %and.i159, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %cmp.i160 = icmp ne i32 %and.i159, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i159, i32 %11)
  %cmp1.not.i161 = icmp eq i32 %and.i159, %11
  %or.cond.i162 = and i1 %cmp.i160, %cmp1.not.i161
  %12 = select i1 %or.cond.i, i1 %or.cond.i162, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %13 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %convert_src, align 4
  %and.i164 = and i32 %14, 2
  store i32 %and.i164, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %cmp.i165 = icmp ne i32 %and.i164, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i164, i32 %14)
  %cmp1.not.i166 = icmp eq i32 %and.i164, %14
  %or.cond.i167 = and i1 %cmp.i165, %cmp1.not.i166
  %15 = select i1 %12, i1 %or.cond.i167, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %16 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_end_src, align 4
  %and.i169 = and i32 %17, 32
  store i32 %and.i169, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %cmp.i170 = icmp ne i32 %and.i169, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i169, i32 %17)
  %cmp1.not.i171 = icmp eq i32 %and.i169, %17
  %or.cond.i172 = and i1 %cmp.i170, %cmp1.not.i171
  %18 = select i1 %15, i1 %or.cond.i172, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %19 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stop_src, align 4
  %and.i174 = and i32 %20, 33
  store i32 %and.i174, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %cmp.i175 = icmp ne i32 %and.i174, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i174, i32 %20)
  %cmp1.not.i176 = icmp eq i32 %and.i174, %20
  %or.cond.i177 = and i1 %cmp.i175, %cmp1.not.i176
  %21 = select i1 %18, i1 %or.cond.i177, i1 false
  br i1 %21, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %22 = tail call i32 @llvm.ctpop.i32(i32 %11) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i = icmp ult i32 %22, 2
  %23 = tail call i32 @llvm.ctpop.i32(i32 %20) #8, !range !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not.i179 = icmp ult i32 %23, 2
  %24 = select i1 %cmp.not.i, i1 %cmp.not.i179, i1 false
  br i1 %24, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i181 = icmp eq i32 %26, 0
  br i1 %cmp.not.i181, label %if.end24.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end24.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end24.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i182 = phi i32 [ -22, %if.then.i ], [ 0, %if.end24.comedi_check_trigger_arg_is.exit_crit_edge ]
  %trunc = trunc i32 %11 to i8
  %28 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc, label %sw.default [
    i8 16, label %sw.bb
    i8 64, label %sw.bb33
  ]

sw.bb:                                            ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %30)
  %cmp.i183 = icmp ult i32 %30, 8000
  br i1 %cmp.i183, label %if.then.i184, label %sw.bb.comedi_check_trigger_arg_min.exit_crit_edge

sw.bb.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i184:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i184, %sw.bb.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i185 = phi i32 [ -22, %if.then.i184 ], [ 0, %sw.bb.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or29 = or i32 %retval.0.i185, %retval.0.i182
  br label %sw.epilog

sw.bb33:                                          ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg34 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %32 = ptrtoint ptr %scan_begin_arg34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_begin_arg34, align 4
  %and = and i32 %33, 67108863
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %sw.bb33.if.end42_crit_edge, label %if.then36

sw.bb33.if.end42_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %and38 = and i32 %33, -67108864
  %34 = ptrtoint ptr %scan_begin_arg34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and38, ptr %scan_begin_arg34, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %sw.bb33.if.end42_crit_edge
  %err.0 = phi i32 [ -22, %if.then36 ], [ %retval.0.i182, %sw.bb33.if.end42_crit_edge ]
  %35 = ptrtoint ptr %scan_begin_arg34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_begin_arg34, align 4
  %and45 = and i32 %36, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end42.sw.epilog_crit_edge, label %if.then47

if.end42.sw.epilog_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %and49 = and i32 %36, -1006632961
  %37 = ptrtoint ptr %scan_begin_arg34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and49, ptr %scan_begin_arg34, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg54 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %38 = ptrtoint ptr %scan_begin_arg54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_begin_arg54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i187 = icmp eq i32 %39, 0
  br i1 %cmp.not.i187, label %sw.default.comedi_check_trigger_arg_is.exit190_crit_edge, label %if.then.i188

sw.default.comedi_check_trigger_arg_is.exit190_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit190

if.then.i188:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %scan_begin_arg54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %scan_begin_arg54, align 4
  br label %comedi_check_trigger_arg_is.exit190

comedi_check_trigger_arg_is.exit190:              ; preds = %if.then.i188, %sw.default.comedi_check_trigger_arg_is.exit190_crit_edge
  %retval.0.i189 = phi i32 [ -22, %if.then.i188 ], [ 0, %sw.default.comedi_check_trigger_arg_is.exit190_crit_edge ]
  %or56 = or i32 %retval.0.i189, %retval.0.i182
  br label %sw.epilog

sw.epilog:                                        ; preds = %comedi_check_trigger_arg_is.exit190, %if.then47, %if.end42.sw.epilog_crit_edge, %comedi_check_trigger_arg_min.exit
  %err.1 = phi i32 [ %or56, %comedi_check_trigger_arg_is.exit190 ], [ -22, %if.then47 ], [ %err.0, %if.end42.sw.epilog_crit_edge ], [ %or29, %comedi_check_trigger_arg_min.exit ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %41 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chanlist_len, align 4
  %43 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i191 = icmp eq i32 %44, %42
  br i1 %cmp.not.i191, label %sw.epilog.comedi_check_trigger_arg_is.exit194_crit_edge, label %if.then.i192

sw.epilog.comedi_check_trigger_arg_is.exit194_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit194

if.then.i192:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit194

comedi_check_trigger_arg_is.exit194:              ; preds = %if.then.i192, %sw.epilog.comedi_check_trigger_arg_is.exit194_crit_edge
  %retval.0.i193 = phi i32 [ -22, %if.then.i192 ], [ 0, %sw.epilog.comedi_check_trigger_arg_is.exit194_crit_edge ]
  %or58 = or i32 %retval.0.i193, %err.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp60 = icmp eq i32 %20, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %46 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i195 = icmp eq i32 %47, 0
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %comedi_check_trigger_arg_is.exit194
  br i1 %cmp.i195, label %if.then62.if.end68.sink.split_crit_edge, label %if.then62.if.end68_crit_edge

if.then62.if.end68_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then62.if.end68.sink.split_crit_edge:          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit194
  br i1 %cmp.i195, label %if.else.if.end68_crit_edge, label %if.else.if.end68.sink.split_crit_edge

if.else.if.end68.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.sink.split

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.end68.sink.split:                              ; preds = %if.else.if.end68.sink.split_crit_edge, %if.then62.if.end68.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then62.if.end68.sink.split_crit_edge ], [ 0, %if.else.if.end68.sink.split_crit_edge ]
  %48 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.else.if.end68_crit_edge, %if.then62.if.end68_crit_edge
  %call63.pn = phi i32 [ 0, %if.then62.if.end68_crit_edge ], [ 0, %if.else.if.end68_crit_edge ], [ -22, %if.end68.sink.split ]
  %err.2 = or i32 %or58, %call63.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool69.not = icmp eq i32 %err.2, 0
  br i1 %tobool69.not, label %if.end71, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp73 = icmp eq i32 %11, 16
  br i1 %cmp73, label %if.then75, label %if.end71.if.end86_crit_edge

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then75:                                        ; preds = %if.end71
  %scan_begin_arg76 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %49 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_begin_arg76, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and182.i.i.i = and i32 %52, 196608
  %.frozen = freeze i32 %50
  %div174.i.i.i = udiv i32 %.frozen, 100
  %53 = mul i32 %div174.i.i.i, 100
  %rem172.i.i.i.decomposed = sub i32 %.frozen, %53
  %54 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i [
    i32 131072, label %sw.bb189.i.i.i
    i32 65536, label %if.then75.pci230_divide_ns.exit.i.i_crit_edge
  ]

if.then75.pci230_divide_ns.exit.i.i_crit_edge:    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i = add nuw nsw i32 %rem172.i.i.i.decomposed, 50
  br label %sw.epilog.sink.split.i.i.i

sw.bb189.i.i.i:                                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i = add nuw nsw i32 %rem172.i.i.i.decomposed, 99
  br label %sw.epilog.sink.split.i.i.i

sw.epilog.sink.split.i.i.i:                       ; preds = %sw.bb189.i.i.i, %sw.bb.i.i.i
  %sub191.sink.i.i.i = phi i32 [ %sub191.i.i.i, %sw.bb189.i.i.i ], [ %add185.i.i.i, %sw.bb.i.i.i ]
  %div192.i.i.i = udiv i32 %sub191.sink.i.i.i, 100
  %narrow218 = add nuw nsw i32 %div174.i.i.i, %div192.i.i.i
  br label %pci230_divide_ns.exit.i.i

pci230_divide_ns.exit.i.i:                        ; preds = %sw.epilog.sink.split.i.i.i, %if.then75.pci230_divide_ns.exit.i.i_crit_edge
  %div.1.i.i.i.in = phi i32 [ %div174.i.i.i, %if.then75.pci230_divide_ns.exit.i.i_crit_edge ], [ %narrow218, %sw.epilog.sink.split.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.in)
  %cmp.i.i = icmp ult i32 %div.1.i.i.i.in, 65537
  br i1 %cmp.i.i, label %pci230_divide_ns.exit.i.i.pci230_ns_to_single_timer.exit_crit_edge, label %for.cond.i.i.1

pci230_divide_ns.exit.i.i.pci230_ns_to_single_timer.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit

for.cond.i.i.1:                                   ; preds = %pci230_divide_ns.exit.i.i
  %.frozen219 = freeze i32 %50
  %div174.i.i.i.1 = udiv i32 %.frozen219, 1000
  %55 = mul i32 %div174.i.i.i.1, 1000
  %rem172.i.i.i.1.decomposed = sub i32 %.frozen219, %55
  %56 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.1 [
    i32 131072, label %sw.bb189.i.i.i.1
    i32 65536, label %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge
  ]

for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge: ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.1

sw.bb189.i.i.i.1:                                 ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.1 = add nuw nsw i32 %rem172.i.i.i.1.decomposed, 999
  br label %sw.epilog.sink.split.i.i.i.1

sw.bb.i.i.i.1:                                    ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.1 = add nuw nsw i32 %rem172.i.i.i.1.decomposed, 500
  br label %sw.epilog.sink.split.i.i.i.1

sw.epilog.sink.split.i.i.i.1:                     ; preds = %sw.bb.i.i.i.1, %sw.bb189.i.i.i.1
  %sub191.sink.i.i.i.1 = phi i32 [ %sub191.i.i.i.1, %sw.bb189.i.i.i.1 ], [ %add185.i.i.i.1, %sw.bb.i.i.i.1 ]
  %div192.i.i.i.1 = udiv i32 %sub191.sink.i.i.i.1, 1000
  %narrow217 = add nuw nsw i32 %div174.i.i.i.1, %div192.i.i.i.1
  br label %pci230_divide_ns.exit.i.i.1

pci230_divide_ns.exit.i.i.1:                      ; preds = %sw.epilog.sink.split.i.i.i.1, %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge
  %div.1.i.i.i.1.in = phi i32 [ %div174.i.i.i.1, %for.cond.i.i.1.pci230_divide_ns.exit.i.i.1_crit_edge ], [ %narrow217, %sw.epilog.sink.split.i.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.1.in)
  %cmp.i.i.1 = icmp ult i32 %div.1.i.i.i.1.in, 65537
  br i1 %cmp.i.i.1, label %pci230_divide_ns.exit.i.i.1.pci230_ns_to_single_timer.exit_crit_edge, label %for.cond.i.i.2

pci230_divide_ns.exit.i.i.1.pci230_ns_to_single_timer.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit

for.cond.i.i.2:                                   ; preds = %pci230_divide_ns.exit.i.i.1
  %.frozen220 = freeze i32 %50
  %div174.i.i.i.2 = udiv i32 %.frozen220, 10000
  %57 = mul i32 %div174.i.i.i.2, 10000
  %rem172.i.i.i.2.decomposed = sub i32 %.frozen220, %57
  %58 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.2 [
    i32 131072, label %sw.bb189.i.i.i.2
    i32 65536, label %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge
  ]

for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge: ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.2

sw.bb189.i.i.i.2:                                 ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.2 = add nuw nsw i32 %rem172.i.i.i.2.decomposed, 9999
  br label %sw.epilog.sink.split.i.i.i.2

sw.bb.i.i.i.2:                                    ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.2 = add nuw nsw i32 %rem172.i.i.i.2.decomposed, 5000
  br label %sw.epilog.sink.split.i.i.i.2

sw.epilog.sink.split.i.i.i.2:                     ; preds = %sw.bb.i.i.i.2, %sw.bb189.i.i.i.2
  %sub191.sink.i.i.i.2 = phi i32 [ %sub191.i.i.i.2, %sw.bb189.i.i.i.2 ], [ %add185.i.i.i.2, %sw.bb.i.i.i.2 ]
  %div192.i.i.i.2 = udiv i32 %sub191.sink.i.i.i.2, 10000
  %narrow216 = add nuw nsw i32 %div174.i.i.i.2, %div192.i.i.i.2
  br label %pci230_divide_ns.exit.i.i.2

pci230_divide_ns.exit.i.i.2:                      ; preds = %sw.epilog.sink.split.i.i.i.2, %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge
  %div.1.i.i.i.2.in = phi i32 [ %div174.i.i.i.2, %for.cond.i.i.2.pci230_divide_ns.exit.i.i.2_crit_edge ], [ %narrow216, %sw.epilog.sink.split.i.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.2.in)
  %cmp.i.i.2 = icmp ult i32 %div.1.i.i.i.2.in, 65537
  br i1 %cmp.i.i.2, label %pci230_divide_ns.exit.i.i.2.pci230_ns_to_single_timer.exit_crit_edge, label %for.cond.i.i.3

pci230_divide_ns.exit.i.i.2.pci230_ns_to_single_timer.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit

for.cond.i.i.3:                                   ; preds = %pci230_divide_ns.exit.i.i.2
  %.frozen221 = freeze i32 %50
  %div174.i.i.i.3 = udiv i32 %.frozen221, 100000
  %59 = mul i32 %div174.i.i.i.3, 100000
  %rem172.i.i.i.3.decomposed = sub i32 %.frozen221, %59
  %60 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.3 [
    i32 131072, label %sw.bb189.i.i.i.3
    i32 65536, label %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge
  ]

for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge: ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.i.3

sw.bb189.i.i.i.3:                                 ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.3 = add nuw nsw i32 %rem172.i.i.i.3.decomposed, 99999
  br label %sw.epilog.sink.split.i.i.i.3

sw.bb.i.i.i.3:                                    ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.3 = add nuw nsw i32 %rem172.i.i.i.3.decomposed, 50000
  br label %sw.epilog.sink.split.i.i.i.3

sw.epilog.sink.split.i.i.i.3:                     ; preds = %sw.bb.i.i.i.3, %sw.bb189.i.i.i.3
  %sub191.sink.i.i.i.3 = phi i32 [ %sub191.i.i.i.3, %sw.bb189.i.i.i.3 ], [ %add185.i.i.i.3, %sw.bb.i.i.i.3 ]
  %div192.i.i.i.3 = udiv i32 %sub191.sink.i.i.i.3, 100000
  %narrow215 = add nuw nsw i32 %div174.i.i.i.3, %div192.i.i.i.3
  br label %pci230_divide_ns.exit.i.i.3

pci230_divide_ns.exit.i.i.3:                      ; preds = %sw.epilog.sink.split.i.i.i.3, %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge
  %div.1.i.i.i.3.in = phi i32 [ %div174.i.i.i.3, %for.cond.i.i.3.pci230_divide_ns.exit.i.i.3_crit_edge ], [ %narrow215, %sw.epilog.sink.split.i.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.i.3.in)
  %cmp.i.i.3 = icmp ult i32 %div.1.i.i.i.3.in, 65537
  br i1 %cmp.i.i.3, label %pci230_divide_ns.exit.i.i.3.pci230_ns_to_single_timer.exit_crit_edge, label %for.cond.i.i.4

pci230_divide_ns.exit.i.i.3.pci230_ns_to_single_timer.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit

for.cond.i.i.4:                                   ; preds = %pci230_divide_ns.exit.i.i.3
  %.frozen222 = freeze i32 %50
  %div174.i.i.i.4 = udiv i32 %.frozen222, 1000000
  %61 = mul i32 %div174.i.i.i.4, 1000000
  %rem172.i.i.i.4.decomposed = sub i32 %.frozen222, %61
  %62 = zext i32 %and182.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and182.i.i.i, label %sw.bb.i.i.i.4 [
    i32 131072, label %sw.bb189.i.i.i.4
    i32 65536, label %for.cond.i.i.4.pci230_ns_to_single_timer.exit_crit_edge
  ]

for.cond.i.i.4.pci230_ns_to_single_timer.exit_crit_edge: ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ns_to_single_timer.exit

sw.bb189.i.i.i.4:                                 ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.i.4 = add nuw nsw i32 %rem172.i.i.i.4.decomposed, 999999
  br label %sw.epilog.sink.split.i.i.i.4

sw.bb.i.i.i.4:                                    ; preds = %for.cond.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.i.4 = add nuw nsw i32 %rem172.i.i.i.4.decomposed, 500000
  br label %sw.epilog.sink.split.i.i.i.4

sw.epilog.sink.split.i.i.i.4:                     ; preds = %sw.bb.i.i.i.4, %sw.bb189.i.i.i.4
  %sub191.sink.i.i.i.4 = phi i32 [ %sub191.i.i.i.4, %sw.bb189.i.i.i.4 ], [ %add185.i.i.i.4, %sw.bb.i.i.i.4 ]
  %div192.i.i.i.4 = udiv i32 %sub191.sink.i.i.i.4, 1000000
  %narrow = add nuw nsw i32 %div174.i.i.i.4, %div192.i.i.i.4
  br label %pci230_ns_to_single_timer.exit

pci230_ns_to_single_timer.exit:                   ; preds = %sw.epilog.sink.split.i.i.i.4, %for.cond.i.i.4.pci230_ns_to_single_timer.exit_crit_edge, %pci230_divide_ns.exit.i.i.3.pci230_ns_to_single_timer.exit_crit_edge, %pci230_divide_ns.exit.i.i.2.pci230_ns_to_single_timer.exit_crit_edge, %pci230_divide_ns.exit.i.i.1.pci230_ns_to_single_timer.exit_crit_edge, %pci230_divide_ns.exit.i.i.pci230_ns_to_single_timer.exit_crit_edge
  %.lcssa210.off0 = phi i32 [ %div.1.i.i.i.in, %pci230_divide_ns.exit.i.i.pci230_ns_to_single_timer.exit_crit_edge ], [ %div.1.i.i.i.1.in, %pci230_divide_ns.exit.i.i.1.pci230_ns_to_single_timer.exit_crit_edge ], [ %div.1.i.i.i.2.in, %pci230_divide_ns.exit.i.i.2.pci230_ns_to_single_timer.exit_crit_edge ], [ %div.1.i.i.i.3.in, %pci230_divide_ns.exit.i.i.3.pci230_ns_to_single_timer.exit_crit_edge ], [ %div174.i.i.i.4, %for.cond.i.i.4.pci230_ns_to_single_timer.exit_crit_edge ], [ %narrow, %sw.epilog.sink.split.i.i.i.4 ]
  %.lcssa = phi i32 [ 100, %pci230_divide_ns.exit.i.i.pci230_ns_to_single_timer.exit_crit_edge ], [ 1000, %pci230_divide_ns.exit.i.i.1.pci230_ns_to_single_timer.exit_crit_edge ], [ 10000, %pci230_divide_ns.exit.i.i.2.pci230_ns_to_single_timer.exit_crit_edge ], [ 100000, %pci230_divide_ns.exit.i.i.3.pci230_ns_to_single_timer.exit_crit_edge ], [ 1000000, %sw.epilog.sink.split.i.i.i.4 ], [ 1000000, %for.cond.i.i.4.pci230_ns_to_single_timer.exit_crit_edge ]
  %mul.i = mul i32 %.lcssa, %.lcssa210.off0
  %63 = ptrtoint ptr %scan_begin_arg76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul.i, ptr %scan_begin_arg76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %mul.i)
  %cmp79.not = icmp eq i32 %50, %mul.i
  br i1 %cmp79.not, label %pci230_ns_to_single_timer.exit.if.end86_crit_edge, label %pci230_ns_to_single_timer.exit.cleanup_crit_edge

pci230_ns_to_single_timer.exit.cleanup_crit_edge: ; preds = %pci230_ns_to_single_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pci230_ns_to_single_timer.exit.if.end86_crit_edge: ; preds = %pci230_ns_to_single_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end86:                                         ; preds = %pci230_ns_to_single_timer.exit.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %64 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chanlist, align 4
  %tobool87.not = icmp eq ptr %65, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp90.not = icmp eq i32 %42, 0
  %or.cond = select i1 %tobool87.not, i1 true, i1 %cmp90.not
  br i1 %or.cond, label %if.end86.if.end95.thread_crit_edge, label %if.end95

if.end86.if.end95.thread_crit_edge:               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread

if.end95:                                         ; preds = %if.end86
  %call93 = tail call fastcc i32 @pci230_ao_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %phi.cmp = icmp eq i32 %call93, 0
  br i1 %phi.cmp, label %if.end95.if.end95.thread_crit_edge, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95.if.end95.thread_crit_edge:               ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread

if.end95.thread:                                  ; preds = %if.end95.if.end95.thread_crit_edge, %if.end86.if.end95.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end95.thread, %if.end95.cleanup_crit_edge, %pci230_ns_to_single_timer.exit.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.end15.cleanup_crit_edge ], [ 3, %if.end68.cleanup_crit_edge ], [ 4, %pci230_ns_to_single_timer.exit.cleanup_crit_edge ], [ 0, %if.end95.thread ], [ 5, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ao_stop_spinlock.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_stop_spinlock.i) #8
  %ao_cmd_started.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ao_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ao_cmd_started.i, align 1
  %3 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %bf.clear7.i = and i8 %bf.load.i, -9
  %4 = ptrtoint ptr %ao_cmd_started.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7.i, ptr %ao_cmd_started.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_stop_spinlock.i, i32 noundef %call2.i) #8
  br i1 %tobool.not.i, label %entry.pci230_ao_stop.exit_crit_edge, label %if.end.i

entry.pci230_ao_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_ao_stop.exit

if.end.i:                                         ; preds = %entry
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %5 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %async.i, align 4
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %6, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp11.i = icmp eq i32 %8, 16
  br i1 %cmp11.i, label %if.then13.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pacer.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %pacer.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pacer.i.i, align 4
  %call.i.i = tail call i32 @comedi_8254_set_mode(ptr noundef %10, i32 noundef 1, i32 noundef 2) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end.i.if.end14.i_crit_edge
  %hwver.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %12)
  %cmp16.i = icmp ult i16 %12, 2
  %..i = select i1 %cmp16.i, i8 -33, i8 -17
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %ier.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ier.i, align 2
  %and.i = and i8 %..i, %14
  store i8 %and.i, ptr %ier.i, align 2
  %intr_cpuid.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ao_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load36111.i = load i8, ptr %ao_cmd_started.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36111.i)
  %tobool39.not112.i = icmp sgt i8 %bf.load36111.i, -1
  br i1 %tobool39.not112.i, label %if.end14.i.do.body58.i_crit_edge, label %if.end14.i.land.rhs.i_crit_edge

if.end14.i.land.rhs.i_crit_edge:                  ; preds = %if.end14.i
  br label %land.rhs.i

if.end14.i.do.body58.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end14.i.land.rhs.i_crit_edge
  %irqflags.0113.i = phi i32 [ %call53.i, %while.body.i.land.rhs.i_crit_edge ], [ %call28.i, %if.end14.i.land.rhs.i_crit_edge ]
  %16 = ptrtoint ptr %intr_cpuid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intr_cpuid.i, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !118) #8
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp41.not.i = icmp eq i32 %17, %21
  br i1 %cmp41.not.i, label %land.rhs.i.do.body58.i_crit_edge, label %while.body.i

land.rhs.i.do.body58.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %irqflags.0113.i) #8
  %call53.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %22 = ptrtoint ptr %ao_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load36.i = load i8, ptr %ao_cmd_started.i, align 1
  %tobool39.not.i = icmp sgt i8 %bf.load36.i, -1
  br i1 %tobool39.not.i, label %while.body.i.do.body58.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.do.body58.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58.i

do.body58.i:                                      ; preds = %while.body.i.do.body58.i_crit_edge, %land.rhs.i.do.body58.i_crit_edge, %if.end14.i.do.body58.i_crit_edge
  %irqflags.0.lcssa.i = phi i32 [ %call28.i, %if.end14.i.do.body58.i_crit_edge ], [ %call53.i, %while.body.i.do.body58.i_crit_edge ], [ %irqflags.0113.i, %land.rhs.i.do.body58.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ier.i, align 2
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %26, 30
  %and62.i = and i32 %add.i, 1048575
  %add63.i = or i32 %and62.i, -18874368
  %27 = inttoptr i32 %add63.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %24) #8, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %irqflags.0.lcssa.i) #8
  %28 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp68.i = icmp ugt i16 %29, 1
  br i1 %cmp68.i, label %if.then70.i, label %do.body58.i.if.end85.i_crit_edge

do.body58.i.if.end85.i_crit_edge:                 ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

if.then70.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #10
  %daccon.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %daccon.i, align 4
  %32 = and i16 %31, 1
  store i16 %32, ptr %daccon.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %daccon.i, align 4
  %35 = or i16 %34, 4128
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %daqio.i, align 4
  %and82.i = and i32 %38, 1048575
  %add83.i = or i32 %and82.i, -18874368
  %39 = inttoptr i32 %add83.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #8, !srcloc !133
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then70.i, %do.body58.i.if.end85.i_crit_edge
  %40 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private.i, align 4
  %res_spinlock.i.i.i = getelementptr inbounds %struct.pci230_private, ptr %41, i32 0, i32 1
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_spinlock.i.i.i) #8
  %arrayidx.i.i.i = getelementptr %struct.pci230_private, ptr %41, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i.i.i, i32 noundef %call2.i.i.i) #8
  br label %pci230_ao_stop.exit

pci230_ao_stop.exit:                              ; preds = %if.end85.i, %entry.pci230_ao_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci230_handle_ao_nofifo(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data, align 2, !annotation !145
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 10
  %3 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp = icmp eq i32 %4, 32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 11
  %7 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3.not = icmp ult i32 %6, %8
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup20_crit_edge

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 13
  %9 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp440.not = icmp eq i32 %10, 0
  br i1 %cmp440.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end6.for.body_crit_edge ]
  %11 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %i.041
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call = call i32 @comedi_buf_read_samples(ptr noundef %s, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup20.sink.split_crit_edge, label %if.end6

for.body.cleanup20.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20.sink.split

if.end6:                                          ; preds = %for.body
  %and = and i32 %14, 65535
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 2
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board_ptr.i.i, align 4
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private.i, align 4
  %ao_bits.i.i = getelementptr inbounds %struct.pci230_board, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %ao_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ao_bits.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %sub.i.i = sub nsw i32 16, %conv.i.i
  %conv1.i.i = zext i16 %16 to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, %sub.i.i
  %conv2.i.i = trunc i32 %shl.i.i to i16
  %ao_bipolar.i.i = getelementptr inbounds %struct.pci230_private, ptr %22, i32 0, i32 13
  %25 = ptrtoint ptr %ao_bipolar.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %ao_bipolar.i.i, align 1
  %26 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i = icmp eq i8 %26, 0
  %conv4.i.i = xor i16 %conv2.i.i, -32768
  %datum.addr.0.i.i = select i1 %tobool.not.i.i, i16 %conv2.i.i, i16 %conv4.i.i
  %27 = call i16 @llvm.bswap.i16(i16 %datum.addr.0.i.i) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %daqio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i = icmp eq i32 %and, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 4
  %add.i = add i32 %29, %cond.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %30 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 %27) #8, !srcloc !133
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 2
  %conv = zext i16 %32 to i32
  %33 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %readback, align 4
  %arrayidx7 = getelementptr i32, ptr %34, i32 %and
  %35 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %arrayidx7, align 4
  %inc = add nuw i32 %i.041, 1
  %36 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chanlist_len, align 4
  %cmp4 = icmp ult i32 %inc, %37
  br i1 %cmp4, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %if.end.for.end_crit_edge
  %38 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %39)
  %cmp9 = icmp eq i32 %39, 32
  br i1 %cmp9, label %land.lhs.true11, label %for.end.cleanup20_crit_edge

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

land.lhs.true11:                                  ; preds = %for.end
  %scans_done12 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %scans_done12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scans_done12, align 4
  %stop_arg13 = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 11
  %42 = ptrtoint ptr %stop_arg13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stop_arg13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp14.not = icmp ult i32 %41, %43
  br i1 %cmp14.not, label %land.lhs.true11.cleanup20_crit_edge, label %land.lhs.true11.cleanup20.sink.split_crit_edge

land.lhs.true11.cleanup20.sink.split_crit_edge:   ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20.sink.split

land.lhs.true11.cleanup20_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

cleanup20.sink.split:                             ; preds = %land.lhs.true11.cleanup20.sink.split_crit_edge, %for.body.cleanup20.sink.split_crit_edge
  %.sink42 = phi i32 [ 2, %land.lhs.true11.cleanup20.sink.split_crit_edge ], [ 32, %for.body.cleanup20.sink.split_crit_edge ]
  %events = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %events, align 4
  %or18 = or i32 %45, %.sink42
  store i32 %or18, ptr %events, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup20.sink.split, %land.lhs.true11.cleanup20_crit_edge, %for.end.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci230_handle_ao_fifo(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %datum = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %call = tail call i32 @comedi_nscans_left(ptr noundef %s, i32 noundef 0) #8
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %daqio, align 4
  %and = and i32 %5, 1048575
  %add3 = or i32 %and, -18874368
  %6 = inttoptr i32 %add3 to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #8, !srcloc !129
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %9 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp = icmp eq i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %entry.if.end27_crit_edge, label %if.then8

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then8:                                         ; preds = %entry
  %conv = zext i16 %8 to i32
  %and9 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.then8.if.end12_crit_edge, label %do.end

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then8.if.end12_crit_edge
  %events.1 = phi i32 [ 48, %do.end ], [ 0, %if.then8.if.end12_crit_edge ]
  %and17 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  %or.cond154 = select i1 %cmp6, i1 %cmp18, i1 false
  br i1 %or.cond154, label %if.end27.thread, label %if.end12.if.end27_crit_edge

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev24 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.28) #11
  br label %if.end108

if.end27:                                         ; preds = %if.end12.if.end27_crit_edge, %entry.if.end27_crit_edge
  %events.2 = phi i32 [ %events.1, %if.end12.if.end27_crit_edge ], [ 2, %entry.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.2)
  %cmp28 = icmp eq i32 %events.2, 0
  br i1 %cmp28, label %if.then30, label %if.end27.if.end108_crit_edge

if.end27.if.end108_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then30:                                        ; preds = %if.end27
  %conv31 = zext i16 %8 to i32
  %and32 = and i32 %conv31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then30.if.end47_crit_edge

if.then30.if.end47_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else:                                          ; preds = %if.then30
  %and36 = and i32 %conv31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else39, label %if.else.if.end47_crit_edge

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.else39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and41 = and i32 %conv31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %. = select i1 %tobool42.not, i32 512, i32 1024
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.else.if.end47_crit_edge, %if.then30.if.end47_crit_edge
  %room.0 = phi i32 [ 0, %if.then30.if.end47_crit_edge ], [ 1, %if.else.if.end47_crit_edge ], [ %., %if.else39 ]
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %15 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chanlist_len, align 4
  %div = udiv i32 %room.0, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %call, i32 %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp52161.not = icmp eq i32 %17, 0
  br i1 %cmp52161.not, label %if.end47.for.end65_crit_edge, label %for.cond54.preheader.lr.ph

if.end47.for.end65_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.cond54.preheader.lr.ph:                       ; preds = %if.end47
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %board_ptr.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.inc63.for.cond54.preheader_crit_edge, %for.cond54.preheader.lr.ph
  %n.0162 = phi i32 [ 0, %for.cond54.preheader.lr.ph ], [ %inc64, %for.inc63.for.cond54.preheader_crit_edge ]
  %18 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp56159.not = icmp eq i32 %19, 0
  br i1 %cmp56159.not, label %for.cond54.preheader.for.inc63_crit_edge, label %for.cond54.preheader.for.body58_crit_edge

for.cond54.preheader.for.body58_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body58

for.cond54.preheader.for.inc63_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.cond54.preheader.for.body58_crit_edge
  %i.0160 = phi i32 [ %inc, %for.body58.for.body58_crit_edge ], [ 0, %for.cond54.preheader.for.body58_crit_edge ]
  %20 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %i.0160
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %and59 = and i32 %23, 65535
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %datum) #8
  %24 = ptrtoint ptr %datum to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %datum, align 2, !annotation !145
  %call60 = call i32 @comedi_buf_read_samples(ptr noundef %s, ptr noundef nonnull %datum, i32 noundef 1) #8
  %25 = ptrtoint ptr %datum to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %datum, align 2
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %board_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board_ptr.i.i, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %ao_bits.i.i = getelementptr inbounds %struct.pci230_board, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %ao_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ao_bits.i.i, align 1
  %conv.i.i = zext i8 %34 to i32
  %sub.i.i = sub nsw i32 16, %conv.i.i
  %conv1.i.i = zext i16 %26 to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, %sub.i.i
  %conv2.i.i = trunc i32 %shl.i.i to i16
  %ao_bipolar.i.i = getelementptr inbounds %struct.pci230_private, ptr %32, i32 0, i32 13
  %35 = ptrtoint ptr %ao_bipolar.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i.i = load i8, ptr %ao_bipolar.i.i, align 1
  %36 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  %conv4.i.i = xor i16 %conv2.i.i, -32768
  %datum.addr.0.i.i = select i1 %tobool.not.i.i, i16 %conv2.i.i, i16 %conv4.i.i
  %37 = call i16 @llvm.bswap.i16(i16 %datum.addr.0.i.i) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %28, i32 0, i32 4
  %38 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daqio.i, align 4
  %add.i = add i32 %39, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %40 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %37) #8, !srcloc !133
  %41 = ptrtoint ptr %datum to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %datum, align 2
  %conv61 = zext i16 %42 to i32
  %43 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %readback, align 4
  %arrayidx62 = getelementptr i32, ptr %44, i32 %and59
  %45 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv61, ptr %arrayidx62, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %datum) #8
  %inc = add nuw i32 %i.0160, 1
  %46 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chanlist_len, align 4
  %cmp56 = icmp ult i32 %inc, %47
  br i1 %cmp56, label %for.body58.for.body58_crit_edge, label %for.body58.for.inc63_crit_edge

for.body58.for.inc63_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc63

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body58

for.inc63:                                        ; preds = %for.body58.for.inc63_crit_edge, %for.cond54.preheader.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %n.0162, 1
  %exitcond.not = icmp eq i32 %inc64, %17
  br i1 %exitcond.not, label %for.inc63.for.end65_crit_edge, label %for.inc63.for.cond54.preheader_crit_edge

for.inc63.for.cond54.preheader_crit_edge:         ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond54.preheader

for.inc63.for.end65_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.end65:                                        ; preds = %for.inc63.for.end65_crit_edge, %if.end47.for.end65_crit_edge
  %48 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %49)
  %cmp67 = icmp eq i32 %49, 32
  br i1 %cmp67, label %land.lhs.true69, label %for.end65.if.end89_crit_edge

for.end65.if.end89_crit_edge:                     ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

land.lhs.true69:                                  ; preds = %for.end65
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %50 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %52 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp70.not = icmp ult i32 %51, %53
  br i1 %cmp70.not, label %land.lhs.true69.if.end89_crit_edge, label %if.then72

land.lhs.true69.if.end89_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  %daccon = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %daccon, align 4
  %56 = and i16 %55, -3585
  store i16 %56, ptr %daccon, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %daccon to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %daccon, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %60 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %daqio, align 4
  %and86 = and i32 %61, 1048575
  %add87 = or i32 %and86, -18874368
  %62 = inttoptr i32 %add87 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 %59) #8, !srcloc !133
  br label %if.end89

if.end89:                                         ; preds = %if.then72, %land.lhs.true69.if.end89_crit_edge, %for.end65.if.end89_crit_edge
  %63 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %daqio, align 4
  %and93 = and i32 %64, 1048575
  %add94 = or i32 %and93, -18874368
  %65 = inttoptr i32 %add94 to ptr
  %66 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %65) #8, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  %67 = and i16 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool100.not = icmp eq i16 %67, 0
  br i1 %tobool100.not, label %if.end89.if.end108_crit_edge, label %do.end104

if.end89.if.end108_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

do.end104:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev105 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %68 = ptrtoint ptr %class_dev105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %class_dev105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.25) #11
  br label %if.end108

if.end108:                                        ; preds = %do.end104, %if.end89.if.end108_crit_edge, %if.end27.if.end108_crit_edge, %if.end27.thread
  %events.3 = phi i32 [ 48, %do.end104 ], [ 0, %if.end89.if.end108_crit_edge ], [ %events.2, %if.end27.if.end108_crit_edge ], [ 48, %if.end27.thread ]
  %events109 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 16
  %70 = ptrtoint ptr %events109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %events109, align 4
  %or110 = or i32 %71, %events.3
  store i32 %or110, ptr %events109, align 4
  %and112 = and i32 %or110, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  ret i1 %tobool113.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nscans_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci230_ai_update_fifo_trigger_level(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 9
  %6 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_end_arg, align 4
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_chan, align 4
  %sub = sub i32 %7, %9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef 2049) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %wake.0 = phi i32 [ %sub, %if.then ], [ %call, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %wake.0)
  %cmp = icmp ugt i32 %wake.0, 2048
  br i1 %cmp, label %if.end.if.end22_crit_edge, label %if.else4

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %wake.0)
  %cmp5 = icmp ugt i32 %wake.0, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else4.if.end22_crit_edge

if.else4.if.end22_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else4
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp6.not = icmp eq i16 %11, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end22_crit_edge, label %if.then8

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then8:                                         ; preds = %land.lhs.true
  %adcfifothresh = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %adcfifothresh to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %adcfifothresh, align 2
  %conv9 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wake.0, i32 %conv9)
  %cmp10.not = icmp eq i32 %wake.0, %conv9
  br i1 %cmp10.not, label %if.then8.if.end22_crit_edge, label %if.then12

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = trunc i32 %wake.0 to i16
  %14 = ptrtoint ptr %adcfifothresh to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv13, ptr %adcfifothresh, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daqio, align 4
  %add = add i32 %17, 20
  %and16 = and i32 %add, 1048575
  %add17 = or i32 %and16, -18874368
  %18 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #8, !srcloc !133
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.then8.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.else4.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %triglev.0 = phi i16 [ 1536, %if.end.if.end22_crit_edge ], [ 3584, %if.then12 ], [ 3584, %if.then8.if.end22_crit_edge ], [ 512, %land.lhs.true.if.end22_crit_edge ], [ 512, %if.else4.if.end22_crit_edge ]
  %adccon23 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %adccon23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %adccon23, align 2
  %and25 = and i16 %20, -3585
  %or = or i16 %and25, %triglev.0
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %20)
  %cmp31.not = icmp eq i16 %or, %20
  br i1 %cmp31.not, label %if.end22.if.end43_crit_edge, label %if.then33

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %adccon23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or, ptr %adccon23, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %22 = tail call i16 @llvm.bswap.i16(i16 %or)
  %daqio38 = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %daqio38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daqio38, align 4
  %add39 = add i32 %24, 10
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %25 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #8, !srcloc !133
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.end22.if.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_set_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %daqio, align 4
  %add = add i32 %3, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci230_ct_setup_ns_mode(ptr nocapture noundef readonly %dev, i32 noundef %ct, i32 noundef %mode, i64 noundef %ns, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pacer, align 4
  %call = tail call i32 @comedi_8254_set_mode(ptr noundef %1, i32 noundef %ct, i32 noundef %mode) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ns)
  %cmp166.i.i = icmp ult i64 %ns, 4294967296
  %conv171.i.i = trunc i64 %ns to i32
  %and182.i.i = and i32 %flags, 196608
  br i1 %cmp166.i.i, label %if.then170.i.i, label %if.else176.i.i, !prof !177

if.then170.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div174.i.i = udiv i32 %conv171.i.i, 100
  %2 = mul i32 %div174.i.i, 100
  %rem172.i.i.decomposed = sub i32 %conv171.i.i, %2
  %conv175.i.i = zext i32 %div174.i.i to i64
  br label %if.end180.i.i

if.else176.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 100, i64 %ns) #12, !srcloc !178
  %asmresult.i289.i.i = extractvalue { i64, i64 } %3, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %shr.i.i.i = lshr i64 %asmresult.i289.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end180.i.i

if.end180.i.i:                                    ; preds = %if.else176.i.i, %if.then170.i.i
  %div.0.i.i = phi i64 [ %conv175.i.i, %if.then170.i.i ], [ %asmresult1.i.i.i, %if.else176.i.i ]
  %__rem.0.i.i = phi i32 [ %rem172.i.i.decomposed, %if.then170.i.i ], [ %conv.i.i.i, %if.else176.i.i ]
  %4 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and182.i.i, label %sw.bb.i.i [
    i32 131072, label %sw.bb189.i.i
    i32 65536, label %if.end180.i.i.pci230_divide_ns.exit.i_crit_edge
  ]

if.end180.i.i.pci230_divide_ns.exit.i_crit_edge:  ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i

sw.bb.i.i:                                        ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i = add i32 %__rem.0.i.i, 50
  br label %sw.epilog.sink.split.i.i

sw.bb189.i.i:                                     ; preds = %if.end180.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i = add i32 %__rem.0.i.i, 99
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb189.i.i, %sw.bb.i.i
  %sub191.sink.i.i = phi i32 [ %sub191.i.i, %sw.bb189.i.i ], [ %add185.i.i, %sw.bb.i.i ]
  %div192.i.i = udiv i32 %sub191.sink.i.i, 100
  %conv193.i.i = zext i32 %div192.i.i to i64
  %add194.i.i = add i64 %div.0.i.i, %conv193.i.i
  br label %pci230_divide_ns.exit.i

pci230_divide_ns.exit.i:                          ; preds = %sw.epilog.sink.split.i.i, %if.end180.i.i.pci230_divide_ns.exit.i_crit_edge
  %div.1.i.i = phi i64 [ %div.0.i.i, %if.end180.i.i.pci230_divide_ns.exit.i_crit_edge ], [ %add194.i.i, %sw.epilog.sink.split.i.i ]
  %5 = tail call i64 @llvm.umin.i64(i64 %div.1.i.i, i64 4294967295) #8
  %6 = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %6)
  %cmp.i = icmp ult i32 %6, 65537
  %extract.t = trunc i64 %5 to i32
  br i1 %cmp.i, label %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.1

pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.1:                                     ; preds = %pci230_divide_ns.exit.i
  br i1 %cmp166.i.i, label %if.then170.i.i.1, label %if.else176.i.i.1, !prof !177

if.else176.i.i.1:                                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 1000, i64 %ns) #12, !srcloc !178
  %asmresult.i289.i.i.1 = extractvalue { i64, i64 } %7, 0
  %asmresult1.i.i.i.1 = extractvalue { i64, i64 } %7, 1
  %shr.i.i.i.1 = lshr i64 %asmresult.i289.i.i.1, 32
  %conv.i.i.i.1 = trunc i64 %shr.i.i.i.1 to i32
  br label %if.end180.i.i.1

if.then170.i.i.1:                                 ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %div174.i.i.1 = udiv i32 %conv171.i.i, 1000
  %8 = mul i32 %div174.i.i.1, 1000
  %rem172.i.i.1.decomposed = sub i32 %conv171.i.i, %8
  %conv175.i.i.1 = zext i32 %div174.i.i.1 to i64
  br label %if.end180.i.i.1

if.end180.i.i.1:                                  ; preds = %if.then170.i.i.1, %if.else176.i.i.1
  %div.0.i.i.1 = phi i64 [ %conv175.i.i.1, %if.then170.i.i.1 ], [ %asmresult1.i.i.i.1, %if.else176.i.i.1 ]
  %__rem.0.i.i.1 = phi i32 [ %rem172.i.i.1.decomposed, %if.then170.i.i.1 ], [ %conv.i.i.i.1, %if.else176.i.i.1 ]
  %9 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and182.i.i, label %sw.bb.i.i.1 [
    i32 131072, label %sw.bb189.i.i.1
    i32 65536, label %if.end180.i.i.1.pci230_divide_ns.exit.i.1_crit_edge
  ]

if.end180.i.i.1.pci230_divide_ns.exit.i.1_crit_edge: ; preds = %if.end180.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.1

sw.bb189.i.i.1:                                   ; preds = %if.end180.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.1 = add i32 %__rem.0.i.i.1, 999
  br label %sw.epilog.sink.split.i.i.1

sw.bb.i.i.1:                                      ; preds = %if.end180.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.1 = add i32 %__rem.0.i.i.1, 500
  br label %sw.epilog.sink.split.i.i.1

sw.epilog.sink.split.i.i.1:                       ; preds = %sw.bb.i.i.1, %sw.bb189.i.i.1
  %sub191.sink.i.i.1 = phi i32 [ %sub191.i.i.1, %sw.bb189.i.i.1 ], [ %add185.i.i.1, %sw.bb.i.i.1 ]
  %div192.i.i.1 = udiv i32 %sub191.sink.i.i.1, 1000
  %conv193.i.i.1 = zext i32 %div192.i.i.1 to i64
  %add194.i.i.1 = add i64 %div.0.i.i.1, %conv193.i.i.1
  br label %pci230_divide_ns.exit.i.1

pci230_divide_ns.exit.i.1:                        ; preds = %sw.epilog.sink.split.i.i.1, %if.end180.i.i.1.pci230_divide_ns.exit.i.1_crit_edge
  %div.1.i.i.1 = phi i64 [ %div.0.i.i.1, %if.end180.i.i.1.pci230_divide_ns.exit.i.1_crit_edge ], [ %add194.i.i.1, %sw.epilog.sink.split.i.i.1 ]
  %10 = tail call i64 @llvm.umin.i64(i64 %div.1.i.i.1, i64 4294967295) #8
  %11 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %11)
  %cmp.i.1 = icmp ult i32 %11, 65537
  %extract.t14 = trunc i64 %10 to i32
  br i1 %cmp.i.1, label %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.2

pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.2:                                     ; preds = %pci230_divide_ns.exit.i.1
  br i1 %cmp166.i.i, label %if.then170.i.i.2, label %if.else176.i.i.2, !prof !177

if.else176.i.i.2:                                 ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 10000, i64 %ns) #12, !srcloc !178
  %asmresult.i289.i.i.2 = extractvalue { i64, i64 } %12, 0
  %asmresult1.i.i.i.2 = extractvalue { i64, i64 } %12, 1
  %shr.i.i.i.2 = lshr i64 %asmresult.i289.i.i.2, 32
  %conv.i.i.i.2 = trunc i64 %shr.i.i.i.2 to i32
  br label %if.end180.i.i.2

if.then170.i.i.2:                                 ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %div174.i.i.2 = udiv i32 %conv171.i.i, 10000
  %13 = mul i32 %div174.i.i.2, 10000
  %rem172.i.i.2.decomposed = sub i32 %conv171.i.i, %13
  %conv175.i.i.2 = zext i32 %div174.i.i.2 to i64
  br label %if.end180.i.i.2

if.end180.i.i.2:                                  ; preds = %if.then170.i.i.2, %if.else176.i.i.2
  %div.0.i.i.2 = phi i64 [ %conv175.i.i.2, %if.then170.i.i.2 ], [ %asmresult1.i.i.i.2, %if.else176.i.i.2 ]
  %__rem.0.i.i.2 = phi i32 [ %rem172.i.i.2.decomposed, %if.then170.i.i.2 ], [ %conv.i.i.i.2, %if.else176.i.i.2 ]
  %14 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and182.i.i, label %sw.bb.i.i.2 [
    i32 131072, label %sw.bb189.i.i.2
    i32 65536, label %if.end180.i.i.2.pci230_divide_ns.exit.i.2_crit_edge
  ]

if.end180.i.i.2.pci230_divide_ns.exit.i.2_crit_edge: ; preds = %if.end180.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.2

sw.bb189.i.i.2:                                   ; preds = %if.end180.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.2 = add i32 %__rem.0.i.i.2, 9999
  br label %sw.epilog.sink.split.i.i.2

sw.bb.i.i.2:                                      ; preds = %if.end180.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.2 = add i32 %__rem.0.i.i.2, 5000
  br label %sw.epilog.sink.split.i.i.2

sw.epilog.sink.split.i.i.2:                       ; preds = %sw.bb.i.i.2, %sw.bb189.i.i.2
  %sub191.sink.i.i.2 = phi i32 [ %sub191.i.i.2, %sw.bb189.i.i.2 ], [ %add185.i.i.2, %sw.bb.i.i.2 ]
  %div192.i.i.2 = udiv i32 %sub191.sink.i.i.2, 10000
  %conv193.i.i.2 = zext i32 %div192.i.i.2 to i64
  %add194.i.i.2 = add i64 %div.0.i.i.2, %conv193.i.i.2
  br label %pci230_divide_ns.exit.i.2

pci230_divide_ns.exit.i.2:                        ; preds = %sw.epilog.sink.split.i.i.2, %if.end180.i.i.2.pci230_divide_ns.exit.i.2_crit_edge
  %div.1.i.i.2 = phi i64 [ %div.0.i.i.2, %if.end180.i.i.2.pci230_divide_ns.exit.i.2_crit_edge ], [ %add194.i.i.2, %sw.epilog.sink.split.i.i.2 ]
  %15 = tail call i64 @llvm.umin.i64(i64 %div.1.i.i.2, i64 4294967295) #8
  %16 = trunc i64 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %16)
  %cmp.i.2 = icmp ult i32 %16, 65537
  %extract.t15 = trunc i64 %15 to i32
  br i1 %cmp.i.2, label %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.3

pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.3:                                     ; preds = %pci230_divide_ns.exit.i.2
  br i1 %cmp166.i.i, label %if.then170.i.i.3, label %if.else176.i.i.3, !prof !177

if.else176.i.i.3:                                 ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 100000, i64 %ns) #12, !srcloc !178
  %asmresult.i289.i.i.3 = extractvalue { i64, i64 } %17, 0
  %asmresult1.i.i.i.3 = extractvalue { i64, i64 } %17, 1
  %shr.i.i.i.3 = lshr i64 %asmresult.i289.i.i.3, 32
  %conv.i.i.i.3 = trunc i64 %shr.i.i.i.3 to i32
  br label %if.end180.i.i.3

if.then170.i.i.3:                                 ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %div174.i.i.3 = udiv i32 %conv171.i.i, 100000
  %18 = mul i32 %div174.i.i.3, 100000
  %rem172.i.i.3.decomposed = sub i32 %conv171.i.i, %18
  %conv175.i.i.3 = zext i32 %div174.i.i.3 to i64
  br label %if.end180.i.i.3

if.end180.i.i.3:                                  ; preds = %if.then170.i.i.3, %if.else176.i.i.3
  %div.0.i.i.3 = phi i64 [ %conv175.i.i.3, %if.then170.i.i.3 ], [ %asmresult1.i.i.i.3, %if.else176.i.i.3 ]
  %__rem.0.i.i.3 = phi i32 [ %rem172.i.i.3.decomposed, %if.then170.i.i.3 ], [ %conv.i.i.i.3, %if.else176.i.i.3 ]
  %19 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and182.i.i, label %sw.bb.i.i.3 [
    i32 131072, label %sw.bb189.i.i.3
    i32 65536, label %if.end180.i.i.3.pci230_divide_ns.exit.i.3_crit_edge
  ]

if.end180.i.i.3.pci230_divide_ns.exit.i.3_crit_edge: ; preds = %if.end180.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.3

sw.bb189.i.i.3:                                   ; preds = %if.end180.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.3 = add i32 %__rem.0.i.i.3, 99999
  br label %sw.epilog.sink.split.i.i.3

sw.bb.i.i.3:                                      ; preds = %if.end180.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.3 = add i32 %__rem.0.i.i.3, 50000
  br label %sw.epilog.sink.split.i.i.3

sw.epilog.sink.split.i.i.3:                       ; preds = %sw.bb.i.i.3, %sw.bb189.i.i.3
  %sub191.sink.i.i.3 = phi i32 [ %sub191.i.i.3, %sw.bb189.i.i.3 ], [ %add185.i.i.3, %sw.bb.i.i.3 ]
  %div192.i.i.3 = udiv i32 %sub191.sink.i.i.3, 100000
  %conv193.i.i.3 = zext i32 %div192.i.i.3 to i64
  %add194.i.i.3 = add i64 %div.0.i.i.3, %conv193.i.i.3
  br label %pci230_divide_ns.exit.i.3

pci230_divide_ns.exit.i.3:                        ; preds = %sw.epilog.sink.split.i.i.3, %if.end180.i.i.3.pci230_divide_ns.exit.i.3_crit_edge
  %div.1.i.i.3 = phi i64 [ %div.0.i.i.3, %if.end180.i.i.3.pci230_divide_ns.exit.i.3_crit_edge ], [ %add194.i.i.3, %sw.epilog.sink.split.i.i.3 ]
  %20 = tail call i64 @llvm.umin.i64(i64 %div.1.i.i.3, i64 4294967295) #8
  %21 = trunc i64 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %21)
  %cmp.i.3 = icmp ult i32 %21, 65537
  %extract.t16 = trunc i64 %20 to i32
  br i1 %cmp.i.3, label %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.4

pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.4:                                     ; preds = %pci230_divide_ns.exit.i.3
  br i1 %cmp166.i.i, label %if.then170.i.i.4, label %if.else176.i.i.4, !prof !177

if.else176.i.i.4:                                 ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 1000000, i64 %ns) #12, !srcloc !178
  %asmresult.i289.i.i.4 = extractvalue { i64, i64 } %22, 0
  %asmresult1.i.i.i.4 = extractvalue { i64, i64 } %22, 1
  %shr.i.i.i.4 = lshr i64 %asmresult.i289.i.i.4, 32
  %conv.i.i.i.4 = trunc i64 %shr.i.i.i.4 to i32
  br label %if.end180.i.i.4

if.then170.i.i.4:                                 ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %div174.i.i.4 = udiv i32 %conv171.i.i, 1000000
  %23 = mul i32 %div174.i.i.4, 1000000
  %rem172.i.i.4.decomposed = sub i32 %conv171.i.i, %23
  %conv175.i.i.4 = zext i32 %div174.i.i.4 to i64
  br label %if.end180.i.i.4

if.end180.i.i.4:                                  ; preds = %if.then170.i.i.4, %if.else176.i.i.4
  %div.0.i.i.4 = phi i64 [ %conv175.i.i.4, %if.then170.i.i.4 ], [ %asmresult1.i.i.i.4, %if.else176.i.i.4 ]
  %__rem.0.i.i.4 = phi i32 [ %rem172.i.i.4.decomposed, %if.then170.i.i.4 ], [ %conv.i.i.i.4, %if.else176.i.i.4 ]
  %24 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and182.i.i, label %sw.bb.i.i.4 [
    i32 131072, label %sw.bb189.i.i.4
    i32 65536, label %if.end180.i.i.4.pci230_divide_ns.exit.i.4_crit_edge
  ]

if.end180.i.i.4.pci230_divide_ns.exit.i.4_crit_edge: ; preds = %if.end180.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.4

sw.bb189.i.i.4:                                   ; preds = %if.end180.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.4 = add i32 %__rem.0.i.i.4, 999999
  br label %sw.epilog.sink.split.i.i.4

sw.bb.i.i.4:                                      ; preds = %if.end180.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.4 = add i32 %__rem.0.i.i.4, 500000
  br label %sw.epilog.sink.split.i.i.4

sw.epilog.sink.split.i.i.4:                       ; preds = %sw.bb.i.i.4, %sw.bb189.i.i.4
  %sub191.sink.i.i.4 = phi i32 [ %sub191.i.i.4, %sw.bb189.i.i.4 ], [ %add185.i.i.4, %sw.bb.i.i.4 ]
  %div192.i.i.4 = udiv i32 %sub191.sink.i.i.4, 1000000
  %conv193.i.i.4 = zext i32 %div192.i.i.4 to i64
  %add194.i.i.4 = add i64 %div.0.i.i.4, %conv193.i.i.4
  br label %pci230_divide_ns.exit.i.4

pci230_divide_ns.exit.i.4:                        ; preds = %sw.epilog.sink.split.i.i.4, %if.end180.i.i.4.pci230_divide_ns.exit.i.4_crit_edge
  %div.1.i.i.4 = phi i64 [ %div.0.i.i.4, %if.end180.i.i.4.pci230_divide_ns.exit.i.4_crit_edge ], [ %add194.i.i.4, %sw.epilog.sink.split.i.i.4 ]
  %25 = tail call i64 @llvm.umin.i64(i64 %div.1.i.i.4, i64 4294967295) #8
  %extract.t17 = trunc i64 %25 to i32
  br label %pci230_choose_clk_count.exit

pci230_choose_clk_count.exit:                     ; preds = %pci230_divide_ns.exit.i.4, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge
  %.lcssa.off0 = phi i32 [ %extract.t, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge ], [ %extract.t14, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge ], [ %extract.t15, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge ], [ %extract.t16, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge ], [ %extract.t17, %pci230_divide_ns.exit.i.4 ]
  %clk_src.0.i.lcssa = phi i32 [ 1, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge ], [ 2, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge ], [ 3, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge ], [ 4, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge ], [ 5, %pci230_divide_ns.exit.i.4 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %and.i = shl i32 %ct, 3
  %shl.i = and i32 %and.i, 24
  %or.i = or i32 %clk_src.0.i.lcssa, %shl.i
  %conv = trunc i32 %or.i to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add = add i32 %27, 26
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %28 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %.lcssa.off0)
  %cmp = icmp ugt i32 %.lcssa.off0, 65535
  %spec.select = select i1 %cmp, i32 0, i32 %.lcssa.off0
  %29 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_write(ptr noundef %30, i32 noundef %ct, i32 noundef %spec.select) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_inttrig_start(ptr nocapture noundef readonly %dev, ptr noundef %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inttrig, align 4
  tail call fastcc void @pci230_ai_start(ptr noundef %dev, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci230_ai_start(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %ai_cmd_started = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %ai_cmd_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ai_cmd_started, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %ai_cmd_started, align 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %ier = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ier, align 2
  %7 = or i8 %6, 4
  store i8 %7, ptr %ier, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ier, align 2
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add = add i32 %11, 30
  %and = and i32 %add, 1048575
  %add14 = or i32 %and, -18874368
  %12 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %9) #8, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #8
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %13 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %convert_src, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %14, label %entry.sw.epilog_crit_edge [
    i32 16, label %sw.bb
    i32 64, label %sw.bb17
    i32 128, label %sw.bb31
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %16 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %convert_arg, align 4
  %and18 = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.else24, label %if.then

if.then:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp21 = icmp sgt i32 %17, -1
  %. = select i1 %cmp21, i16 2, i16 3
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  %.151 = select i1 %tobool26.not, i16 3, i16 2
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %if.else24, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  %conv.0 = phi i16 [ 6, %sw.bb31 ], [ 6, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ], [ %., %if.then ], [ %.151, %if.else24 ]
  %adccon = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %adccon to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %adccon, align 2
  %20 = and i16 %19, -8
  %or35 = or i16 %20, %conv.0
  store i16 %or35, ptr %adccon, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %adccon to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %adccon, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daqio, align 4
  %add42 = add i32 %25, 10
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %26 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #8, !srcloc !133
  %27 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %28)
  %cmp47 = icmp eq i32 %28, 128
  br i1 %cmp47, label %if.then49, label %sw.epilog.if.end50_crit_edge

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then49:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pci230_ai_inttrig_convert, ptr %inttrig, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %sw.epilog.if.end50_crit_edge
  tail call fastcc void @pci230_ai_update_fifo_trigger_level(ptr noundef %dev, ptr noundef %s)
  %30 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %convert_src, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %31, label %if.then118 [
    i32 16, label %if.then54
    i32 128, label %if.end50.if.end120_crit_edge
  ]

if.end50.if.end120_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then54:                                        ; preds = %if.end50
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %33 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp55.not = icmp eq i32 %34, 4
  %zgat.0 = select i1 %cmp55.not, i8 16, i8 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add68 = add i32 %36, 29
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %37 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %zgat.0) #8, !srcloc !138
  %38 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_begin_src, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %39, label %if.then54.do.body90_crit_edge [
    i32 4, label %if.then54.if.end120_crit_edge
    i32 64, label %sw.bb80
    i32 16, label %sw.bb83
  ]

if.then54.if.end120_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then54.do.body90_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

sw.bb80:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

sw.bb83:                                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90

do.body90:                                        ; preds = %sw.bb83, %sw.bb80, %if.then54.do.body90_crit_edge
  %zgat.1.in = phi i8 [ 3, %sw.bb83 ], [ 2, %sw.bb80 ], [ 0, %if.then54.do.body90_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add94 = add i32 %42, 29
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %43 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %zgat.1.in) #8, !srcloc !138
  %44 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_begin_src, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %45, label %do.body90.if.end120_crit_edge [
    i32 16, label %sw.bb99
    i32 128, label %sw.bb110
  ]

do.body90.if.end120_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

sw.bb99:                                          ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase, align 4
  %add106 = add i32 %48, 29
  %and107 = and i32 %add106, 1048575
  %add108 = or i32 %and107, -18874368
  %49 = inttoptr i32 %add108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 8) #8, !srcloc !138
  br label %if.end120

sw.bb110:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #10
  %inttrig111 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 20
  %50 = ptrtoint ptr %inttrig111 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pci230_ai_inttrig_scan_begin, ptr %inttrig111, align 4
  br label %if.end120

if.then118:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private, align 4
  %res_spinlock.i = getelementptr inbounds %struct.pci230_private, ptr %52, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %res_spinlock.i) #8
  %arrayidx.i = getelementptr %struct.pci230_private, ptr %52, i32 0, i32 12, i32 0
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %and.i = and i8 %54, -5
  store i8 %and.i, ptr %arrayidx.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %res_spinlock.i, i32 noundef %call2.i) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %sw.bb110, %sw.bb99, %do.body90.if.end120_crit_edge, %if.then54.if.end120_crit_edge, %if.end50.if.end120_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_inttrig_convert(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trig_num)
  %tobool.not = icmp eq i32 %trig_num, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %ai_stop_spinlock = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ai_stop_spinlock) #8
  %ai_cmd_started = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ai_cmd_started to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_cmd_started, align 1
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ai_stop_spinlock, i32 noundef %call2) #8
  br label %cleanup

if.end8:                                          ; preds = %do.body1
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pacer, align 4
  %call9 = tail call i32 @comedi_8254_set_mode(ptr noundef %5, i32 noundef 2, i32 noundef 0) #8
  %6 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pacer, align 4
  %call11 = tail call i32 @comedi_8254_set_mode(ptr noundef %7, i32 noundef 2, i32 noundef 2) #8
  %adccon = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %adccon to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %adccon, align 2
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp13.not = icmp eq i16 %10, 0
  br i1 %cmp13.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp16 = icmp eq i16 %12, 0
  br i1 %cmp16, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else, %land.lhs.true.if.end19_crit_edge
  %delayus.0 = phi i32 [ 4, %if.else ], [ 8, %land.lhs.true.if.end19_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ai_stop_spinlock, i32 noundef %call2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %delayus.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ai_inttrig_scan_begin(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trig_num)
  %tobool.not = icmp eq i32 %trig_num, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ai_stop_spinlock = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ai_stop_spinlock) #8
  %ai_cmd_started = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ai_cmd_started to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_cmd_started, align 1
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %do.body1.if.end24_crit_edge, label %if.then6

do.body1.if.end24_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 29
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %6 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #8, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add20 = add i32 %8, 29
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %9 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #8, !srcloc !138
  br label %if.end24

if.end24:                                         ; preds = %if.then6, %do.body1.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ai_stop_spinlock, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end24 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci230_ns_to_single_timer(ptr nocapture noundef %ns, i32 noundef %flags) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns, align 4
  %and182.i.i = and i32 %flags, 196608
  %.frozen = freeze i32 %1
  %div174.i.i = udiv i32 %.frozen, 100
  %2 = mul i32 %div174.i.i, 100
  %rem172.i.i.decomposed = sub i32 %.frozen, %2
  %3 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and182.i.i, label %sw.bb.i.i [
    i32 131072, label %sw.bb189.i.i
    i32 65536, label %entry.pci230_divide_ns.exit.i_crit_edge
  ]

entry.pci230_divide_ns.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i = add nuw nsw i32 %rem172.i.i.decomposed, 50
  br label %sw.epilog.sink.split.i.i

sw.bb189.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i = add nuw nsw i32 %rem172.i.i.decomposed, 99
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb189.i.i, %sw.bb.i.i
  %sub191.sink.i.i = phi i32 [ %sub191.i.i, %sw.bb189.i.i ], [ %add185.i.i, %sw.bb.i.i ]
  %div192.i.i = udiv i32 %sub191.sink.i.i, 100
  %narrow16 = add nuw nsw i32 %div174.i.i, %div192.i.i
  br label %pci230_divide_ns.exit.i

pci230_divide_ns.exit.i:                          ; preds = %sw.epilog.sink.split.i.i, %entry.pci230_divide_ns.exit.i_crit_edge
  %div.1.i.i.in = phi i32 [ %div174.i.i, %entry.pci230_divide_ns.exit.i_crit_edge ], [ %narrow16, %sw.epilog.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.in)
  %cmp.i = icmp ult i32 %div.1.i.i.in, 65537
  br i1 %cmp.i, label %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.1

pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.1:                                     ; preds = %pci230_divide_ns.exit.i
  %.frozen17 = freeze i32 %1
  %div174.i.i.1 = udiv i32 %.frozen17, 1000
  %4 = mul i32 %div174.i.i.1, 1000
  %rem172.i.i.1.decomposed = sub i32 %.frozen17, %4
  %5 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and182.i.i, label %sw.bb.i.i.1 [
    i32 131072, label %sw.bb189.i.i.1
    i32 65536, label %for.cond.i.1.pci230_divide_ns.exit.i.1_crit_edge
  ]

for.cond.i.1.pci230_divide_ns.exit.i.1_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.1

sw.bb189.i.i.1:                                   ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.1 = add nuw nsw i32 %rem172.i.i.1.decomposed, 999
  br label %sw.epilog.sink.split.i.i.1

sw.bb.i.i.1:                                      ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.1 = add nuw nsw i32 %rem172.i.i.1.decomposed, 500
  br label %sw.epilog.sink.split.i.i.1

sw.epilog.sink.split.i.i.1:                       ; preds = %sw.bb.i.i.1, %sw.bb189.i.i.1
  %sub191.sink.i.i.1 = phi i32 [ %sub191.i.i.1, %sw.bb189.i.i.1 ], [ %add185.i.i.1, %sw.bb.i.i.1 ]
  %div192.i.i.1 = udiv i32 %sub191.sink.i.i.1, 1000
  %narrow15 = add nuw nsw i32 %div174.i.i.1, %div192.i.i.1
  br label %pci230_divide_ns.exit.i.1

pci230_divide_ns.exit.i.1:                        ; preds = %sw.epilog.sink.split.i.i.1, %for.cond.i.1.pci230_divide_ns.exit.i.1_crit_edge
  %div.1.i.i.1.in = phi i32 [ %div174.i.i.1, %for.cond.i.1.pci230_divide_ns.exit.i.1_crit_edge ], [ %narrow15, %sw.epilog.sink.split.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.1.in)
  %cmp.i.1 = icmp ult i32 %div.1.i.i.1.in, 65537
  br i1 %cmp.i.1, label %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.2

pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.2:                                     ; preds = %pci230_divide_ns.exit.i.1
  %.frozen18 = freeze i32 %1
  %div174.i.i.2 = udiv i32 %.frozen18, 10000
  %6 = mul i32 %div174.i.i.2, 10000
  %rem172.i.i.2.decomposed = sub i32 %.frozen18, %6
  %7 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and182.i.i, label %sw.bb.i.i.2 [
    i32 131072, label %sw.bb189.i.i.2
    i32 65536, label %for.cond.i.2.pci230_divide_ns.exit.i.2_crit_edge
  ]

for.cond.i.2.pci230_divide_ns.exit.i.2_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.2

sw.bb189.i.i.2:                                   ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.2 = add nuw nsw i32 %rem172.i.i.2.decomposed, 9999
  br label %sw.epilog.sink.split.i.i.2

sw.bb.i.i.2:                                      ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.2 = add nuw nsw i32 %rem172.i.i.2.decomposed, 5000
  br label %sw.epilog.sink.split.i.i.2

sw.epilog.sink.split.i.i.2:                       ; preds = %sw.bb.i.i.2, %sw.bb189.i.i.2
  %sub191.sink.i.i.2 = phi i32 [ %sub191.i.i.2, %sw.bb189.i.i.2 ], [ %add185.i.i.2, %sw.bb.i.i.2 ]
  %div192.i.i.2 = udiv i32 %sub191.sink.i.i.2, 10000
  %narrow14 = add nuw nsw i32 %div174.i.i.2, %div192.i.i.2
  br label %pci230_divide_ns.exit.i.2

pci230_divide_ns.exit.i.2:                        ; preds = %sw.epilog.sink.split.i.i.2, %for.cond.i.2.pci230_divide_ns.exit.i.2_crit_edge
  %div.1.i.i.2.in = phi i32 [ %div174.i.i.2, %for.cond.i.2.pci230_divide_ns.exit.i.2_crit_edge ], [ %narrow14, %sw.epilog.sink.split.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.2.in)
  %cmp.i.2 = icmp ult i32 %div.1.i.i.2.in, 65537
  br i1 %cmp.i.2, label %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.3

pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.3:                                     ; preds = %pci230_divide_ns.exit.i.2
  %.frozen19 = freeze i32 %1
  %div174.i.i.3 = udiv i32 %.frozen19, 100000
  %8 = mul i32 %div174.i.i.3, 100000
  %rem172.i.i.3.decomposed = sub i32 %.frozen19, %8
  %9 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and182.i.i, label %sw.bb.i.i.3 [
    i32 131072, label %sw.bb189.i.i.3
    i32 65536, label %for.cond.i.3.pci230_divide_ns.exit.i.3_crit_edge
  ]

for.cond.i.3.pci230_divide_ns.exit.i.3_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_divide_ns.exit.i.3

sw.bb189.i.i.3:                                   ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.3 = add nuw nsw i32 %rem172.i.i.3.decomposed, 99999
  br label %sw.epilog.sink.split.i.i.3

sw.bb.i.i.3:                                      ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.3 = add nuw nsw i32 %rem172.i.i.3.decomposed, 50000
  br label %sw.epilog.sink.split.i.i.3

sw.epilog.sink.split.i.i.3:                       ; preds = %sw.bb.i.i.3, %sw.bb189.i.i.3
  %sub191.sink.i.i.3 = phi i32 [ %sub191.i.i.3, %sw.bb189.i.i.3 ], [ %add185.i.i.3, %sw.bb.i.i.3 ]
  %div192.i.i.3 = udiv i32 %sub191.sink.i.i.3, 100000
  %narrow13 = add nuw nsw i32 %div174.i.i.3, %div192.i.i.3
  br label %pci230_divide_ns.exit.i.3

pci230_divide_ns.exit.i.3:                        ; preds = %sw.epilog.sink.split.i.i.3, %for.cond.i.3.pci230_divide_ns.exit.i.3_crit_edge
  %div.1.i.i.3.in = phi i32 [ %div174.i.i.3, %for.cond.i.3.pci230_divide_ns.exit.i.3_crit_edge ], [ %narrow13, %sw.epilog.sink.split.i.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %div.1.i.i.3.in)
  %cmp.i.3 = icmp ult i32 %div.1.i.i.3.in, 65537
  br i1 %cmp.i.3, label %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge, label %for.cond.i.4

pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge: ; preds = %pci230_divide_ns.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

for.cond.i.4:                                     ; preds = %pci230_divide_ns.exit.i.3
  %.frozen20 = freeze i32 %1
  %div174.i.i.4 = udiv i32 %.frozen20, 1000000
  %10 = mul i32 %div174.i.i.4, 1000000
  %rem172.i.i.4.decomposed = sub i32 %.frozen20, %10
  %11 = zext i32 %and182.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and182.i.i, label %sw.bb.i.i.4 [
    i32 131072, label %sw.bb189.i.i.4
    i32 65536, label %for.cond.i.4.pci230_choose_clk_count.exit_crit_edge
  ]

for.cond.i.4.pci230_choose_clk_count.exit_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci230_choose_clk_count.exit

sw.bb189.i.i.4:                                   ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %sub191.i.i.4 = add nuw nsw i32 %rem172.i.i.4.decomposed, 999999
  br label %sw.epilog.sink.split.i.i.4

sw.bb.i.i.4:                                      ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %add185.i.i.4 = add nuw nsw i32 %rem172.i.i.4.decomposed, 500000
  br label %sw.epilog.sink.split.i.i.4

sw.epilog.sink.split.i.i.4:                       ; preds = %sw.bb.i.i.4, %sw.bb189.i.i.4
  %sub191.sink.i.i.4 = phi i32 [ %sub191.i.i.4, %sw.bb189.i.i.4 ], [ %add185.i.i.4, %sw.bb.i.i.4 ]
  %div192.i.i.4 = udiv i32 %sub191.sink.i.i.4, 1000000
  %narrow = add nuw nsw i32 %div174.i.i.4, %div192.i.i.4
  br label %pci230_choose_clk_count.exit

pci230_choose_clk_count.exit:                     ; preds = %sw.epilog.sink.split.i.i.4, %for.cond.i.4.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge
  %.lcssa8.off0 = phi i32 [ %div.1.i.i.in, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge ], [ %div.1.i.i.1.in, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge ], [ %div.1.i.i.2.in, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge ], [ %div.1.i.i.3.in, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge ], [ %div174.i.i.4, %for.cond.i.4.pci230_choose_clk_count.exit_crit_edge ], [ %narrow, %sw.epilog.sink.split.i.i.4 ]
  %.lcssa = phi i32 [ 100, %pci230_divide_ns.exit.i.pci230_choose_clk_count.exit_crit_edge ], [ 1000, %pci230_divide_ns.exit.i.1.pci230_choose_clk_count.exit_crit_edge ], [ 10000, %pci230_divide_ns.exit.i.2.pci230_choose_clk_count.exit_crit_edge ], [ 100000, %pci230_divide_ns.exit.i.3.pci230_choose_clk_count.exit_crit_edge ], [ 1000000, %sw.epilog.sink.split.i.i.4 ], [ 1000000, %for.cond.i.4.pci230_choose_clk_count.exit_crit_edge ]
  %mul = mul i32 %.lcssa, %.lcssa8.off0
  %12 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %ns, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci230_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chan, align 4
  %div = sdiv i32 %3, 2
  %sub = add nsw i32 %div, -1
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp280.not = icmp eq i32 %5, 0
  br i1 %cmp280.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %8 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %range_table.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %prev_chan.0288 = phi i32 [ 0, %for.body.lr.ph ], [ %and, %for.inc.for.body_crit_edge ]
  %prev_range.0287 = phi i32 [ 0, %for.body.lr.ph ], [ %and1, %for.inc.for.body_crit_edge ]
  %prev_aref.0286 = phi i32 [ 0, %for.body.lr.ph ], [ %and3, %for.inc.for.body_crit_edge ]
  %prev_bipolar.0.off0285 = phi i1 [ false, %for.body.lr.ph ], [ %cmp.i, %for.inc.for.body_crit_edge ]
  %subseq_len.0284 = phi i32 [ 0, %for.body.lr.ph ], [ %subseq_len.3, %for.inc.for.body_crit_edge ]
  %i.0281 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.0281
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 65535
  %shr = lshr i32 %11, 16
  %and1 = and i32 %shr, 255
  %shr2 = lshr i32 %11, 24
  %and3 = and i32 %shr2, 3
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %9, i32 0, i32 1, i32 %and1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp slt i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and3)
  %cmp4 = icmp ne i32 %and3, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp5.not = icmp ult i32 %and, %sub
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %if.end12, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then11 [label %cleanup185], !srcloc !128

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug239, ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %sub) #8
  br label %cleanup185

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0281)
  %cmp13 = icmp sgt i32 %i.0281, 0
  br i1 %cmp13, label %if.then14, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %prev_chan.0288)
  %cmp15.not = icmp ule i32 %and, %prev_chan.0288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subseq_len.0284)
  %cmp17 = icmp eq i32 %subseq_len.0284, 0
  %or.cond238 = select i1 %cmp15.not, i1 %cmp17, i1 false
  %subseq_len.1 = select i1 %or.cond238, i32 %i.0281, i32 %subseq_len.0284
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subseq_len.1)
  %cmp20.not = icmp eq i32 %subseq_len.1, 0
  br i1 %cmp20.not, label %if.then14.if.end45_crit_edge, label %land.lhs.true21

if.then14.if.end45_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true21:                                  ; preds = %if.then14
  %rem = urem i32 %i.0281, %subseq_len.1
  %arrayidx23 = getelementptr i32, ptr %7, i32 %rem
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp24.not = icmp eq i32 %17, %11
  br i1 %cmp24.not, label %land.lhs.true21.if.end45_crit_edge, label %do.body26

land.lhs.true21.if.end45_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.body26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then40 [label %cleanup185], !srcloc !128

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev41 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %class_dev41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug240, ptr noundef %19, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37) #8
  br label %cleanup185

if.end45:                                         ; preds = %land.lhs.true21.if.end45_crit_edge, %if.then14.if.end45_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %prev_aref.0286)
  %cmp46.not = icmp eq i32 %and3, %prev_aref.0286
  br i1 %cmp46.not, label %if.end67, label %do.body48

do.body48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then62 [label %cleanup185], !srcloc !128

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev63 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug241, ptr noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #8
  br label %cleanup185

if.end67:                                         ; preds = %if.end45
  %22 = xor i1 %prev_bipolar.0.off0285, %cmp.i
  br i1 %22, label %do.body74, label %if.end93

do.body74:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then88 [label %cleanup185], !srcloc !128

if.then88:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev89 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %class_dev89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_dev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug242, ptr noundef %24, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.37) #8
  br label %cleanup185

if.end93:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %prev_aref.0286)
  %cmp94.not = icmp ne i32 %prev_aref.0286, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %prev_range.0287)
  %cmp97.not = icmp ne i32 %and1, %prev_range.0287
  %or.cond239 = select i1 %cmp94.not, i1 %cmp97.not, i1 false
  %xor = xor i32 %and, %prev_chan.0288
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor)
  %cmp101 = icmp ult i32 %xor, 2
  %or.cond240 = select i1 %or.cond239, i1 %cmp101, i1 false
  br i1 %or.cond240, label %do.body104, label %if.end93.for.inc_crit_edge

if.end93.for.inc_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body104:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then118 [label %cleanup185], !srcloc !128

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev119 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev119 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug243, ptr noundef %26, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37) #8
  br label %cleanup185

for.inc:                                          ; preds = %if.end93.for.inc_crit_edge, %if.end12.for.inc_crit_edge
  %subseq_len.3 = phi i32 [ %subseq_len.1, %if.end93.for.inc_crit_edge ], [ %subseq_len.0284, %if.end12.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0281, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subseq_len.3)
  %cmp131 = icmp eq i32 %subseq_len.3, 0
  br i1 %cmp131, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %27

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %27

27:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %28 = phi i32 [ %5, %for.end.thread ], [ %subseq_len.3, %for.end._crit_edge ]
  %rem137 = urem i32 %5, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem137)
  %tobool138.not = icmp eq i32 %rem137, 0
  br i1 %tobool138.not, label %if.end159, label %do.body140

do.body140:                                       ; preds = %27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ai_check_chanlist, %cleanup185)) #8
          to label %if.then154 [label %cleanup185], !srcloc !128

if.then154:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev155 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %29 = ptrtoint ptr %class_dev155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev155, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug244, ptr noundef %30, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37) #8
  br label %cleanup185

if.end159:                                        ; preds = %27
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hwver, align 4
  %conv160 = zext i16 %32 to i32
  %33 = add i16 %32, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %33)
  %34 = icmp ult i16 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp169 = icmp ugt i32 %28, 1
  %or.cond242 = select i1 %34, i1 %cmp169, i1 false
  br i1 %or.cond242, label %land.lhs.true171, label %if.end159.cleanup185_crit_edge

if.end159.cleanup185_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

land.lhs.true171:                                 ; preds = %if.end159
  %chanlist172 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %35 = ptrtoint ptr %chanlist172 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chanlist172, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and174 = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %land.lhs.true171.cleanup185_crit_edge, label %do.end179

land.lhs.true171.cleanup185_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup185

do.end179:                                        ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev180 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %39 = ptrtoint ptr %class_dev180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %class_dev180, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.43, i32 noundef %conv160) #11
  br label %cleanup185

cleanup185:                                       ; preds = %do.end179, %land.lhs.true171.cleanup185_crit_edge, %if.end159.cleanup185_crit_edge, %if.then154, %do.body140, %if.then118, %do.body104, %if.then88, %do.body74, %if.then62, %do.body48, %if.then40, %do.body26, %if.then11, %do.body
  %retval.2 = phi i32 [ -22, %do.end179 ], [ -22, %if.then154 ], [ 0, %land.lhs.true171.cleanup185_crit_edge ], [ 0, %if.end159.cleanup185_crit_edge ], [ -22, %if.then11 ], [ -22, %if.then40 ], [ -22, %if.then62 ], [ -22, %if.then88 ], [ -22, %if.then118 ], [ -22, %do.body ], [ -22, %do.body26 ], [ -22, %do.body48 ], [ -22, %do.body74 ], [ -22, %do.body104 ], [ -22, %do.body140 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_inttrig_start(ptr noundef %dev, ptr noundef %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inttrig, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %7 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %async, align 4
  %ao_cmd_started.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 13
  %9 = ptrtoint ptr %ao_cmd_started.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %ao_cmd_started.i, align 1
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %ao_cmd_started.i, align 1
  %hwver.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 6
  %10 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp.i = icmp ugt i16 %11, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end22.i_crit_edge

if.end.if.end22.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call fastcc zeroext i1 @pci230_handle_ao_fifo(ptr noundef %dev, ptr noundef %s) #8
  %call4.i = tail call i32 @comedi_handle_events(ptr noundef %dev, ptr noundef %s) #8
  br i1 %call.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 4
  %12 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_begin_src.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %13, label %sw.default.i [
    i32 16, label %if.end.i.sw.epilog.i_crit_edge
    i32 64, label %sw.bb6.i
    i32 128, label %sw.bb11.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 5
  %15 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_begin_arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp7.i = icmp sgt i32 %16, -1
  %..i = select i1 %cmp7.i, i16 8, i16 12
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb11.i, %sw.bb6.i, %if.end.i.sw.epilog.i_crit_edge
  %scantrig.0.i = phi i16 [ 0, %sw.default.i ], [ 4, %sw.bb11.i ], [ 20, %if.end.i.sw.epilog.i_crit_edge ], [ %..i, %sw.bb6.i ]
  %daccon.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 8
  %17 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %daccon.i, align 4
  %19 = and i16 %18, -29
  %or.i = or i16 %19, %scantrig.0.i
  store i16 %or.i, ptr %daccon.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %daccon.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %daccon.i, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #8
  %daqio.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 4
  %23 = ptrtoint ptr %daqio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %daqio.i, align 4
  %and18.i = and i32 %24, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %25 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #8, !srcloc !133
  br label %if.end22.i

if.end22.i:                                       ; preds = %sw.epilog.i, %if.end.if.end22.i_crit_edge
  %scan_begin_src23.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 17, i32 4
  %26 = ptrtoint ptr %scan_begin_src23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_begin_src23.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %27, label %if.end22.i.sw.epilog64.i_crit_edge [
    i32 16, label %sw.bb24.i
    i32 128, label %sw.bb63.i
  ]

if.end22.i.sw.epilog64.i_crit_edge:               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog64.i

sw.bb24.i:                                        ; preds = %if.end22.i
  %29 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp27.i = icmp ult i16 %30, 2
  br i1 %cmp27.i, label %do.body31.i, label %sw.bb24.i.do.body53.i_crit_edge

sw.bb24.i.do.body53.i_crit_edge:                  ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53.i

do.body31.i:                                      ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %ier.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 11
  %31 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ier.i, align 2
  %33 = or i8 %32, 32
  store i8 %33, ptr %ier.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ier.i, align 2
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add47.i = add i32 %37, 30
  %and48.i = and i32 %add47.i, 1048575
  %add49.i = or i32 %and48.i, -18874368
  %38 = inttoptr i32 %add49.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %35) #8, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call35.i) #8
  br label %do.body53.i

do.body53.i:                                      ; preds = %do.body31.i, %sw.bb24.i.do.body53.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %iobase58.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %39 = ptrtoint ptr %iobase58.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase58.i, align 4
  %add59.i = add i32 %40, 29
  %and60.i = and i32 %add59.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %41 = inttoptr i32 %add61.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 8) #8, !srcloc !138
  br label %sw.epilog64.i

sw.bb63.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %inttrig.i = getelementptr inbounds %struct.comedi_async, ptr %8, i32 0, i32 20
  %42 = ptrtoint ptr %inttrig.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @pci230_ao_inttrig_scan_begin, ptr %inttrig.i, align 4
  br label %sw.epilog64.i

sw.epilog64.i:                                    ; preds = %sw.bb63.i, %do.body53.i, %if.end22.i.sw.epilog64.i_crit_edge
  %43 = ptrtoint ptr %hwver.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hwver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp67.i = icmp ugt i16 %44, 1
  br i1 %cmp67.i, label %do.body71.i, label %sw.epilog64.i.cleanup_crit_edge

sw.epilog64.i.cleanup_crit_edge:                  ; preds = %sw.epilog64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body71.i:                                      ; preds = %sw.epilog64.i
  call void @__sanitizer_cov_trace_pc() #10
  %call79.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %ier84.i = getelementptr inbounds %struct.pci230_private, ptr %6, i32 0, i32 11
  %45 = ptrtoint ptr %ier84.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ier84.i, align 2
  %47 = or i8 %46, 16
  store i8 %47, ptr %ier84.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %ier84.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ier84.i, align 2
  %iobase92.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %50 = ptrtoint ptr %iobase92.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase92.i, align 4
  %add93.i = add i32 %51, 30
  %and94.i = and i32 %add93.i, 1048575
  %add95.i = or i32 %and94.i, -18874368
  %52 = inttoptr i32 %add95.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %49) #8, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call79.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body71.i, %sw.epilog64.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ], [ 1, %sw.epilog64.i.cleanup_crit_edge ], [ 1, %do.body71.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci230_ao_inttrig_scan_begin(ptr noundef %dev, ptr noundef %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trig_num)
  %tobool.not = icmp eq i32 %trig_num, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %ao_stop_spinlock = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ao_stop_spinlock) #8
  %ao_cmd_started = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ao_cmd_started to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ao_cmd_started, align 1
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_stop_spinlock, i32 noundef %call2) #8
  br label %cleanup

if.end8:                                          ; preds = %do.body1
  %hwver = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hwver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hwver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp10 = icmp ult i16 %5, 2
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_stop_spinlock, i32 noundef %call2) #8
  tail call fastcc void @pci230_handle_ao_nofifo(ptr noundef %dev, ptr noundef %s)
  %call14 = tail call i32 @comedi_handle_events(ptr noundef %dev, ptr noundef %s) #8
  br label %if.end20

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %daqio = getelementptr inbounds %struct.pci230_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %daqio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daqio, align 4
  %add = add i32 %7, 2
  %and = and i32 %add, 1048575
  %add15 = or i32 %and, -18874368
  %8 = inttoptr i32 %add15 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #8, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ao_stop_spinlock, i32 noundef %call2) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1717984) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 1, %if.then6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci230_ao_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp ugt i32 %5, 1
  br i1 %cmp9, label %for.body.lr.ph, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %3, 65535
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup40_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %prev_chan.011 = phi i32 [ %and, %for.body.lr.ph ], [ %and6, %for.cond.for.body_crit_edge ]
  %i.010 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %7, i32 %i.010
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %prev_chan.011)
  %cmp11 = icmp ult i32 %and6, %prev_chan.011
  br i1 %cmp11, label %do.body, label %if.end16

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ao_check_chanlist, %cleanup40)) #8
          to label %if.then15 [label %cleanup40], !srcloc !128

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %11, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45) #8
  br label %cleanup40

if.end16:                                         ; preds = %for.body
  %shr91 = xor i32 %9, %3
  %12 = and i32 %shr91, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %for.cond, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci230_ao_check_chanlist, %cleanup40)) #8
          to label %if.then33 [label %cleanup40], !srcloc !128

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug238, ptr noundef %14, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #8
  br label %cleanup40

cleanup40:                                        ; preds = %if.then33, %do.body19, %if.then15, %do.body, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %if.then15 ], [ -22, %if.then33 ], [ -22, %do.body ], [ -22, %do.body19 ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amplc_pci230_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @amplc_pci230_driver, i32 noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_amplc_pci230__246_2569_amplc_pci230_driver_init6, !1, !"__initcall__kmod_amplc_pci230__246_2569_amplc_pci230_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2569, i32 1}
!2 = !{ptr @__exitcall_amplc_pci230_driver_exit, !1, !"__exitcall_amplc_pci230_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author247, !4, !"__UNIQUE_ID_author247", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2571, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2572, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2573, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2543, i32 17}
!12 = !{ptr @amplc_pci230_driver, !13, !"amplc_pci230_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2542, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2377, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pci230_auto_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pci230_auto_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pci230_auto_attach.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2384, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pci230_auto_attach.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2385, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pci230_auto_attach.__key.9, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2386, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pci230_auto_attach.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2387, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2391, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pci230_auto_attach._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pci230_auto_attach._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2408, i32 2}
!41 = !{ptr @pci230_auto_attach.__UNIQUE_ID_ddebug245, !40, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2423, i32 4}
!44 = !{ptr @pci230_auto_attach._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pci230_auto_attach._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 450, i32 12}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 458, i32 12}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 464, i32 12}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 471, i32 12}
!54 = !{ptr @pci230_boards, !55, !"pci230_boards", i1 false, i1 false}
!55 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 448, i32 34}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1111, i32 4}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pci230_handle_ao_fifo._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pci230_handle_ao_fifo._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1121, i32 4}
!63 = !{ptr @pci230_handle_ao_fifo._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pci230_handle_ao_fifo._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pci230_handle_ao_fifo._entry.30, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1166, i32 4}
!67 = !{ptr @pci230_handle_ao_fifo._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2037, i32 5}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pci230_handle_ai._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @pci230_handle_ai._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @pci230_ai_range, !74, !"pci230_ai_range", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 508, i32 35}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 738, i32 4}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pci230_ai_insn_read.__UNIQUE_ID_ddebug236, !76, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!79 = !{ptr @pci230_ai_gain, !80, !"pci230_ai_gain", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 521, i32 28}
!81 = !{ptr @pci230_timebase, !82, !"pci230_timebase", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 499, i32 27}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1422, i32 4}
!85 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug239, !84, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1438, i32 5}
!88 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug240, !87, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1445, i32 5}
!91 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug241, !90, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1452, i32 5}
!94 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug242, !93, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1460, i32 5}
!97 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug243, !96, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1476, i32 3}
!100 = !{ptr @pci230_ai_check_chanlist.__UNIQUE_ID_ddebug244, !99, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 1494, i32 4}
!103 = !{ptr @pci230_ai_check_chanlist._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @pci230_ai_check_chanlist._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @pci230_ao_range, !106, !"pci230_ao_range", i1 false, i1 false}
!106 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 524, i32 35}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 860, i32 4}
!109 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug237, !108, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 867, i32 4}
!113 = !{ptr @pci230_ao_check_chanlist.__UNIQUE_ID_ddebug238, !112, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!114 = !{ptr @amplc_pci230_pci_driver, !115, !"amplc_pci230_pci_driver", i1 false, i1 false}
!115 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2563, i32 26}
!116 = !{ptr @amplc_pci230_pci_table, !117, !"amplc_pci230_pci_table", i1 false, i1 false}
!117 = !{!"../drivers/comedi/drivers/amplc_pci230.c", i32 2556, i32 35}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2149029598, i64 2149029603, i64 2149029616, i64 2149029660, i64 2149029694, i64 2149029715}
!129 = !{i64 4699431}
!130 = !{i64 2154699682}
!131 = !{i64 2154700729}
!132 = !{i64 2154703073}
!133 = !{i64 4699231}
!134 = !{i64 2154703890}
!135 = !{i64 2154704522}
!136 = !{i64 2154705018}
!137 = !{i64 2154705489}
!138 = !{i64 4699654}
!139 = !{i64 2154706094}
!140 = !{i64 2154706640}
!141 = !{i64 2154707275}
!142 = !{i64 4700049}
!143 = !{i64 2154689247}
!144 = !{i64 2154689866}
!145 = !{!"auto-init"}
!146 = !{i64 2154682458}
!147 = !{i64 2154684963}
!148 = !{i64 2154612733}
!149 = !{i64 2154690953}
!150 = !{i64 2154624729}
!151 = !{i64 2154625231}
!152 = !{i64 2154625857}
!153 = !{i64 2154685649}
!154 = !{i64 2154686151}
!155 = !{i64 2154686861}
!156 = !{i64 2154687535}
!157 = !{i64 2154688066}
!158 = !{i64 2154688431}
!159 = !{i64 2154688807}
!160 = !{i32 0, i32 33}
!161 = !{i64 2154677886}
!162 = !{i64 2154678519}
!163 = !{i64 2154626481}
!164 = !{i64 2154613056}
!165 = !{i64 2154647324}
!166 = !{i64 2154648153}
!167 = !{i64 2154648808}
!168 = !{i64 2154633914}
!169 = !{i64 2154634581}
!170 = !{i64 2154635705}
!171 = !{i64 2154613661}
!172 = !{i64 2154639784}
!173 = !{i64 2154640732}
!174 = !{i64 2154669213}
!175 = !{i64 2154669838}
!176 = !{i64 2154621296}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2148262645, i64 2148262925, i64 2148263259, i64 2148263593}
!179 = !{i64 2154620470}
!180 = !{i64 2154679533}
!181 = !{i64 2154680310}
!182 = !{i64 2154680821}
!183 = !{i64 2154681225}
!184 = !{i64 2154681590}
!185 = !{i64 2154671742}
!186 = !{i64 2154672096}
!187 = !{i64 2154644579}
!188 = !{i64 2154645542}
!189 = !{i64 2154645916}
!190 = !{i64 2154646757}
!191 = !{i64 2154643472}
