; ModuleID = '/llk/IR_all_yes/drivers/ntb/test/ntb_msi_test.c_pt.bc'
source_filename = "../drivers/ntb/test/ntb_msi_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_client_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntb_ctx_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_msit_ctx = type { ptr, ptr, %struct.work_struct, ptr, [0 x %struct.ntb_msit_peer] }
%struct.ntb_msit_peer = type { ptr, i32, i32, %struct.completion, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.ntb_msit_isr_ctx = type { i32, i32, i32, ptr, %struct.ntb_msi_desc }
%struct.ntb_msi_desc = type { i32, i32 }

@__UNIQUE_ID_file236 = internal constant [48 x i8] c"ntb_msi_test.file=drivers/ntb/test/ntb_msi_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [34 x i8] c"ntb_msi_test.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [25 x i8] c"ntb_msi_test.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntb_msi_test\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author239 = internal constant [58 x i8] c"ntb_msi_test.author=Logan Gunthorpe <logang@deltatee.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [83 x i8] c"ntb_msi_test.description=Test for sending MSI interrupts over an NTB memory window\00", section ".modinfo", align 1
@__param_str_num_irqs = internal constant [22 x i8] c"ntb_msi_test.num_irqs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_irqs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_num_irqs = internal constant %struct.kernel_param { ptr @__param_str_num_irqs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @num_irqs } }, section "__param", align 4
@__UNIQUE_ID_num_irqstype241 = internal constant [35 x i8] c"ntb_msi_test.parmtype=num_irqs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_irqs242 = internal constant [49 x i8] c"ntb_msi_test.parm=num_irqs:number of irqs to use\00", section ".modinfo", align 1
@__initcall__kmod_ntb_msi_test__246_425_ntb_msit_init6 = internal global ptr @ntb_msit_init, section ".initcall6.init", align 4
@ntb_msit_client = internal global { %struct.ntb_client, [44 x i8] } { %struct.ntb_client { %struct.device_driver zeroinitializer, %struct.ntb_client_ops { ptr @ntb_msit_probe, ptr @ntb_msit_remove } }, [44 x i8] zeroinitializer }, align 32
@ntb_msit_dbgfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_ntb_msit_exit = internal global ptr @ntb_msit_exit, section ".exitcall.exit", align 4
@ntb_msit_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 331, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NTB MSI test requires at least %d spads for %d irqs\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ntb_msit_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ntb/test/ntb_msi_test.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntb_msit_probe._entry_ptr = internal global ptr @ntb_msit_probe._entry, section ".printk_index", align 4
@ntb_msit_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to write spads: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ntb_msit_probe._entry_ptr.10 = internal global ptr @ntb_msit_probe._entry.8, section ".printk_index", align 4
@ntb_msit_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to clear doorbell mask: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ntb_msit_probe._entry_ptr.13 = internal global ptr @ntb_msit_probe._entry.11, section ".printk_index", align 4
@ntb_msit_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 350, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to initialize MSI library: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ntb_msit_probe._entry_ptr.16 = internal global ptr @ntb_msit_probe._entry.14, section ".printk_index", align 4
@ntb_msit_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&nm->setup_work)\00", [61 x i8] zeroinitializer }, align 32
@ntb_msit_ops = internal constant { %struct.ntb_ctx_ops, [20 x i8] } { %struct.ntb_ctx_ops { ptr @ntb_msit_link_event, ptr @ntb_msit_db_event, ptr null }, [20 x i8] zeroinitializer }, align 32
@ntb_msit_desc_changed.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ntb_msit_desc_changed\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MSI Descriptors Changed\0A\00", [39 x i8] zeroinitializer }, align 32
@ntb_msit_setup_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 68, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to setup MSI windows: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ntb_msit_setup_work\00", [44 x i8] zeroinitializer }, align 32
@ntb_msit_setup_work._entry_ptr = internal global ptr @ntb_msit_setup_work._entry, section ".printk_index", align 4
@ntb_msit_isr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntb_msit_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Interrupt Occurred: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@ntb_msit_local_port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_local_port_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"peer%d\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@ntb_msit_trigger_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_trigger_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ntb_msit_port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_port_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@ntb_msit_count_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_count_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@ntb_msit_ready_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_ready_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq%d_occurrences\00", [46 x i8] zeroinitializer }, align 32
@ntb_msit_occurrences_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntb_msit_occurrences_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ntb_msit_dbgfs_trigger.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ntb_msit_dbgfs_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"trigger irq %llu on peer %u\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ntb_msit_copy_peer_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 144, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found %d interrupts on peer %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ntb_msit_copy_peer_desc\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ntb_msit_copy_peer_desc._entry_ptr = internal global ptr @ntb_msit_copy_peer_desc._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 11, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"num_irqs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 15, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"ntb_msit_client\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 404, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"ntb_msit_dbgfs_topdir\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 41, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 330, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 337, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 343, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 349, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 363, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"ntb_msit_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 179, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 109, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 67, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 48, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 279, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"ntb_msit_local_port_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 287, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 290, i32 30 }
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"ntb_msit_trigger_fops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 198, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"ntb_msit_port_fops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 210, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 297, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ntb_msit_count_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 222, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 301, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"ntb_msit_ready_fops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 241, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 307, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"ntb_msit_occurrences_fops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 253, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 266, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 87, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 191, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [35 x i8] c"../drivers/ntb/test/ntb_msi_test.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 143, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_num_irqs242, ptr @__UNIQUE_ID_num_irqstype241, ptr @__UNIQUE_ID_version238, ptr @__exitcall_ntb_msit_exit, ptr @__initcall__kmod_ntb_msi_test__246_425_ntb_msit_init6, ptr @__modver_attr, ptr @__param_num_irqs, ptr @ntb_msit_copy_peer_desc._entry, ptr @ntb_msit_copy_peer_desc._entry_ptr, ptr @ntb_msit_exit, ptr @ntb_msit_probe._entry, ptr @ntb_msit_probe._entry.11, ptr @ntb_msit_probe._entry.14, ptr @ntb_msit_probe._entry.8, ptr @ntb_msit_probe._entry_ptr, ptr @ntb_msit_probe._entry_ptr.10, ptr @ntb_msit_probe._entry_ptr.13, ptr @ntb_msit_probe._entry_ptr.16, ptr @ntb_msit_setup_work._entry, ptr @ntb_msit_setup_work._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @num_irqs, ptr @ntb_msit_client, ptr @ntb_msit_dbgfs_topdir, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @ntb_msit_probe.__key, ptr @.str.17, ptr @ntb_msit_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ntb_msit_local_port_fops, ptr @.str.25, ptr @.str.26, ptr @ntb_msit_trigger_fops, ptr @ntb_msit_port_fops, ptr @.str.27, ptr @ntb_msit_count_fops, ptr @.str.28, ptr @ntb_msit_ready_fops, ptr @.str.29, ptr @ntb_msit_occurrences_fops, ptr @.str.30, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_client to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_dbgfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_setup_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_local_port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_trigger_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_count_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_ready_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_occurrences_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msit_copy_peer_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #9
  store ptr %call1, ptr @ntb_msit_dbgfs_topdir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @__ntb_register_client(ptr noundef nonnull @ntb_msit_client, ptr noundef null, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @ntb_msit_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntb_unregister_client(ptr noundef nonnull @ntb_msit_client) #9
  %0 = load ptr, ptr @ntb_msit_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntb_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_probe(ptr nocapture noundef readnone %client, ptr noundef %ntb) #3 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #9
  br label %ntb_peer_port_count.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %3(ptr noundef %ntb) #9
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %ntb_peer_port_count.exit.cleanup_crit_edge, label %if.end

ntb_peer_port_count.exit.cleanup_crit_edge:       ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ntb_peer_port_count.exit
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %spad_is_unsafe.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %spad_is_unsafe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spad_is_unsafe.i, align 4
  %tobool.not.i112 = icmp eq ptr %7, null
  br i1 %tobool.not.i112, label %if.end.lor.lhs.false_crit_edge, label %ntb_spad_is_unsafe.exit

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

ntb_spad_is_unsafe.exit:                          ; preds = %if.end
  %call.i113 = tail call i32 %7(ptr noundef %ntb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not = icmp eq i32 %call.i113, 0
  br i1 %tobool.not, label %ntb_spad_is_unsafe.exit.lor.lhs.false_crit_edge, label %ntb_spad_is_unsafe.exit.do.end_crit_edge

ntb_spad_is_unsafe.exit.do.end_crit_edge:         ; preds = %ntb_spad_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

ntb_spad_is_unsafe.exit.lor.lhs.false_crit_edge:  ; preds = %ntb_spad_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ntb_spad_is_unsafe.exit.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 8
  %spad_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spad_count.i, align 4
  %tobool.not.i117 = icmp eq ptr %11, null
  br i1 %tobool.not.i117, label %lor.lhs.false.ntb_spad_count.exit_crit_edge, label %if.end.i119

lor.lhs.false.ntb_spad_count.exit_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_spad_count.exit

if.end.i119:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call.i118 = tail call i32 %11(ptr noundef %ntb) #9
  br label %ntb_spad_count.exit

ntb_spad_count.exit:                              ; preds = %if.end.i119, %lor.lhs.false.ntb_spad_count.exit_crit_edge
  %retval.0.i120 = phi i32 [ %call.i118, %if.end.i119 ], [ 0, %lor.lhs.false.ntb_spad_count.exit_crit_edge ]
  %12 = load i32, ptr @num_irqs, align 4
  %mul = shl i32 %12, 1
  %add = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i120, i32 %add)
  %cmp3 = icmp slt i32 %retval.0.i120, %add
  br i1 %cmp3, label %ntb_spad_count.exit.do.end_crit_edge, label %if.end7

ntb_spad_count.exit.do.end_crit_edge:             ; preds = %ntb_spad_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %ntb_spad_count.exit.do.end_crit_edge, %ntb_spad_is_unsafe.exit.do.end_crit_edge
  %13 = load i32, ptr @num_irqs, align 4
  %mul5 = shl i32 %13, 1
  %add6 = or i32 %mul5, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.3, i32 noundef %add6, i32 noundef %13) #12
  br label %cleanup

