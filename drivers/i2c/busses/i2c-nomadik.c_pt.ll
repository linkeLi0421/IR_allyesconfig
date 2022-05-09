; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-nomadik.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-nomadik.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_vendor_data = type { i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.nmk_i2c_dev = type { ptr, ptr, %struct.i2c_adapter, i32, ptr, ptr, %struct.i2c_nmk_client, i32, i8, i8, i32, i32, i32, %struct.completion, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_nmk_client = type { i16, i32, ptr, i32, i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@nmk_i2c_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_pm, ptr null, ptr null }, ptr @nmk_i2c_probe, ptr @nmk_i2c_remove, ptr null, ptr @nmk_i2c_ids }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_i2c_nomadik__290_1120_nmk_i2c_init4 = internal global ptr @nmk_i2c_init, section ".initcall4.init", align 4
@__exitcall_nmk_i2c_exit = internal global ptr @nmk_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [32 x i8] c"i2c_nomadik.author=Sachin Verma\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [36 x i8] c"i2c_nomadik.author=Srinidhi KASAGAR\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [49 x i8] c"i2c_nomadik.description=Nomadik/Ux500 I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [48 x i8] c"i2c_nomadik.file=drivers/i2c/busses/i2c-nomadik\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"i2c_nomadik.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nmk-i2c\00", [24 x i8] zeroinitializer }, align 32
@nmk_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr @nmk_i2c_suspend_late, ptr @nmk_i2c_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_i2c_runtime_suspend, ptr @nmk_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@nmk_i2c_ids = internal constant { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 1572900, i32 16777215, ptr @vendor_stn8815 }, %struct.amba_id { i32 3670052, i32 16777215, ptr @vendor_db8500 }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@nmk_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 914, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't prepare_enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nmk_i2c_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-nomadik.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nmk_i2c_runtime_resume._entry_ptr = internal global ptr @nmk_i2c_runtime_resume._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@flush_i2c_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"flushing operation timed out giving up after %d attempts\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flush_i2c_fifo\00", [17 x i8] zeroinitializer }, align 32
@flush_i2c_fifo._entry_ptr = internal global ptr @flush_i2c_fifo._entry, section ".printk_index", align 4
@nmk_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate memory\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nmk_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr = internal global ptr @nmk_i2c_probe._entry, section ".printk_index", align 4
@nmk_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 985, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"requested TX FIFO threshold %u, adjusted down to %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.13 = internal global ptr @nmk_i2c_probe._entry.10, section ".printk_index", align 4
@nmk_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 991, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"requested RX FIFO threshold %u, adjusted down to %u\0A\00", [43 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.16 = internal global ptr @nmk_i2c_probe._entry.14, section ".printk_index", align 4
@nmk_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.3, i32 1008, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot claim the irq %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.19 = internal global ptr @nmk_i2c_probe._entry.17, section ".printk_index", align 4
@nmk_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.3, i32 1014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get i2c clock\0A\00", [39 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.22 = internal global ptr @nmk_i2c_probe._entry.20, section ".printk_index", align 4
@nmk_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 1021, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.24 = internal global ptr @nmk_i2c_probe._entry.23, section ".printk_index", align 4
@nmk_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @nmk_i2c_xfer, ptr null, ptr null, ptr null, ptr @nmk_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Nomadik I2C at %pR\00", [45 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.3, i32 1041, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"initialize %s on virtual base %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nmk_i2c_probe._entry_ptr.29 = internal global ptr @nmk_i2c_probe._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@i2c_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%lu bytes still remain to be xfered\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@i2c_irq_handler._entry_ptr = internal global ptr @i2c_irq_handler._entry, section ".printk_index", align 4
@i2c_irq_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx Fifo Over run\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_irq_handler._entry_ptr.35 = internal global ptr @i2c_irq_handler._entry.33, section ".printk_index", align 4
@i2c_irq_handler._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unhandled Interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_irq_handler._entry_ptr.38 = internal global ptr @i2c_irq_handler._entry.36, section ".printk_index", align 4
@i2c_irq_handler._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spurious Interrupt..\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_irq_handler._entry_ptr.41 = internal global ptr @i2c_irq_handler._entry.39, section ".printk_index", align 4
@setup_i2c_controller.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_nomadik\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setup_i2c_controller\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calculated SLSU = %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@setup_i2c_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"do not support this mode defaulting to std. mode\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_i2c_controller._entry_ptr = internal global ptr @setup_i2c_controller._entry, section ".printk_index", align 4
@nmk_i2c_xfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nmk_i2c_xfer_one\00", [47 x i8] zeroinitializer }, align 32
@nmk_i2c_xfer_one._entry_ptr = internal global ptr @nmk_i2c_xfer_one._entry, section ".printk_index", align 4
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown reason\00", [17 x i8] zeroinitializer }, align 32
@abort_causes = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], [36 x i8] zeroinitializer }, align 32
@read_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"read from slave 0x%x timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_i2c\00", [23 x i8] zeroinitializer }, align 32
@read_i2c._entry_ptr = internal global ptr @read_i2c._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@write_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write to slave 0x%x timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_i2c\00", [22 x i8] zeroinitializer }, align 32
@write_i2c._entry_ptr = internal global ptr @write_i2c._entry, section ".printk_index", align 4
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no ack received after address transmission\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no ack received during data phase\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ack received after xmission of master code\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"master lost arbitration\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"slave restarts\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slave reset\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"overflow, maxsize is 2047 bytes\00", [32 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@vendor_stn8815 = internal global { %struct.i2c_vendor_data, [24 x i8] } { %struct.i2c_vendor_data { i8 0, i32 16 }, [24 x i8] zeroinitializer }, align 32
@vendor_db8500 = internal global { %struct.i2c_vendor_data, [24 x i8] } { %struct.i2c_vendor_data { i8 1, i32 32 }, [24 x i8] zeroinitializer }, align 32
@switch.table.setup_i2c_controller = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 99, i32 9, i32 99], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 16777216, i64 33554432, i64 268435456]
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"nmk_i2c_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1099, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1102, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"nmk_i2c_pm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 930, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"nmk_i2c_ids\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1083, i32 29 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 914, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 239, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 975, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 984, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 990, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1008, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1014, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1021, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"nmk_i2c_algo\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 942, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1035, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1039, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 951, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 809, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 853, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 866, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 869, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 391, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 421, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 600, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"abort_causes\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 187, i32 20 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 481, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 87, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 561, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 188, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 189, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 190, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 191, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 192, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 193, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 194, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"vendor_stn8815\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1073, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant [14 x i8] c"vendor_db8500\00", align 1
@___asan_gen_.263 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-nomadik.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1078, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant [34 x i8] c"switch.table.setup_i2c_controller\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_nmk_i2c_exit, ptr @__initcall__kmod_i2c_nomadik__290_1120_nmk_i2c_init4, ptr @flush_i2c_fifo._entry, ptr @flush_i2c_fifo._entry_ptr, ptr @i2c_irq_handler._entry, ptr @i2c_irq_handler._entry.33, ptr @i2c_irq_handler._entry.36, ptr @i2c_irq_handler._entry.39, ptr @i2c_irq_handler._entry_ptr, ptr @i2c_irq_handler._entry_ptr.35, ptr @i2c_irq_handler._entry_ptr.38, ptr @i2c_irq_handler._entry_ptr.41, ptr @nmk_i2c_exit, ptr @nmk_i2c_probe._entry, ptr @nmk_i2c_probe._entry.10, ptr @nmk_i2c_probe._entry.14, ptr @nmk_i2c_probe._entry.17, ptr @nmk_i2c_probe._entry.20, ptr @nmk_i2c_probe._entry.23, ptr @nmk_i2c_probe._entry.26, ptr @nmk_i2c_probe._entry_ptr, ptr @nmk_i2c_probe._entry_ptr.13, ptr @nmk_i2c_probe._entry_ptr.16, ptr @nmk_i2c_probe._entry_ptr.19, ptr @nmk_i2c_probe._entry_ptr.22, ptr @nmk_i2c_probe._entry_ptr.24, ptr @nmk_i2c_probe._entry_ptr.29, ptr @nmk_i2c_runtime_resume._entry, ptr @nmk_i2c_runtime_resume._entry_ptr, ptr @nmk_i2c_xfer_one._entry, ptr @nmk_i2c_xfer_one._entry_ptr, ptr @read_i2c._entry, ptr @read_i2c._entry_ptr, ptr @setup_i2c_controller._entry, ptr @setup_i2c_controller._entry_ptr, ptr @write_i2c._entry, ptr @write_i2c._entry_ptr, ptr @nmk_i2c_driver, ptr @.str, ptr @nmk_i2c_pm, ptr @nmk_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @nmk_i2c_algo, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @abort_causes, ptr @.str.49, ptr @.str.50, ptr @init_completion.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @vendor_stn8815, ptr @vendor_db8500, ptr @switch.table.setup_i2c_controller], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_i2c_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_irq_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_irq_handler._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_irq_handler._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_i2c_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmk_i2c_xfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_causes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_stn8815 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_db8500 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_i2c_controller to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nmk_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amba_driver_unregister(ptr noundef nonnull @nmk_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @nmk_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_probe(ptr noundef %adev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %fifodepth = getelementptr inbounds %struct.i2c_vendor_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fifodepth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifodepth, align 4
  %div165 = lshr i32 %5, 1
  %sub = add nsw i32 %div165, -1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 1480, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call.i, align 8
  %adev5 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %adev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adev, ptr %adev5, align 4
  %clk_freq.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef %clk_freq.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i167, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100000, ptr %clk_freq.i, align 8
  br label %nmk_i2c_of_probe.exit