if.end7:                                          ; preds = %ntb_spad_count.exit
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i122 = icmp eq ptr %17, null
  br i1 %tobool.not.i122, label %if.end7.do.end13_crit_edge, label %ntb_spad_write.exit

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

ntb_spad_write.exit:                              ; preds = %if.end7
  %call.i123 = tail call i32 %17(ptr noundef %ntb, i32 noundef 0, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool9.not = icmp eq i32 %call.i123, 0
  br i1 %tobool9.not, label %if.end15, label %ntb_spad_write.exit.do.end13_crit_edge

ntb_spad_write.exit.do.end13_crit_edge:           ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end13:                                         ; preds = %ntb_spad_write.exit.do.end13_crit_edge, %if.end7.do.end13_crit_edge
  %retval.0.i125139 = phi i32 [ %call.i123, %ntb_spad_write.exit.do.end13_crit_edge ], [ -22, %if.end7.do.end13_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i125139) #12
  br label %cleanup

if.end15:                                         ; preds = %ntb_spad_write.exit
  %sub16 = sub nsw i32 32, %retval.0.i
  %shr = lshr i32 -1, %sub16
  %conv = zext i32 %shr to i64
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 8
  %db_clear_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %db_clear_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %db_clear_mask.i, align 4
  %call.i127 = tail call i32 %21(ptr noundef %ntb, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool19.not = icmp eq i32 %call.i127, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.12, i32 noundef %call.i127) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = tail call i32 @ntb_msi_init(ptr noundef %ntb, ptr noundef nonnull @ntb_msit_desc_changed) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.15, i32 noundef %call26) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 72) #9
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %24, i32 56) #9
  %retval.0.i128 = select i1 %23, i32 -1, i32 %spec.select.i
  %call.i129 = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef %retval.0.i128, i32 noundef 3520) #9
  %tobool37.not = icmp eq ptr %call.i129, null
  br i1 %tobool37.not, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %25 = load i32, ptr @num_irqs, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 24) #9
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !114

devm_kcalloc.exit.thread:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %isr_ctx141 = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 3
  %28 = ptrtoint ptr %isr_ctx141 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %isr_ctx141, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end39
  %29 = extractvalue { i32, i1 } %26, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef %29, i32 noundef 3520) #9
  %isr_ctx = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 3
  %30 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %isr_ctx, align 4
  %tobool43.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool43.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %do.body46

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body46:                                        ; preds = %devm_kcalloc.exit
  %setup_work = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 2
  tail call void @__init_work(ptr noundef %setup_work, i32 noundef 0) #9
  %31 = ptrtoint ptr %setup_work to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %setup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.17, ptr noundef nonnull @ntb_msit_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry50 = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 2, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry50, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ntb_msit_setup_work, ptr %func, align 4
  %35 = ptrtoint ptr %call.i129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ntb, ptr %call.i129, align 4
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %36 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev1.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %38 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %39 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.body46.pci_name.exit.i_crit_edge

do.body46.pci_name.exit.i_crit_edge:              ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.body46.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %42, %if.end.i.i.i ], [ %40, %do.body46.pci_name.exit.i_crit_edge ]
  %43 = load ptr, ptr @ntb_msit_dbgfs_topdir, align 4
  %call2.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef %43) #9
  %dbgfs_dir.i = getelementptr inbounds %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 1
  %44 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call2.i, ptr %dbgfs_dir.i, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call2.i, ptr noundef nonnull %call.i129, ptr noundef nonnull @ntb_msit_local_port_fops) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %pci_name.exit.i
  %i.0.i = phi i32 [ 0, %pci_name.exit.i ], [ %inc.i, %for.body.i ]
  %45 = ptrtoint ptr %call.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i129, align 4
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 8
  %peer_port_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %peer_port_count.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %peer_port_count.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i130

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @ntb_default_peer_port_count(ptr noundef %46) #9
  br label %ntb_peer_port_count.exit.i

if.end.i.i130:                                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i = call i32 %50(ptr noundef %46) #9
  br label %ntb_peer_port_count.exit.i

ntb_peer_port_count.exit.i:                       ; preds = %if.end.i.i130, %if.then.i.i
  %retval.0.i.i131 = phi i32 [ %call3.i.i, %if.end.i.i130 ], [ %call.i.i, %if.then.i.i ]
  %cmp.i = icmp slt i32 %i.0.i, %retval.0.i.i131
  br i1 %cmp.i, label %for.body.i, label %for.cond28.preheader.i

for.cond28.preheader.i:                           ; preds = %ntb_peer_port_count.exit.i
  %51 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp2972.i = icmp sgt i32 %51, 0
  br i1 %cmp2972.i, label %for.cond28.preheader.i.for.body30.i_crit_edge, label %for.cond28.preheader.i.ntb_msit_create_dbgfs.exit_crit_edge

for.cond28.preheader.i.ntb_msit_create_dbgfs.exit_crit_edge: ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_msit_create_dbgfs.exit

for.cond28.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond28.preheader.i
  br label %for.body30.i

for.body.i:                                       ; preds = %ntb_peer_port_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 4, i32 %i.0.i
  %pidx.i = getelementptr %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 4, i32 %i.0.i, i32 1
  %52 = ptrtoint ptr %pidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %i.0.i, ptr %pidx.i, align 4
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i129, ptr %arrayidx.i, align 4
  %init_comp.i = getelementptr %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 4, i32 %i.0.i, i32 3
  %54 = ptrtoint ptr %init_comp.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %init_comp.i, align 4
  %wait.i.i = getelementptr %struct.ntb_msit_ctx, ptr %call.i129, i32 0, i32 4, i32 %i.0.i, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #9
  %call12.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %i.0.i) #9
  %55 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dbgfs_dir.i, align 4
  %call15.i = call ptr @debugfs_create_dir(ptr noundef nonnull %buf.i, ptr noundef %56) #9
  %call18.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.26, i16 noundef zeroext 128, ptr noundef %call15.i, ptr noundef %arrayidx.i, ptr noundef nonnull @ntb_msit_trigger_fops) #9
  %call21.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef %call15.i, ptr noundef %arrayidx.i, ptr noundef nonnull @ntb_msit_port_fops) #9
  %call24.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.27, i16 noundef zeroext 256, ptr noundef %call15.i, ptr noundef %arrayidx.i, ptr noundef nonnull @ntb_msit_count_fops) #9
  %call27.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.28, i16 noundef zeroext 384, ptr noundef %call15.i, ptr noundef %arrayidx.i, ptr noundef nonnull @ntb_msit_ready_fops) #9
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br label %for.cond.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.cond28.preheader.i.for.body30.i_crit_edge
  %i.173.i = phi i32 [ %inc38.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.cond28.preheader.i.for.body30.i_crit_edge ]
  %call32.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 32, ptr noundef nonnull @.str.29, i32 noundef %i.173.i) #9
  %57 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dbgfs_dir.i, align 4
  %59 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %isr_ctx, align 4
  %arrayidx35.i = getelementptr %struct.ntb_msit_isr_ctx, ptr %60, i32 %i.173.i
  %call36.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull %buf.i, i16 noundef zeroext 256, ptr noundef %58, ptr noundef %arrayidx35.i, ptr noundef nonnull @ntb_msit_occurrences_fops) #9
  %inc38.i = add nuw nsw i32 %i.173.i, 1
  %61 = load i32, ptr @num_irqs, align 4
  %cmp29.i = icmp slt i32 %inc38.i, %61
  br i1 %cmp29.i, label %for.body30.i.for.body30.i_crit_edge, label %for.body30.i.ntb_msit_create_dbgfs.exit_crit_edge