if.end.i167:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i = load i32, ptr %clk_freq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %.pr.i)
  %cmp.i166 = icmp ugt i32 %.pr.i, 100000
  %spec.select.i = zext i1 %cmp.i166 to i32
  br label %nmk_i2c_of_probe.exit

nmk_i2c_of_probe.exit:                            ; preds = %if.end.i167, %if.end.thread.i
  %.sink.i = phi i32 [ 0, %if.end.thread.i ], [ %spec.select.i, %if.end.i167 ]
  %sm4.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %sm4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %sm4.i, align 4
  %tft.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %tft.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tft.i, align 4
  %rft.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %rft.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %rft.i, align 1
  %timeout.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 200, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %do.end10, label %nmk_i2c_of_probe.exit.if.end16_crit_edge

nmk_i2c_of_probe.exit.if.end16_crit_edge:         ; preds = %nmk_i2c_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end10:                                         ; preds = %nmk_i2c_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %adev, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 0) #11
  %14 = ptrtoint ptr %tft.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tft.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end10, %nmk_i2c_of_probe.exit.if.end16_crit_edge
  %15 = ptrtoint ptr %rft.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rft.i, align 1
  %conv17 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv17)
  %cmp18 = icmp ult i32 %sub, %conv17
  br i1 %cmp18, label %do.end23, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %adev, ptr noundef nonnull @.str.15, i32 noundef %conv17, i32 noundef %sub) #11
  %conv27 = trunc i32 %sub to i8
  %17 = ptrtoint ptr %rft.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv27, ptr %rft.i, align 1
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end16.if.end29_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %20
  %add.i = add i32 %sub.i, %22
  %call34 = tail call ptr @devm_ioremap(ptr noundef %adev, i32 noundef %20, i32 noundef %add.i) #8
  %virtbase = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %virtbase to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %virtbase, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end29.cleanup_crit_edge, label %if.end38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 8
  %irq39 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %irq39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq39, align 8
  %call.i168 = tail call i32 @devm_request_threaded_irq(ptr noundef %adev, i32 noundef %25, ptr noundef nonnull @i2c_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool43.not = icmp eq i32 %call.i168, 0
  br i1 %tobool43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %irq39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.18, i32 noundef %28) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %call52 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call52, ptr %clk, align 8
  %cmp.i169 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.21) #11
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 8
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %call64 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end71:                                         ; preds = %if.end62
  %call72 = tail call fastcc i32 @init_hw(ptr noundef nonnull %call.i)
  %adap73 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2
  %of_node75 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %33 = ptrtoint ptr %of_node75 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %of_node75, align 8
  %parent = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %adev, ptr %parent, align 8
  %35 = ptrtoint ptr %adap73 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %adap73, align 8
  %class = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 256, ptr %class, align 4
  %algo = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nmk_i2c_algo, ptr %algo, align 8
  %38 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout.i, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %39) #8
  %timeout79 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %timeout79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call2.i, ptr %timeout79, align 4
  %name = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 12
  %call81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.25, ptr noundef %res)
  %driver_data.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %42 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virtbase, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.27, ptr noundef %name, ptr noundef %43) #11
  %call89 = tail call i32 @i2c_add_adapter(ptr noundef %adap73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %err_no_adap

if.end92:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %call.i170 = tail call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #8
  br label %cleanup

err_no_adap:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %45) #8
  tail call void @clk_unprepare(ptr noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %err_no_adap, %if.end92, %do.end69, %do.end58, %do.end47, %if.end29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end92 ], [ %call.i168, %do.end47 ], [ %32, %do.end58 ], [ %call64, %do.end69 ], [ %call89, %err_no_adap ], [ -12, %do.end ], [ -12, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmk_i2c_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %virtbase.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtbase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147418112) #8, !srcloc !145
  %timeout1.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 2, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout1.i, align 4
  %add.i = add i32 %6, %4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %while.body.i, label %for.inc.i

while.body.i:                                     ; preds = %while.cond.i
  %8 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtbase.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %11 = and i32 %10, -2147418112
  %cmp6.i = icmp eq i32 %11, 0
  br i1 %cmp6.i, label %while.body.i.flush_i2c_fifo.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.flush_i2c_fifo.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_i2c_fifo.exit

for.inc.i:                                        ; preds = %while.cond.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %do.end9.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end9.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %adev.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef 10) #11
  br label %flush_i2c_fifo.exit

flush_i2c_fifo.exit:                              ; preds = %do.end9.i, %while.body.i.flush_i2c_fifo.exit_crit_edge
  %res1 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 2130714387) #8, !srcloc !145
  %18 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtbase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %21 = and i32 %20, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #8, !srcloc !145
  %clk = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  %24 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %res1, align 4
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %sub.i15 = sub i32 1, %25
  %add.i16 = add i32 %sub.i15, %27
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %25, i32 noundef %add.i16) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_suspend_late(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_resume_early(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %call2 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  %call4 = tail call fastcc i32 @init_hw(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %call8 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call4, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_hw(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %virtbase.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtbase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -2147418112) #8, !srcloc !145
  %timeout1.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 2, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.016.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout1.i, align 4
  %add.i = add i32 %4, %2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp2.i, label %while.body.i, label %for.inc.i

while.body.i:                                     ; preds = %while.cond.i
  %6 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %9 = and i32 %8, -2147418112
  %cmp6.i = icmp eq i32 %9, 0
  br i1 %cmp6.i, label %if.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

for.inc.i:                                        ; preds = %while.cond.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %flush_i2c_fifo.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

flush_i2c_fifo.exit:                              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %adev.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %adev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 10) #11
  br label %exit

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virtbase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %virtbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virtbase.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %19, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 2130714387) #8, !srcloc !145
  %operation = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 255, ptr %operation, align 4
  br label %exit

exit:                                             ; preds = %if.end, %flush_i2c_fifo.exit
  %retval.0.i11 = phi i32 [ -110, %flush_i2c_fifo.exit ], [ 0, %if.end ]
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_irq_handler(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virtbase = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !146
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %4 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virtbase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !146
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %8 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtbase, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !146
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #8, !range !155
  %shl = shl nuw i32 1, %12
  %13 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %do.end149 [
    i32 2, label %sw.bb
    i32 32, label %for.cond.preheader
    i32 64, label %for.cond41.preheader
    i32 524288, label %entry.sw.bb65_crit_edge
    i32 268435456, label %entry.sw.bb65_crit_edge221
    i32 16777216, label %sw.bb109
    i32 33554432, label %sw.bb115
    i32 8, label %sw.bb132
    i32 1, label %entry.do.end144_crit_edge
    i32 4, label %entry.do.end144_crit_edge222
    i32 16, label %entry.do.end144_crit_edge223
    i32 65536, label %entry.do.end144_crit_edge224
    i32 131072, label %entry.do.end144_crit_edge225
    i32 262144, label %entry.do.end144_crit_edge226
    i32 1048576, label %entry.do.end144_crit_edge227
  ]

entry.do.end144_crit_edge227:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge226:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge225:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge224:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge223:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge222:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.do.end144_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

entry.sw.bb65_crit_edge221:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65

entry.sw.bb65_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65

for.cond41.preheader:                             ; preds = %entry
  %buffer52 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 2
  br label %for.body43

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp25.not219 = icmp eq i32 %6, 0
  br i1 %cmp25.not219, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buffer = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 2
  br label %for.body

sw.bb:                                            ; preds = %entry
  %operation = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %operation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virtbase, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 44
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %19 = and i32 %18, -33554433
  %20 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virtbase, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %19) #8, !srcloc !145
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %sub.i = sub i32 13, %3
  %count1.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp16.i, label %land.rhs.lr.ph.i, label %if.else.fill_tx_fifo.exit_crit_edge

if.else.fill_tx_fifo.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tx_fifo.exit

land.rhs.lr.ph.i:                                 ; preds = %if.else
  %buffer.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 2
  %xfer_bytes.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %count.017.i = phi i32 [ %sub.i, %land.rhs.lr.ph.i ], [ %dec9.i, %do.body.i.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not.i = icmp eq i32 %23, 0
  br i1 %cmp2.not.i, label %land.rhs.i.if.then21_crit_edge, label %do.body.i

land.rhs.i.if.then21_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

do.body.i:                                        ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virtbase, align 4
  %add.ptr.i206 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i206, i8 %27) #8, !srcloc !159
  %30 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %31, i32 1
  store ptr %incdec.ptr.i, ptr %buffer.i, align 4
  %32 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count1.i, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %count1.i, align 4
  %34 = ptrtoint ptr %xfer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xfer_bytes.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %xfer_bytes.i, align 4
  %dec9.i = add nsw i32 %count.017.i, -1
  %cmp.i = icmp sgt i32 %count.017.i, 1
  br i1 %cmp.i, label %do.body.i.land.rhs.i_crit_edge, label %do.body.i.fill_tx_fifo.exit_crit_edge

do.body.i.fill_tx_fifo.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tx_fifo.exit

do.body.i.land.rhs.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

fill_tx_fifo.exit:                                ; preds = %do.body.i.fill_tx_fifo.exit_crit_edge, %if.else.fill_tx_fifo.exit_crit_edge
  %36 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp20 = icmp eq i32 %.pr, 0
  br i1 %cmp20, label %fill_tx_fifo.exit.if.then21_crit_edge, label %fill_tx_fifo.exit.sw.epilog_crit_edge

fill_tx_fifo.exit.sw.epilog_crit_edge:            ; preds = %fill_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

fill_tx_fifo.exit.if.then21_crit_edge:            ; preds = %fill_tx_fifo.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %fill_tx_fifo.exit.if.then21_crit_edge, %land.rhs.i.if.then21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virtbase, align 4
  %add.ptr.i208 = getelementptr i8, ptr %38, i32 44
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %40 = and i32 %39, -33554433
  %41 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virtbase, align 4
  %add.ptr5.i209 = getelementptr i8, ptr %42, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i209, i32 %40) #8, !srcloc !145
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.0220 = phi i32 [ %7, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %43 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtbase, align 4
  %add.ptr29 = getelementptr i8, ptr %44, i32 24
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %46 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %45, ptr %47, align 1
  %49 = load ptr, ptr %buffer, align 4
  %incdec.ptr = getelementptr i8, ptr %49, i32 1
  store ptr %incdec.ptr, ptr %buffer, align 4
  %dec = add i32 %count.0220, -1
  %cmp25.not = icmp eq i32 %dec, 0
  br i1 %cmp25.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count37 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %count37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count37, align 4
  %sub38 = sub i32 %51, %7
  store i32 %sub38, ptr %count37, align 4
  %xfer_bytes = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %xfer_bytes to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xfer_bytes, align 4
  %add = add i32 %53, %7
  store i32 %add, ptr %xfer_bytes, align 4
  br label %sw.epilog

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.cond41.preheader
  %count.1218 = phi i32 [ 15, %for.cond41.preheader ], [ %dec57, %for.body43.for.body43_crit_edge ]
  %54 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virtbase, align 4
  %add.ptr47 = getelementptr i8, ptr %55, i32 24
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %57 = ptrtoint ptr %buffer52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer52, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %58, align 1
  %60 = load ptr, ptr %buffer52, align 4
  %incdec.ptr55 = getelementptr i8, ptr %60, i32 1
  store ptr %incdec.ptr55, ptr %buffer52, align 4
  %dec57 = add nsw i32 %count.1218, -1
  %cmp42.not = icmp eq i32 %dec57, 0
  br i1 %cmp42.not, label %for.end58, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.end58:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  %count60 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %count60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count60, align 4
  %sub61 = add i32 %62, -15
  store i32 %sub61, ptr %count60, align 4
  %xfer_bytes63 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 3
  %63 = ptrtoint ptr %xfer_bytes63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %xfer_bytes63, align 4
  %add64 = add i32 %64, 15
  store i32 %add64, ptr %xfer_bytes63, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry.sw.bb65_crit_edge, %entry.sw.bb65_crit_edge221
  %operation67 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 4
  %65 = ptrtoint ptr %operation67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %operation67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp68 = icmp eq i32 %66, 1
  br i1 %cmp68, label %while.cond.preheader, label %sw.bb65.if.end99_crit_edge

sw.bb65.if.end99_crit_edge:                       ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

while.cond.preheader:                             ; preds = %sw.bb65
  %count78 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %virtbase, align 4
  %add.ptr73216 = getelementptr i8, ptr %68, i32 48
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73216) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %70 = and i32 %69, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not217 = icmp eq i32 %70, 0
  br i1 %tobool.not217, label %while.body.lr.ph, label %while.cond.preheader.if.end99_crit_edge