for.body30.i.ntb_msit_create_dbgfs.exit_crit_edge: ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_msit_create_dbgfs.exit

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i

ntb_msit_create_dbgfs.exit:                       ; preds = %for.body30.i.ntb_msit_create_dbgfs.exit_crit_edge, %for.cond28.preheader.i.ntb_msit_create_dbgfs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #9
  %call55 = call i32 @ntb_set_ctx(ptr noundef %ntb, ptr noundef nonnull %call.i129, ptr noundef nonnull @ntb_msit_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %ntb_msit_create_dbgfs.exit.remove_dbgfs_crit_edge

ntb_msit_create_dbgfs.exit.remove_dbgfs_crit_edge: ; preds = %ntb_msit_create_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_dbgfs

if.end58:                                         ; preds = %ntb_msit_create_dbgfs.exit
  %62 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %isr_ctx, align 4
  %tobool60.not = icmp eq ptr %63, null
  br i1 %tobool60.not, label %if.end58.remove_dbgfs_crit_edge, label %if.end62

if.end58.remove_dbgfs_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_dbgfs

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 8
  %link_enable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %link_enable.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link_enable.i, align 4
  %call.i133 = call i32 %67(ptr noundef %ntb, i32 noundef -1, i32 noundef -1) #9
  br label %cleanup

remove_dbgfs:                                     ; preds = %if.end58.remove_dbgfs_crit_edge, %ntb_msit_create_dbgfs.exit.remove_dbgfs_crit_edge
  %ret.0 = phi i32 [ %call55, %ntb_msit_create_dbgfs.exit.remove_dbgfs_crit_edge ], [ -12, %if.end58.remove_dbgfs_crit_edge ]
  %68 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dbgfs_dir.i, align 4
  call void @debugfs_remove(ptr noundef %69) #9
  %70 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %isr_ctx, align 4
  call void @devm_kfree(ptr noundef %ntb, ptr noundef %71) #9
  call void @devm_kfree(ptr noundef %ntb, ptr noundef nonnull %call.i129) #9
  br label %cleanup

cleanup:                                          ; preds = %remove_dbgfs, %if.end62, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end33.cleanup_crit_edge, %do.end31, %do.end23, %do.end13, %do.end, %ntb_peer_port_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end ], [ %retval.0.i125139, %do.end13 ], [ %call.i127, %do.end23 ], [ %call26, %do.end31 ], [ %ret.0, %remove_dbgfs ], [ 0, %if.end62 ], [ -22, %ntb_peer_port_count.exit.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_remove(ptr nocapture noundef readnone %client, ptr noundef %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %link_disable.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %link_disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_disable.i, align 4
  %call.i = tail call i32 %5(ptr noundef %ntb) #9
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db_valid_mask.i, align 4
  %call.i14 = tail call i64 %9(ptr noundef %ntb) #9
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 8
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_set_mask.i, align 4
  %call.i16 = tail call i32 %13(ptr noundef %ntb, i64 noundef %call.i14) #9
  tail call void @ntb_msi_clear_mws(ptr noundef %ntb) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #9
  br label %ntb_peer_port_count.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %17(ptr noundef %ntb) #9
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i18, %if.then.i ]
  %cmp = icmp slt i32 %i.0, %retval.0.i
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  %msi_desc = getelementptr %struct.ntb_msit_ctx, ptr %1, i32 0, i32 4, i32 %i.0, i32 4
  %18 = ptrtoint ptr %msi_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msi_desc, align 4
  tail call void @kfree(ptr noundef %19) #9
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ntb_clear_ctx(ptr noundef %ntb) #9
  %dbgfs_dir.i = getelementptr inbounds %struct.ntb_msit_ctx, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbgfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %21) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_msi_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_desc_changed(ptr nocapture noundef readonly %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_msit_desc_changed.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_msit_desc_changed, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ntb_msit_desc_changed.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.19) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp43 = icmp sgt i32 %2, 0
  br i1 %cmp43, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %isr_ctx = getelementptr inbounds %struct.ntb_msit_ctx, ptr %ctx, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ntb_spad_write.exit34.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ntb_spad_write.exit34.for.body_crit_edge ]
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %mul = shl nuw i32 %i.044, 1
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %6, i32 0, i32 35
  %7 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.ntb_spad_write.exit_crit_edge, label %if.end.i

for.body.ntb_spad_write.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_spad_write.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %isr_ctx, align 4
  %desc = getelementptr %struct.ntb_msit_isr_ctx, ptr %10, i32 %i.044, i32 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc, align 4
  %add = or i32 %mul, 1
  %call.i = tail call i32 %8(ptr noundef %4, i32 noundef %add, i32 noundef %12) #9
  br label %ntb_spad_write.exit

ntb_spad_write.exit:                              ; preds = %if.end.i, %for.body.ntb_spad_write.exit_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %ops.i28 = getelementptr inbounds %struct.ntb_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i28, align 8
  %spad_write.i29 = getelementptr inbounds %struct.ntb_dev_ops, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %spad_write.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spad_write.i29, align 4
  %tobool.not.i30 = icmp eq ptr %18, null
  br i1 %tobool.not.i30, label %ntb_spad_write.exit.ntb_spad_write.exit34_crit_edge, label %if.end.i32