while.cond.preheader.if.end99_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buffer90 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 2
  %xfer_bytes98 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end81.while.body_crit_edge, %while.body.lr.ph
  %71 = ptrtoint ptr %count78 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp79 = icmp eq i32 %72, 0
  br i1 %cmp79, label %while.body.if.end99_crit_edge, label %if.end81

while.body.if.end99_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end81:                                         ; preds = %while.body
  %73 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %virtbase, align 4
  %add.ptr85 = getelementptr i8, ptr %74, i32 24
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr85) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %76 = ptrtoint ptr %buffer90 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer90, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %75, ptr %77, align 1
  %79 = load ptr, ptr %buffer90, align 4
  %incdec.ptr93 = getelementptr i8, ptr %79, i32 1
  store ptr %incdec.ptr93, ptr %buffer90, align 4
  %80 = ptrtoint ptr %count78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %count78, align 4
  %dec96 = add i32 %81, -1
  store i32 %dec96, ptr %count78, align 4
  %82 = ptrtoint ptr %xfer_bytes98 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xfer_bytes98, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %xfer_bytes98, align 4
  %84 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %virtbase, align 4
  %add.ptr73 = getelementptr i8, ptr %85, i32 48
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  %87 = and i32 %86, 268435456
  %tobool.not = icmp eq i32 %87, 0
  br i1 %tobool.not, label %if.end81.while.body_crit_edge, label %if.end81.if.end99_crit_edge

if.end81.if.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end81.while.body_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end99:                                         ; preds = %if.end81.if.end99_crit_edge, %while.body.if.end99_crit_edge, %while.cond.preheader.if.end99_crit_edge, %sw.bb65.if.end99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %virtbase, align 4
  %add.ptr.i211 = getelementptr i8, ptr %89, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %virtbase, align 4
  %add.ptr.i213 = getelementptr i8, ptr %91, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 2130714387) #8, !srcloc !145
  %count101 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 6, i32 1
  %92 = ptrtoint ptr %count101 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool102.not = icmp eq i32 %93, 0
  br i1 %tobool102.not, label %if.end99.if.end108_crit_edge, label %if.then103

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %result = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 14
  %94 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -5, ptr %result, align 4
  %adev = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 1
  %95 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.31, i32 noundef %93) #11
  %call107 = tail call fastcc i32 @init_hw(ptr noundef %arg)
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end99.if.end108_crit_edge
  %xfer_complete = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_complete) #8
  br label %sw.epilog

sw.bb109:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %result110 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 14
  %97 = ptrtoint ptr %result110 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -5, ptr %result110, align 4
  %call111 = tail call fastcc i32 @init_hw(ptr noundef %arg)
  %98 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virtbase, align 4
  %add.ptr113 = getelementptr i8, ptr %99, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %101 = or i32 %100, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %101) #8, !srcloc !145
  %xfer_complete114 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_complete114) #8
  br label %sw.epilog

sw.bb115:                                         ; preds = %entry
  %result116 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 14
  %102 = ptrtoint ptr %result116 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -5, ptr %result116, align 4
  %103 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %virtbase, align 4
  %add.ptr120 = getelementptr i8, ptr %104, i32 20
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %106 = and i32 %105, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %106)
  %cmp125 = icmp eq i32 %106, 201326592
  br i1 %cmp125, label %if.then126, label %sw.bb115.if.end128_crit_edge

sw.bb115.if.end128_crit_edge:                     ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then126:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = tail call fastcc i32 @init_hw(ptr noundef %arg)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %sw.bb115.if.end128_crit_edge
  %107 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %virtbase, align 4
  %add.ptr130 = getelementptr i8, ptr %108, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %110 = or i32 %109, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %110) #8, !srcloc !145
  %xfer_complete131 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_complete131) #8
  br label %sw.epilog

sw.bb132:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %result133 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 14
  %111 = ptrtoint ptr %result133 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -5, ptr %result133, align 4
  %call134 = tail call fastcc i32 @init_hw(ptr noundef %arg)
  %adev138 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 1
  %112 = ptrtoint ptr %adev138 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adev138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.34) #11
  %xfer_complete140 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 13
  tail call void @complete(ptr noundef %xfer_complete140) #8
  br label %sw.epilog

do.end144:                                        ; preds = %entry.do.end144_crit_edge, %entry.do.end144_crit_edge222, %entry.do.end144_crit_edge223, %entry.do.end144_crit_edge224, %entry.do.end144_crit_edge225, %entry.do.end144_crit_edge226, %entry.do.end144_crit_edge227
  %adev145 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 1
  %114 = ptrtoint ptr %adev145 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %adev145, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.37) #11
  br label %sw.epilog

do.end149:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adev150 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %arg, i32 0, i32 1
  %116 = ptrtoint ptr %adev150 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adev150, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.40) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end149, %do.end144, %sw.bb132, %if.end128, %sw.bb109, %if.end108, %for.end58, %for.end, %if.then21, %fill_tx_fifo.exit.sw.epilog_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmk_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num_msgs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adev = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_msgs)
  %cmp464 = icmp sgt i32 %num_msgs, 0
  %cli = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6
  %buffer = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 2
  %count = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 1
  %sub = add nsw i32 %num_msgs, -1
  %stop = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 12
  %result = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 14
  %operation2.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 4
  %virtbase.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 4
  %xfer_complete.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13
  %wait.i.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 13, i32 1
  %timeout30.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 2, i32 7
  %xfer_bytes.i.i.i = getelementptr inbounds %struct.nmk_i2c_dev, ptr %1, i32 0, i32 6, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry
  %j.067 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20.for.body_crit_edge ]
  %status.066 = phi i32 [ 0, %entry ], [ %status.258, %for.inc20.for.body_crit_edge ]
  tail call fastcc void @setup_i2c_controller(ptr noundef %1)
  br i1 %cmp464, label %for.body.for.body5_crit_edge, label %for.end

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.065
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %cli to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %cli, align 4
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.065, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %buffer, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.065, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.065, i32 %sub)
  %cmp10 = icmp sge i32 %i.065, %sub
  %cond = zext i1 %cmp10 to i32
  %13 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %stop, align 8
  %14 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %result, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.065, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  %18 = ptrtoint ptr %operation2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %operation2.i, align 4
  %19 = and i16 %16, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.load_i2c_mcr_reg.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !168

if.then.i.load_i2c_mcr_reg.exit.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_i2c_mcr_reg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = shl i16 %5, 1
  %21 = and i16 %20, 1792
  %22 = or i16 %21, 8192
  %or5.i.i.i = zext i16 %22 to i32
  br label %load_i2c_mcr_reg.exit.i.i

load_i2c_mcr_reg.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then.i.load_i2c_mcr_reg.exit.i.i_crit_edge
  %or5.pn.i.i.i = phi i32 [ %or5.i.i.i, %if.then.i.i.i ], [ 4096, %if.then.i.load_i2c_mcr_reg.exit.i.i_crit_edge ]
  %conv.i.i.i = zext i16 %5 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %and.i.i.i = and i32 %shl.i.i.i, 254
  %shl31.i.i.i = shl nuw nsw i32 %conv, 15
  %and32.i.i.i = and i32 %shl31.i.i.i, 67076096
  %mcr.0.masked.i.i.i = select i1 %cmp10, i32 16385, i32 1
  %and28.i.i.i = or i32 %mcr.0.masked.i.i.i, %and.i.i.i
  %mcr.2.i.i.i = or i32 %and28.i.i.i, %and32.i.i.i
  %or33.i.i.i = or i32 %mcr.2.i.i.i, %or5.pn.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i.i) #8
  %24 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virtbase.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %29 = or i32 %28, 50331648
  %30 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virtbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !145
  %32 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virtbase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #8, !srcloc !145
  %36 = ptrtoint ptr %xfer_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %xfer_complete.i.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #8
  %37 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %load_i2c_mcr_reg.exit.i.i.if.end.i.i_crit_edge

load_i2c_mcr_reg.exit.i.i.if.end.i.i_crit_edge:   ; preds = %load_i2c_mcr_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

lor.lhs.false.i.i:                                ; preds = %load_i2c_mcr_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool12.not.i.i = icmp eq i8 %42, 0
  %spec.select.i.i = select i1 %tobool12.not.i.i, i32 50856032, i32 318767200
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i, %load_i2c_mcr_reg.exit.i.i.if.end.i.i_crit_edge
  %irq_mask.0.i.i = phi i32 [ 50856032, %load_i2c_mcr_reg.exit.i.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %44, i32 44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i.i) #8, !srcloc !146
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  %or26.i.i = or i32 %46, %irq_mask.0.i.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i) #8
  %48 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %49, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %47) #8, !srcloc !145
  %50 = ptrtoint ptr %timeout30.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %timeout30.i.i, align 4
  %call31.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_complete.i.i, i32 noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %cmp.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.then6.sink.split.i_crit_edge, label %if.end.i.i.lor.lhs.false.i_crit_edge

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.end.i.i.if.then6.sink.split.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.sink.split.i

if.else.i:                                        ; preds = %for.body5
  %52 = ptrtoint ptr %operation2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %operation2.i, align 4
  %53 = and i16 %16, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i.i42.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i.i42.i, label %if.else.i.load_i2c_mcr_reg.exit.i66.i_crit_edge, label %if.then.i.i44.i, !prof !168

if.else.i.load_i2c_mcr_reg.exit.i66.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_i2c_mcr_reg.exit.i66.i

if.then.i.i44.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = shl i16 %5, 1
  %55 = and i16 %54, 1792
  %56 = or i16 %55, 8192
  %or5.i.i43.i = zext i16 %56 to i32
  br label %load_i2c_mcr_reg.exit.i66.i