ntb_spad_write.exit.ntb_spad_write.exit34_crit_edge: ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_spad_write.exit34

if.end.i32:                                       ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isr_ctx, align 4
  %data = getelementptr %struct.ntb_msit_isr_ctx, ptr %20, i32 %i.044, i32 4, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %add7 = add nuw i32 %mul, 2
  %call.i31 = tail call i32 %18(ptr noundef %14, i32 noundef %add7, i32 noundef %22) #9
  br label %ntb_spad_write.exit34

ntb_spad_write.exit34:                            ; preds = %if.end.i32, %ntb_spad_write.exit.ntb_spad_write.exit34_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %23 = load i32, ptr @num_irqs, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %ntb_spad_write.exit34.for.body_crit_edge, label %ntb_spad_write.exit34.for.end_crit_edge

ntb_spad_write.exit34.for.end_crit_edge:          ; preds = %ntb_spad_write.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ntb_spad_write.exit34.for.body_crit_edge:         ; preds = %ntb_spad_write.exit34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %ntb_spad_write.exit34.for.end_crit_edge, %do.end.for.end_crit_edge
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %ops.i35 = getelementptr inbounds %struct.ntb_dev, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i35, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool.not.i36 = icmp eq ptr %29, null
  br i1 %tobool.not.i36, label %if.then.i, label %if.end.i38

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i37 = tail call i32 @ntb_default_port_number(ptr noundef %25) #9
  br label %ntb_port_number.exit