load_i2c_mcr_reg.exit.i66.i:                      ; preds = %if.then.i.i44.i, %if.else.i.load_i2c_mcr_reg.exit.i66.i_crit_edge
  %or5.pn.i.i45.i = phi i32 [ %or5.i.i43.i, %if.then.i.i44.i ], [ 4096, %if.else.i.load_i2c_mcr_reg.exit.i66.i_crit_edge ]
  %conv.i.i46.i = zext i16 %5 to i32
  %shl.i.i47.i = shl nuw nsw i32 %conv.i.i46.i, 1
  %and.i.i48.i = and i32 %shl.i.i47.i, 254
  %masksel.i.i56.i = select i1 %cmp10, i32 16384, i32 0
  %shl31.i.i59.i = shl nuw nsw i32 %conv, 15
  %and32.i.i60.i = and i32 %shl31.i.i59.i, 67076096
  %mcr.0.masked.i.i54.i = or i32 %and.i.i48.i, %masksel.i.i56.i
  %mcr.2.i.i57.i = or i32 %mcr.0.masked.i.i54.i, %and32.i.i60.i
  %or33.i.i61.i = or i32 %mcr.2.i.i57.i, %or5.pn.i.i45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %or33.i.i61.i) #8
  %58 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %57) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %virtbase.i.i, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  %63 = or i32 %62, 50331648
  %64 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virtbase.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !145
  %66 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virtbase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  %69 = or i32 %68, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %69) #8, !srcloc !145
  %70 = ptrtoint ptr %xfer_complete.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %xfer_complete.i.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #8
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.body.i.i.i.land.rhs.i.i.i_crit_edge, %load_i2c_mcr_reg.exit.i66.i
  %count.017.i.i.i = phi i32 [ 13, %load_i2c_mcr_reg.exit.i66.i ], [ %dec9.i.i.i, %do.body.i.i.i.land.rhs.i.i.i_crit_edge ]
  %71 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp2.not.i.i.i = icmp eq i32 %72, 0
  br i1 %cmp2.not.i.i.i, label %land.rhs.i.i.i.fill_tx_fifo.exit.i.i_crit_edge, label %do.body.i.i.i

land.rhs.i.i.i.fill_tx_fifo.exit.i.i_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tx_fifo.exit.i.i

do.body.i.i.i:                                    ; preds = %land.rhs.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  %77 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %78, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %76) #8, !srcloc !159
  %79 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer, align 4
  %incdec.ptr.i.i.i = getelementptr i8, ptr %80, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %buffer, align 4
  %81 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count, align 4
  %dec.i.i.i = add i32 %82, -1
  store i32 %dec.i.i.i, ptr %count, align 4
  %83 = ptrtoint ptr %xfer_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xfer_bytes.i.i.i, align 4
  %inc.i.i.i = add i32 %84, 1
  store i32 %inc.i.i.i, ptr %xfer_bytes.i.i.i, align 4
  %dec9.i.i.i = add nsw i32 %count.017.i.i.i, -1
  %cmp.i62.i.i = icmp ugt i32 %count.017.i.i.i, 1
  br i1 %cmp.i62.i.i, label %do.body.i.i.i.land.rhs.i.i.i_crit_edge, label %do.body.i.i.i.fill_tx_fifo.exit.i.i_crit_edge

do.body.i.i.i.fill_tx_fifo.exit.i.i_crit_edge:    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fill_tx_fifo.exit.i.i

do.body.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i.i

fill_tx_fifo.exit.i.i:                            ; preds = %do.body.i.i.i.fill_tx_fifo.exit.i.i_crit_edge, %land.rhs.i.i.i.fill_tx_fifo.exit.i.i_crit_edge
  %85 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.not.i.i = icmp eq i32 %86, 0
  %spec.select.i67.i = select i1 %cmp.not.i.i, i32 50331656, i32 50331658
  %87 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stop, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i68.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i68.i, label %lor.lhs.false.i69.i, label %fill_tx_fifo.exit.i.i.if.end17.i.i_crit_edge

fill_tx_fifo.exit.i.i.if.end17.i.i_crit_edge:     ; preds = %fill_tx_fifo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

lor.lhs.false.i69.i:                              ; preds = %fill_tx_fifo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool13.not.i.i = icmp eq i8 %92, 0
  %spec.select63.i.i = select i1 %tobool13.not.i.i, i32 524288, i32 268435456
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %lor.lhs.false.i69.i, %fill_tx_fifo.exit.i.i.if.end17.i.i_crit_edge
  %.sink.i.i = phi i32 [ 524288, %fill_tx_fifo.exit.i.i.if.end17.i.i_crit_edge ], [ %spec.select63.i.i, %lor.lhs.false.i69.i ]
  %or16.i.i = or i32 %.sink.i.i, %spec.select.i67.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %94, i32 44
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i) #8, !srcloc !146
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %or29.i.i = or i32 %or16.i.i, %96
  %97 = tail call i32 @llvm.bswap.i32(i32 %or29.i.i) #8
  %98 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %99, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.i, i32 %97) #8, !srcloc !145
  %100 = ptrtoint ptr %timeout30.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %timeout30.i.i, align 4
  %call34.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_complete.i.i, i32 noundef %101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %cmp35.i.i, label %if.end17.i.i.if.then6.sink.split.i_crit_edge, label %if.end17.i.i.lor.lhs.false.i_crit_edge

if.end17.i.i.lor.lhs.false.i_crit_edge:           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.end17.i.i.if.then6.sink.split.i_crit_edge:     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end17.i.i.lor.lhs.false.i_crit_edge, %if.end.i.i.lor.lhs.false.i_crit_edge
  %102 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool5.not.i = icmp eq i32 %103, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6.sink.split.i:                            ; preds = %if.end17.i.i.if.then6.sink.split.i_crit_edge, %if.end.i.i.if.then6.sink.split.i_crit_edge
  %.str.49.sink.i = phi ptr [ @.str.49, %if.end.i.i.if.then6.sink.split.i_crit_edge ], [ @.str.52, %if.end17.i.i.if.then6.sink.split.i_crit_edge ]
  %104 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %adev, align 4
  %106 = ptrtoint ptr %cli to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cli, align 4
  %conv.i.i = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull %.str.49.sink.i, i32 noundef %conv.i.i) #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.then6.sink.split.i, %lor.lhs.false.i.if.then6.i_crit_edge
  %tobool4.not77.i = phi i1 [ true, %lor.lhs.false.i.if.then6.i_crit_edge ], [ false, %if.then6.sink.split.i ]
  %status.075.i = phi i32 [ 0, %lor.lhs.false.i.if.then6.i_crit_edge ], [ -110, %if.then6.sink.split.i ]
  %108 = ptrtoint ptr %virtbase.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %virtbase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %109, i32 20
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !146
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %112 = and i32 %111, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %112)
  %cmp.i = icmp eq i32 %112, 12
  br i1 %cmp.i, label %if.then11.i, label %if.then6.i.if.end17.i_crit_edge

if.then6.i.if.end17.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.then6.i
  %shr12.i = lshr i32 %111, 4
  %and13.i = and i32 %shr12.i, 7
  %113 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and13.i)
  %cmp15.i = icmp eq i32 %and13.i, 7
  br i1 %cmp15.i, label %if.then11.i.cond.end.i_crit_edge, label %cond.false.i

if.then11.i.cond.end.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [7 x ptr], ptr @abort_causes, i32 0, i32 %and13.i
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then11.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %116, %cond.false.i ], [ @.str.48, %if.then11.i.cond.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.46, ptr noundef %cond.i) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %cond.end.i, %if.then6.i.if.end17.i_crit_edge
  %call18.i = tail call fastcc i32 @init_hw(ptr noundef %1) #8
  br i1 %tobool4.not77.i, label %cond.false21.i, label %if.end17.i.nmk_i2c_xfer_one.exit_crit_edge

if.end17.i.nmk_i2c_xfer_one.exit_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nmk_i2c_xfer_one.exit

cond.false21.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %result, align 4
  br label %nmk_i2c_xfer_one.exit

nmk_i2c_xfer_one.exit:                            ; preds = %cond.false21.i, %if.end17.i.nmk_i2c_xfer_one.exit_crit_edge
  %status.1.i = phi i32 [ %118, %cond.false21.i ], [ %status.075.i, %if.end17.i.nmk_i2c_xfer_one.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1.i)
  %cmp14.not = icmp eq i32 %status.1.i, 0
  br i1 %cmp14.not, label %nmk_i2c_xfer_one.exit.for.inc_crit_edge, label %nmk_i2c_xfer_one.exit.for.inc20_crit_edge

nmk_i2c_xfer_one.exit.for.inc20_crit_edge:        ; preds = %nmk_i2c_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

nmk_i2c_xfer_one.exit.for.inc_crit_edge:          ; preds = %nmk_i2c_xfer_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %nmk_i2c_xfer_one.exit.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %num_msgs
  br i1 %exitcond.not, label %for.inc.for.end22_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5

for.inc.for.end22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.066)
  %cmp16 = icmp eq i32 %status.066, 0
  br i1 %cmp16, label %for.end.for.end22_crit_edge, label %for.end.for.inc20_crit_edge

for.end.for.inc20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.inc20:                                        ; preds = %for.end.for.inc20_crit_edge, %nmk_i2c_xfer_one.exit.for.inc20_crit_edge
  %status.258 = phi i32 [ %status.066, %for.end.for.inc20_crit_edge ], [ %status.1.i, %nmk_i2c_xfer_one.exit.for.inc20_crit_edge ]
  %inc21 = add nuw nsw i32 %j.067, 1
  %exitcond68.not = icmp eq i32 %inc21, 3
  br i1 %exitcond68.not, label %for.inc20.for.end22_crit_edge, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %for.end.for.end22_crit_edge, %for.inc.for.end22_crit_edge
  %119 = phi i32 [ %num_msgs, %for.inc.for.end22_crit_edge ], [ %status.258, %for.inc20.for.end22_crit_edge ], [ %num_msgs, %for.end.for.end22_crit_edge ]
  %120 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adev, align 4
  %call.i53 = tail call i32 @__pm_runtime_idle(ptr noundef %121, i32 noundef 4) #8
  ret i32 %119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nmk_i2c_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592715
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_i2c_controller(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %virtbase = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virtbase, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virtbase, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtbase, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virtbase, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !145
  %clk = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %11) #8
  %conv = zext i32 %call to i64
  %sub = add nuw nsw i64 %conv, 999999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999999999, i32 %call)
  %cmp190 = icmp ult i32 %call, -999999999
  br i1 %cmp190, label %if.then194, label %if.else200, !prof !168

if.then194:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv195 = trunc i64 %sub to i32
  %div198 = udiv i32 %conv195, %call
  br label %if.end204

if.else200:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call, i64 %sub) #12, !srcloc !186
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %extract.t443 = trunc i64 %asmresult1.i to i32
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then194
  %_tmp.0.off0 = phi i32 [ %div198, %if.then194 ], [ %extract.t443, %if.else200 ]
  %sm = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 11
  %13 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 3
  br i1 %15, label %switch.lookup, label %if.end204.sw.epilog_crit_edge

if.end204.sw.epilog_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.setup_i2c_controller, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end204.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 249, %if.end204.sw.epilog_crit_edge ]
  %sub219 = add i32 %_tmp.0.off0, %.sink
  %slsu.0.in = udiv i32 %sub219, %_tmp.0.off0
  %17 = trunc i32 %slsu.0.in to i16
  %conv224 = add i16 %17, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_i2c_controller.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_i2c_controller, %do.body243)) #8
          to label %if.then237 [label %do.body243], !srcloc !187

if.then237:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %adev = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adev, align 4
  %conv239 = zext i16 %conv224 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_i2c_controller.__UNIQUE_ID_ddebug289, ptr noundef %19, ptr noundef nonnull @.str.44, i32 noundef %conv239) #8
  br label %do.body243

do.body243:                                       ; preds = %if.then237, %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv224)
  %21 = zext i16 %20 to i32
  %22 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virtbase, align 4
  %add.ptr249 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 %21) #8, !srcloc !145
  %clk_freq = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 7
  %24 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %25)
  %cmp250 = icmp ugt i32 %25, 100000
  %cond252 = select i1 %cmp250, i32 3, i32 2
  %mul254 = mul i32 %cond252, %25
  %div255 = udiv i32 %call, %mul254
  %and256 = and i32 %div255, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %and256)
  %27 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virtbase, align 4
  %add.ptr262 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %26) #8, !srcloc !145
  %29 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp264 = icmp ugt i32 %30, 1
  br i1 %cmp264, label %do.end269, label %do.body243.do.body286_crit_edge

do.body243.do.body286_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body286