if.end.i38:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %29(ptr noundef %25) #9
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i38, %if.then.i
  %retval.0.i39 = phi i32 [ %call3.i, %if.end.i38 ], [ %call.i37, %if.then.i ]
  %shl = shl nuw i32 1, %retval.0.i39
  %conv = zext i32 %shl to i64
  %30 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i35, align 8
  %peer_db_set.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %peer_db_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer_db_set.i, align 4
  %call.i41 = tail call i32 %33(ptr noundef %25, i64 noundef %conv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_setup_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @ntb_msi_setup_mws(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %2 = load i32, ptr @num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp110.not = icmp eq i32 %2, 0
  br i1 %cmp110.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %isr_ctx = getelementptr i8, ptr %work, i32 44
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, i32 noundef %call) #12
  br label %cleanup

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %if.end39.for.body_crit_edge ]
  %5 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %isr_ctx, align 4
  %arrayidx = getelementptr %struct.ntb_msit_isr_ctx, ptr %6, i32 %i.0113
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.0113, ptr %arrayidx, align 4
  %8 = load ptr, ptr %isr_ctx, align 4
  %nm4 = getelementptr %struct.ntb_msit_isr_ctx, ptr %8, i32 %i.0113, i32 3
  %9 = ptrtoint ptr %nm4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %nm4, align 4
  %10 = load ptr, ptr %isr_ctx, align 4
  %irq_num = getelementptr %struct.ntb_msit_isr_ctx, ptr %10, i32 %i.0113, i32 1
  %11 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.then8, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then8:                                         ; preds = %for.body
  %arrayidx6 = getelementptr %struct.ntb_msit_isr_ctx, ptr %10, i32 %i.0113
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %desc = getelementptr %struct.ntb_msit_isr_ctx, ptr %10, i32 %i.0113, i32 4
  %call.i = tail call i32 @ntbm_msi_request_threaded_irq(ptr noundef %14, ptr noundef nonnull @ntb_msit_isr, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef %arrayidx6, ptr noundef %desc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  br i1 %cmp15, label %if.then8.for.end_crit_edge, label %if.end17

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end17:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %isr_ctx, align 4
  %irq_num20 = getelementptr %struct.ntb_msit_isr_ctx, ptr %16, i32 %i.0113, i32 1
  %17 = ptrtoint ptr %irq_num20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %irq_num20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %for.body.if.end21_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %mul = shl i32 %i.0113, 1
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 8
  %spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %21, i32 0, i32 35
  %22 = ptrtoint ptr %spad_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spad_write.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end21.for.end_crit_edge, label %ntb_spad_write.exit

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ntb_spad_write.exit:                              ; preds = %if.end21
  %24 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %isr_ctx, align 4
  %desc25 = getelementptr %struct.ntb_msit_isr_ctx, ptr %25, i32 %i.0113, i32 4
  %26 = ptrtoint ptr %desc25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc25, align 4
  %add = or i32 %mul, 1
  %call.i84 = tail call i32 %23(ptr noundef %19, i32 noundef %add, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool27.not = icmp eq i32 %call.i84, 0
  br i1 %tobool27.not, label %if.end29, label %ntb_spad_write.exit.for.end_crit_edge

ntb_spad_write.exit.for.end_crit_edge:            ; preds = %ntb_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end29:                                         ; preds = %ntb_spad_write.exit
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %ops.i85 = getelementptr inbounds %struct.ntb_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i85, align 8
  %spad_write.i86 = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 35
  %32 = ptrtoint ptr %spad_write.i86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spad_write.i86, align 4
  %tobool.not.i87 = icmp eq ptr %33, null
  br i1 %tobool.not.i87, label %if.end29.for.end_crit_edge, label %ntb_spad_write.exit91

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ntb_spad_write.exit91:                            ; preds = %if.end29
  %34 = ptrtoint ptr %isr_ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %isr_ctx, align 4
  %data = getelementptr %struct.ntb_msit_isr_ctx, ptr %35, i32 %i.0113, i32 4, i32 1
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  %add32 = add i32 %mul, 2
  %call.i88 = tail call i32 %33(ptr noundef %29, i32 noundef %add32, i32 noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool37.not = icmp eq i32 %call.i88, 0
  br i1 %tobool37.not, label %if.end39, label %ntb_spad_write.exit91.for.end_crit_edge

ntb_spad_write.exit91.for.end_crit_edge:          ; preds = %ntb_spad_write.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end39:                                         ; preds = %ntb_spad_write.exit91
  %inc40 = add nuw i32 %i.0113, 1
  %38 = load i32, ptr @num_irqs, align 4
  %cmp = icmp ult i32 %inc40, %38
  br i1 %cmp, label %if.end39.for.body_crit_edge, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %ntb_spad_write.exit91.for.end_crit_edge, %if.end29.for.end_crit_edge, %ntb_spad_write.exit.for.end_crit_edge, %if.end21.for.end_crit_edge, %if.then8.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %irq_count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.0113, %if.end29.for.end_crit_edge ], [ %i.0113, %if.end21.for.end_crit_edge ], [ %i.0113, %ntb_spad_write.exit91.for.end_crit_edge ], [ %i.0113, %ntb_spad_write.exit.for.end_crit_edge ], [ %i.0113, %if.then8.for.end_crit_edge ], [ %inc40, %if.end39.for.end_crit_edge ]
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %ops.i92 = getelementptr inbounds %struct.ntb_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ops.i92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i92, align 8
  %spad_write.i93 = getelementptr inbounds %struct.ntb_dev_ops, ptr %42, i32 0, i32 35
  %43 = ptrtoint ptr %spad_write.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spad_write.i93, align 4
  %tobool.not.i94 = icmp eq ptr %44, null
  br i1 %tobool.not.i94, label %for.end.ntb_spad_write.exit98_crit_edge, label %if.end.i96

for.end.ntb_spad_write.exit98_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_spad_write.exit98

if.end.i96:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i95 = tail call i32 %44(ptr noundef %40, i32 noundef 0, i32 noundef %irq_count.0.lcssa) #9
  br label %ntb_spad_write.exit98

ntb_spad_write.exit98:                            ; preds = %if.end.i96, %for.end.ntb_spad_write.exit98_crit_edge
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %ops.i99 = getelementptr inbounds %struct.ntb_dev, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i99, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool.not.i100 = icmp eq ptr %50, null
  br i1 %tobool.not.i100, label %if.then.i, label %if.end.i102

if.then.i:                                        ; preds = %ntb_spad_write.exit98
  call void @__sanitizer_cov_trace_pc() #11
  %call.i101 = tail call i32 @ntb_default_port_number(ptr noundef %46) #9
  br label %ntb_port_number.exit

if.end.i102:                                      ; preds = %ntb_spad_write.exit98
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %50(ptr noundef %46) #9
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i102, %if.then.i
  %retval.0.i103 = phi i32 [ %call3.i, %if.end.i102 ], [ %call.i101, %if.then.i ]
  %shl = shl nuw i32 1, %retval.0.i103
  %conv = zext i32 %shl to i64
  %51 = ptrtoint ptr %ops.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i99, align 8
  %peer_db_set.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %52, i32 0, i32 27
  %53 = ptrtoint ptr %peer_db_set.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %peer_db_set.i, align 4
  %call.i105 = tail call i32 %54(ptr noundef %46, i64 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %ntb_port_number.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_set_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_port_number(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_msi_setup_mws(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_isr(i32 noundef %irq, ptr nocapture noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nm1 = getelementptr inbounds %struct.ntb_msit_isr_ctx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %nm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nm1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_msit_isr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_msit_isr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ntb_msit_isr.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %occurrences = getelementptr inbounds %struct.ntb_msit_isr_ctx, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %occurrences to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %occurrences, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %occurrences, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntbm_msi_request_threaded_irq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_local_port_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ntb_msit_dbgfs_local_port_get, ptr noundef null, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_dbgfs_local_port_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ntb_default_port_number(ptr noundef %1) #9
  br label %ntb_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %5(ptr noundef %1) #9
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %conv = sext i32 %retval.0.i to i64
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %port, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_trigger_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @ntb_msit_dbgfs_trigger, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_dbgfs_trigger(ptr nocapture noundef readonly %data, i64 noundef %idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_irqs = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_irqs, align 4
  %conv = sext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %idx)
  %cmp.not = icmp ugt i64 %conv, %idx
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntb_msit_dbgfs_trigger.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ntb_msit_dbgfs_trigger, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !115

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pidx = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ntb_msit_dbgfs_trigger.__UNIQUE_ID_ddebug245, ptr noundef %5, ptr noundef nonnull @.str.33, i64 noundef %idx, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %pidx8 = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %pidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pidx8, align 4
  %msi_desc = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %msi_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msi_desc, align 4
  %idxprom = trunc i64 %idx to i32
  %arrayidx = getelementptr %struct.ntb_msi_desc, ptr %15, i32 %idxprom
  %call9 = tail call i32 @ntb_msi_peer_trigger(ptr noundef %11, i32 noundef %13, ptr noundef %arrayidx) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_msi_peer_trigger(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_port_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ntb_msit_dbgfs_port_get, ptr noundef null, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_dbgfs_port_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pidx = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pidx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ntb_default_peer_port_number(ptr noundef %3, i32 noundef %5) #9
  br label %ntb_peer_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 %9(ptr noundef %3, i32 noundef %5) #9
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %conv = sext i32 %retval.0.i to i64
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %port, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_number(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_count_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ntb_msit_dbgfs_count_get, ptr noundef null, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_msit_dbgfs_count_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_irqs = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_irqs, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_ready_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ntb_msit_dbgfs_ready_get, ptr noundef nonnull @ntb_msit_dbgfs_ready_set, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_dbgfs_ready_get(ptr noundef %data, ptr nocapture noundef writeonly %ready) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_comp = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 3
  %call = tail call zeroext i1 @try_wait_for_completion(ptr noundef %init_comp) #9
  %conv = zext i1 %call to i64
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %ready, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_dbgfs_ready_set(ptr noundef %data, i64 noundef %ready) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_comp = getelementptr inbounds %struct.ntb_msit_peer, ptr %data, i32 0, i32 3
  %call = tail call i32 @wait_for_completion_interruptible(ptr noundef %init_comp) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntb_msit_occurrences_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ntb_msit_dbgfs_occurrences_get, ptr noundef null, ptr noundef nonnull @.str.30) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntb_msit_dbgfs_occurrences_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %occurrences) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %occurrences1 = getelementptr inbounds %struct.ntb_msit_isr_ctx, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %occurrences1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %occurrences1, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %occurrences to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %occurrences, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_link_event(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %link_is_up.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %link_is_up.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_is_up.i, align 4
  %call.i = tail call i64 %5(ptr noundef %1, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool.not = icmp eq i64 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %setup_work = getelementptr inbounds %struct.ntb_msit_ctx, ptr %ctx, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %setup_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msit_db_event(ptr noundef %ctx, i32 noundef %vec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %db_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %db_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %db_read.i, align 4
  %call.i = tail call i64 %5(ptr noundef %1) #9
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  %ops.i35 = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i35, align 8
  %db_clear.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %db_clear.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %db_clear.i, align 4
  %call.i36 = tail call i32 %11(ptr noundef %7, i64 noundef %call.i) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %peer.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %peer.050
  %conv = zext i32 %shl to i64
  %and = and i64 %call.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %ops.i37 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i37, align 8
  %peer_spad_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 37
  %16 = ptrtoint ptr %peer_spad_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer_spad_read.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %ntb_peer_spad_read.exit

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

ntb_peer_spad_read.exit:                          ; preds = %if.end
  %call.i38 = tail call i32 %17(ptr noundef %13, i32 noundef %peer.050, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38)
  %cmp5 = icmp eq i32 %call.i38, -1
  br i1 %cmp5, label %ntb_peer_spad_read.exit.for.inc_crit_edge, label %if.end8

ntb_peer_spad_read.exit.for.inc_crit_edge:        ; preds = %ntb_peer_spad_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %ntb_peer_spad_read.exit
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i38, i32 8) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end8.for.inc_crit_edge, label %if.end7.i.i, !prof !114

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7.i.i:                                      ; preds = %if.end8
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 2848) #13
  %tobool10.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not, label %if.end7.i.i.for.inc_crit_edge, label %if.end12

if.end7.i.i.for.inc_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %if.end7.i.i
  %msi_desc = getelementptr %struct.ntb_msit_ctx, ptr %ctx, i32 0, i32 4, i32 %peer.050, i32 4
  %21 = ptrtoint ptr %msi_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msi_desc, align 4
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %msi_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %msi_desc, align 4
  %num_irqs = getelementptr %struct.ntb_msit_ctx, ptr %ctx, i32 0, i32 4, i32 %peer.050, i32 2
  %24 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i38, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp36.i.not = icmp eq i32 %call.i38, 0
  br i1 %cmp36.i.not, label %if.end12.ntb_msit_copy_peer_desc.exit_crit_edge, label %if.end12.for.body.i_crit_edge

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

if.end12.ntb_msit_copy_peer_desc.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_msit_copy_peer_desc.exit

for.body.i:                                       ; preds = %ntb_peer_spad_read.exit35.i.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %ntb_peer_spad_read.exit35.i.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  %mul.i = shl nuw i32 %i.037.i, 1
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 8
  %peer_spad_read.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %28, i32 0, i32 37
  %29 = ptrtoint ptr %peer_spad_read.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peer_spad_read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %for.body.i.ntb_peer_spad_read.exit.i_crit_edge, label %if.end.i.i39

for.body.i.ntb_peer_spad_read.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_peer_spad_read.exit.i

if.end.i.i39:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = or i32 %mul.i, 1
  %call.i.i = tail call i32 %30(ptr noundef %26, i32 noundef %peer.050, i32 noundef %add.i) #9
  br label %ntb_peer_spad_read.exit.i

ntb_peer_spad_read.exit.i:                        ; preds = %if.end.i.i39, %for.body.i.ntb_peer_spad_read.exit.i_crit_edge
  %retval.0.i.i40 = phi i32 [ %call.i.i, %if.end.i.i39 ], [ -1, %for.body.i.ntb_peer_spad_read.exit.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.ntb_msi_desc, ptr %call8.i.i, i32 %i.037.i
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i40, ptr %arrayidx3.i, align 8
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %ops.i29.i = getelementptr inbounds %struct.ntb_dev, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ops.i29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i29.i, align 8
  %peer_spad_read.i30.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 37
  %36 = ptrtoint ptr %peer_spad_read.i30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %peer_spad_read.i30.i, align 4
  %tobool.not.i31.i = icmp eq ptr %37, null
  br i1 %tobool.not.i31.i, label %ntb_peer_spad_read.exit.i.ntb_peer_spad_read.exit35.i_crit_edge, label %if.end.i33.i

ntb_peer_spad_read.exit.i.ntb_peer_spad_read.exit35.i_crit_edge: ; preds = %ntb_peer_spad_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_peer_spad_read.exit35.i

if.end.i33.i:                                     ; preds = %ntb_peer_spad_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add6.i = add nuw i32 %mul.i, 2
  %call.i32.i = tail call i32 %37(ptr noundef %33, i32 noundef %peer.050, i32 noundef %add6.i) #9
  br label %ntb_peer_spad_read.exit35.i

ntb_peer_spad_read.exit35.i:                      ; preds = %if.end.i33.i, %ntb_peer_spad_read.exit.i.ntb_peer_spad_read.exit35.i_crit_edge
  %retval.0.i34.i = phi i32 [ %call.i32.i, %if.end.i33.i ], [ -1, %ntb_peer_spad_read.exit.i.ntb_peer_spad_read.exit35.i_crit_edge ]
  %data.i = getelementptr %struct.ntb_msi_desc, ptr %call8.i.i, i32 %i.037.i, i32 1
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i34.i, ptr %data.i, align 4
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i38
  br i1 %exitcond.not.i, label %ntb_peer_spad_read.exit35.i.ntb_msit_copy_peer_desc.exit_crit_edge, label %ntb_peer_spad_read.exit35.i.for.body.i_crit_edge

ntb_peer_spad_read.exit35.i.for.body.i_crit_edge: ; preds = %ntb_peer_spad_read.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ntb_peer_spad_read.exit35.i.ntb_msit_copy_peer_desc.exit_crit_edge: ; preds = %ntb_peer_spad_read.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ntb_msit_copy_peer_desc.exit

ntb_msit_copy_peer_desc.exit:                     ; preds = %ntb_peer_spad_read.exit35.i.ntb_msit_copy_peer_desc.exit_crit_edge, %if.end12.ntb_msit_copy_peer_desc.exit_crit_edge
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.34, i32 noundef %call.i38, i32 noundef %peer.050) #12
  %init_comp.i = getelementptr %struct.ntb_msit_ctx, ptr %ctx, i32 0, i32 4, i32 %peer.050, i32 3
  tail call void @complete_all(ptr noundef %init_comp.i) #9
  br label %for.inc

for.inc:                                          ; preds = %ntb_msit_copy_peer_desc.exit, %if.end7.i.i.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %ntb_peer_spad_read.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %peer.050, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_msi_clear_mws(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_clear_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 10, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version238, !4, !"__UNIQUE_ID_version238", i1 false, i1 false}
!4 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 11, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 12, i32 1}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 13, i32 1}
!13 = !{ptr @__param_num_irqs, !14, !"__param_num_irqs", i1 false, i1 false}
!14 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 16, i32 1}
!15 = !{ptr @__UNIQUE_ID_num_irqstype241, !14, !"__UNIQUE_ID_num_irqstype241", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_num_irqs242, !17, !"__UNIQUE_ID_num_irqs242", i1 false, i1 false}
!17 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 17, i32 1}
!18 = !{ptr @__initcall__kmod_ntb_msi_test__246_425_ntb_msit_init6, !19, !"__initcall__kmod_ntb_msi_test__246_425_ntb_msit_init6", i1 false, i1 false}
!19 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 425, i32 1}
!20 = !{ptr @__exitcall_ntb_msit_exit, !21, !"__exitcall_ntb_msit_exit", i1 false, i1 false}
!21 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 432, i32 1}
!22 = !{ptr @ntb_msit_dbgfs_topdir, !23, !"ntb_msit_dbgfs_topdir", i1 false, i1 false}
!23 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 41, i32 23}
!24 = !{ptr @__param_str_num_irqs, !14, !"__param_str_num_irqs", i1 false, i1 false}
!25 = !{ptr @num_irqs, !26, !"num_irqs", i1 false, i1 false}
!26 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 15, i32 12}
!27 = !{ptr @ntb_msit_client, !28, !"ntb_msit_client", i1 false, i1 false}
!28 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 404, i32 26}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 330, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ntb_msit_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @ntb_msit_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 337, i32 3}
!39 = !{ptr @ntb_msit_probe._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ntb_msit_probe._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 343, i32 3}
!43 = !{ptr @ntb_msit_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ntb_msit_probe._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 349, i32 3}
!47 = !{ptr @ntb_msit_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ntb_msit_probe._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ntb_msit_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 363, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 109, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ntb_msit_desc_changed.__UNIQUE_ID_ddebug244, !53, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 67, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ntb_msit_setup_work._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ntb_msit_setup_work._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 48, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ntb_msit_isr.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 279, i32 22}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 287, i32 30}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 290, i32 30}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 297, i32 30}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 301, i32 30}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 307, i32 30}
!77 = !{ptr @ntb_msit_local_port_fops, !78, !"ntb_msit_local_port_fops", i1 false, i1 false}
!78 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 266, i32 1}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @init_completion.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../include/linux/completion.h", i32 87, i32 2}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ntb_msit_trigger_fops, !84, !"ntb_msit_trigger_fops", i1 false, i1 false}
!84 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 198, i32 1}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 191, i32 2}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ntb_msit_dbgfs_trigger.__UNIQUE_ID_ddebug245, !86, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!89 = !{ptr @ntb_msit_port_fops, !90, !"ntb_msit_port_fops", i1 false, i1 false}
!90 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 210, i32 1}
!91 = !{ptr @ntb_msit_count_fops, !92, !"ntb_msit_count_fops", i1 false, i1 false}
!92 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 222, i32 1}
!93 = !{ptr @ntb_msit_ready_fops, !94, !"ntb_msit_ready_fops", i1 false, i1 false}
!94 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 241, i32 1}
!95 = !{ptr @ntb_msit_occurrences_fops, !96, !"ntb_msit_occurrences_fops", i1 false, i1 false}
!96 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 253, i32 1}
!97 = !{ptr @ntb_msit_ops, !98, !"ntb_msit_ops", i1 false, i1 false}
!98 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 179, i32 33}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ntb/test/ntb_msi_test.c", i32 143, i32 2}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ntb_msit_copy_peer_desc._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @ntb_msit_copy_peer_desc._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2148961159, i64 2148961164, i64 2148961177, i64 2148961221, i64 2148961255, i64 2148961276}