do.end269:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #10
  %adev270 = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 1
  %31 = ptrtoint ptr %adev270 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adev270, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.45) #11
  %div272 = udiv i32 %call, 200000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %div272)
  %34 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virtbase, align 4
  %add.ptr279 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr279, i32 %33) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #8, !srcloc !145
  br label %do.body286

do.body286:                                       ; preds = %do.end269, %do.body243.do.body286_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sm, align 4
  %shl290 = shl i32 %39, 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %shl290)
  %41 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virtbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %tft = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 8
  %43 = ptrtoint ptr %tft to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tft, align 4
  %conv296 = zext i8 %44 to i32
  %45 = shl nuw i32 %conv296, 24
  %46 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virtbase, align 4
  %add.ptr298 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %45) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %rft = getelementptr inbounds %struct.nmk_i2c_dev, ptr %dev, i32 0, i32 9
  %48 = ptrtoint ptr %rft to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rft, align 1
  %conv302 = zext i8 %49 to i32
  %50 = shl nuw i32 %conv302, 24
  %51 = ptrtoint ptr %virtbase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virtbase, align 4
  %add.ptr304 = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr304, i32 %50) #8, !srcloc !145
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_i2c_nomadik__290_1120_nmk_i2c_init4, !1, !"__initcall__kmod_i2c_nomadik__290_1120_nmk_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1120, i32 1}
!2 = !{ptr @__exitcall_nmk_i2c_exit, !3, !"__exitcall_nmk_i2c_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1121, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1123, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1124, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1125, i32 1}
!10 = !{ptr @__UNIQUE_ID_file294, !11, !"__UNIQUE_ID_file294", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1126, i32 1}
!12 = !{ptr @__UNIQUE_ID_license295, !11, !"__UNIQUE_ID_license295", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1102, i32 11}
!15 = !{ptr @nmk_i2c_driver, !16, !"nmk_i2c_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1099, i32 27}
!17 = !{ptr @nmk_i2c_pm, !18, !"nmk_i2c_pm", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 930, i32 32}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 914, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nmk_i2c_runtime_resume._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @nmk_i2c_runtime_resume._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 239, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @flush_i2c_fifo._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @flush_i2c_fifo._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 975, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nmk_i2c_probe._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nmk_i2c_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 984, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nmk_i2c_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nmk_i2c_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 990, i32 3}
!44 = !{ptr @nmk_i2c_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nmk_i2c_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1008, i32 3}
!48 = !{ptr @nmk_i2c_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nmk_i2c_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1014, i32 3}
!52 = !{ptr @nmk_i2c_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nmk_i2c_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @nmk_i2c_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1021, i32 3}
!56 = !{ptr @nmk_i2c_probe._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1035, i32 4}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1039, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @nmk_i2c_probe._entry.26, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @nmk_i2c_probe._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 951, i32 31}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 809, i32 4}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @i2c_irq_handler._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @i2c_irq_handler._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 853, i32 3}
!73 = !{ptr @i2c_irq_handler._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @i2c_irq_handler._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 866, i32 3}
!77 = !{ptr @i2c_irq_handler._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @i2c_irq_handler._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 869, i32 3}
!81 = !{ptr @i2c_irq_handler._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @i2c_irq_handler._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @nmk_i2c_algo, !84, !"nmk_i2c_algo", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 942, i32 35}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 391, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @setup_i2c_controller.__UNIQUE_ID_ddebug289, !86, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 421, i32 3}
!92 = !{ptr @setup_i2c_controller._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @setup_i2c_controller._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 600, i32 4}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nmk_i2c_xfer_one._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @nmk_i2c_xfer_one._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 481, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @read_i2c._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @read_i2c._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @init_completion.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../include/linux/completion.h", i32 87, i32 2}
!107 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 561, i32 3}
!110 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @write_i2c._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @write_i2c._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 188, i32 2}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 189, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 190, i32 2}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 191, i32 2}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 192, i32 2}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 193, i32 2}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 194, i32 2}
!127 = !{ptr @abort_causes, !128, !"abort_causes", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 187, i32 20}
!129 = !{ptr @nmk_i2c_ids, !130, !"nmk_i2c_ids", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1083, i32 29}
!131 = !{ptr @vendor_stn8815, !132, !"vendor_stn8815", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1073, i32 31}
!133 = !{ptr @vendor_db8500, !134, !"vendor_db8500", i1 false, i1 false}
!134 = !{!"../drivers/i2c/busses/i2c-nomadik.c", i32 1078, i32 31}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2155612212}
!145 = !{i64 5866403}
!146 = !{i64 5866821}
!147 = !{i64 2155613332}
!148 = !{i64 2155615538}
!149 = !{i64 2155615993}
!150 = !{i64 2155611063}
!151 = !{i64 2155611918}
!152 = !{i64 2155649699}
!153 = !{i64 2155650217}
!154 = !{i64 2155650735}
!155 = !{i32 0, i32 33}
!156 = !{i64 2155648181}
!157 = !{i64 2155649146}
!158 = !{i64 2155638252}
!159 = !{i64 5866206}
!160 = !{i64 5866601}
!161 = !{i64 2155651034}
!162 = !{i64 2155651300}
!163 = !{i64 2155651848}
!164 = !{i64 2155652111}
!165 = !{i64 2155609154}
!166 = !{i64 2155610007}
!167 = !{i64 2155654436}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{i64 2155631937}
!170 = !{i64 2155633175}
!171 = !{i64 2155634148}
!172 = !{i8 0, i8 2}
!173 = !{i64 2155635323}
!174 = !{i64 2155636264}
!175 = !{i64 2155638552}
!176 = !{i64 2155639790}
!177 = !{i64 2155640763}
!178 = !{i64 2155641941}
!179 = !{i64 2155642882}
!180 = !{i64 2155645145}
!181 = !{i64 2155617090}
!182 = !{i64 2155617499}
!183 = !{i64 2155617908}
!184 = !{i64 2155618317}
!185 = !{i64 2155618726}
!186 = !{i64 2148225451, i64 2148225731, i64 2148226065, i64 2148226399}
!187 = !{i64 2148979920, i64 2148979925, i64 2148979938, i64 2148979982, i64 2148980016, i64 2148980037}
!188 = !{i64 2155626927}
!189 = !{i64 2155627376}
!190 = !{i64 2155629684}
!191 = !{i64 2155630153}
!192 = !{i64 2155630643}
!193 = !{i64 2155631084}
!194 = !{i64 2155631513}
