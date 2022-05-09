; ModuleID = '/llk/IR_all_yes/drivers/pps/clients/pps_parport.c_pt.bc'
source_filename = "../drivers/pps/clients/pps_parport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pps_client_pp = type { ptr, ptr, i32, i32, i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__UNIQUE_ID_clear_wait223 = internal constant [131 x i8] c"pps_parport.parm=clear_wait:Maximum number of port reads when polling for signal clear, zero turns clear edge capture off entirely\00", section ".modinfo", align 1
@__param_str_clear_wait = internal constant [23 x i8] c"pps_parport.clear_wait\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@clear_wait = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_clear_wait = internal constant %struct.kernel_param { ptr @__param_str_clear_wait, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @clear_wait } }, section "__param", align 4
@__UNIQUE_ID_clear_waittype224 = internal constant [37 x i8] c"pps_parport.parmtype=clear_wait:uint\00", section ".modinfo", align 1
@__initcall__kmod_pps_parport__225_221_pps_parport_driver_init6 = internal global ptr @pps_parport_driver_init, section ".initcall6.init", align 4
@pps_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @parport_detach, ptr @parport_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_pps_parport_driver_exit = internal global ptr @pps_parport_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author226 = internal constant [61 x i8] c"pps_parport.author=Alexander Gordeev <lasaine@lvk.cs.msu.su>\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [49 x i8] c"pps_parport.description=parallel port PPS client\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [49 x i8] c"pps_parport.file=drivers/pps/clients/pps_parport\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [24 x i8] c"pps_parport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pps_parport\00", [20 x i8] zeroinitializer }, align 32
@pps_client_index = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pps_client_index.xa_lock\00", [39 x i8] zeroinitializer }, align 32
@__const.parport_attach.info = private unnamed_addr constant %struct.pps_source_info { [32 x i8] c"pps_parport\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, i32 4595, ptr null, ptr null, ptr null }, align 4
@parport_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013pps_parport: clear_wait value should be not greater then %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parport_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pps/clients/pps_parport.c\00", [62 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr = internal global ptr @parport_attach._entry, section ".printk_index", align 4
@parport_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013pps_parport: memory allocation failed, not attaching\0A\00", [40 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr.7 = internal global ptr @parport_attach._entry.5, section ".printk_index", align 4
@parport_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pps_parport: couldn't register with %s\0A\00", [54 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr.10 = internal global ptr @parport_attach._entry.8, section ".printk_index", align 4
@parport_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013pps_parport: couldn't claim %s\0A\00", [62 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr.13 = internal global ptr @parport_attach._entry.11, section ".printk_index", align 4
@parport_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pps_parport: couldn't register PPS source\0A\00", [51 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr.16 = internal global ptr @parport_attach._entry.14, section ".printk_index", align 4
@parport_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016pps_parport: attached to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@parport_attach._entry_ptr.19 = internal global ptr @parport_attach._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parport_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 84, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lost the signal\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"parport_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@parport_irq._entry_ptr = internal global ptr @parport_irq._entry, section ".printk_index", align 4
@parport_irq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 102, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"disabled clear edge capture after %d timeouts\0A\00", [49 x i8] zeroinitializer }, align 32
@parport_irq._entry_ptr.26 = internal global ptr @parport_irq._entry.24, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"clear_wait\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 30, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"pps_parport_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 215, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 221, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"pps_client_index\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 36, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 140, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 147, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 161, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 166, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 173, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 182, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 84, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [37 x i8] c"../drivers/pps/clients/pps_parport.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_clear_wait223, ptr @__UNIQUE_ID_clear_waittype224, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_pps_parport_driver_exit, ptr @__initcall__kmod_pps_parport__225_221_pps_parport_driver_init6, ptr @__param_clear_wait, ptr @parport_attach._entry, ptr @parport_attach._entry.11, ptr @parport_attach._entry.14, ptr @parport_attach._entry.17, ptr @parport_attach._entry.5, ptr @parport_attach._entry.8, ptr @parport_attach._entry_ptr, ptr @parport_attach._entry_ptr.10, ptr @parport_attach._entry_ptr.13, ptr @parport_attach._entry_ptr.16, ptr @parport_attach._entry_ptr.19, ptr @parport_attach._entry_ptr.7, ptr @parport_irq._entry, ptr @parport_irq._entry.24, ptr @parport_irq._entry_ptr, ptr @parport_irq._entry_ptr.26, ptr @pps_parport_driver_exit, ptr @clear_wait, ptr @pps_parport_driver, ptr @.str, ptr @pps_client_index, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_client_index to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_irq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_parport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @pps_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pps_parport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @parport_unregister_driver(ptr noundef nonnull @pps_parport_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_detach(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cad = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 13
  %0 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cad, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(12) @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.parport_operations, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_irq, align 4
  tail call void %9(ptr noundef %port) #7
  %pps = getelementptr inbounds %struct.pps_client_pp, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pps, align 4
  tail call void @pps_unregister_source(ptr noundef %11) #7
  tail call void @parport_release(ptr noundef nonnull %1) #7
  tail call void @parport_unregister_device(ptr noundef nonnull %1) #7
  %index = getelementptr inbounds %struct.pps_client_pp, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  tail call void @ida_free(ptr noundef nonnull @pps_client_index, i32 noundef %13) #7
  tail call void @kfree(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_attach(ptr noundef %port) #2 align 64 {
entry:
  %pps_client_cb = alloca %struct.pardev_cb, align 8
  %info = alloca %struct.pps_source_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pps_client_cb) #7
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %pps_client_cb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %pps_client_cb, i32 0, i32 3
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %pps_client_cb, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %info) #7
  %3 = call ptr @memcpy(ptr %info, ptr @__const.parport_attach.info, i32 80)
  %4 = load i32, ptr @clear_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %4)
  %cmp = icmp ugt i32 %4, 100
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 100) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @ida_alloc_range(ptr noundef nonnull @pps_client_index, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  %6 = ptrtoint ptr %pps_client_cb to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %pps_client_cb, align 8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %0, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @parport_irq, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %2, align 8
  %call10 = call ptr @parport_register_dev_model(ptr noundef %port, ptr noundef nonnull @.str, ptr noundef nonnull %pps_client_cb, i32 noundef %call9) #7
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %call7.i.i, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %12) #11
  br label %err_free

if.end19:                                         ; preds = %if.end8
  %call21 = call i32 @parport_claim_or_block(ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %name28 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %13 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name28, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %14) #11
  br label %err_unregister_dev

if.end30:                                         ; preds = %if.end19
  %call31 = call ptr @pps_register_source(ptr noundef nonnull %info, i32 noundef 51) #7
  %pps = getelementptr inbounds %struct.pps_client_pp, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %pps, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  call void @parport_release(ptr noundef %17) #7
  br label %err_unregister_dev

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @clear_wait, align 4
  %cw = getelementptr inbounds %struct.pps_client_pp, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %cw to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cw, align 8
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable_irq, align 4
  call void %23(ptr noundef %port) #7
  %index41 = getelementptr inbounds %struct.pps_client_pp, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %index41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call9, ptr %index41, align 8
  %name46 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %25 = ptrtoint ptr %name46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name46, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %26) #11
  br label %cleanup

err_unregister_dev:                               ; preds = %do.end37, %do.end26
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  call void @parport_unregister_device(ptr noundef %28) #7
  br label %err_free

err_free:                                         ; preds = %err_unregister_dev, %do.end16
  call void @ida_free(ptr noundef nonnull @pps_client_index, i32 noundef %call9) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end40, %do.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %info) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pps_client_cb) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_unregister_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_irq(ptr nocapture noundef %handle) #2 align 64 {
entry:
  %snap.i180 = alloca %struct.system_time_snapshot, align 8
  %snap.i = alloca %struct.system_time_snapshot, align 8
  %ts_assert = alloca %struct.pps_event_time, align 8
  %ts_clear = alloca %struct.pps_event_time, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts_assert) #7
  %0 = call ptr @memset(ptr %ts_assert, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts_clear) #7
  %1 = call ptr @memset(ptr %ts_clear, i32 255, i32 16)
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %port1 = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %snap.i) #7
  %6 = call ptr @memset(ptr %snap.i, i32 255, i32 40)
  call void @ktime_get_snapshot(ptr noundef nonnull %snap.i) #7
  %real.i = getelementptr inbounds %struct.system_time_snapshot, ptr %snap.i, i32 0, i32 1
  %7 = ptrtoint ptr %real.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %real.i, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts_assert, i64 noundef %8) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %snap.i) #7
  %cw = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 2
  %9 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %entry.out_assert_crit_edge, label %do.body2

entry.out_assert_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_assert

do.body2:                                         ; preds = %entry
  %11 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !70
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then11, label %do.body2.do.end14_crit_edge

do.body2.do.end14_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body2.do.end14_crit_edge
  %ops.i = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_status.i, align 4
  %call.i = call zeroext i8 %15(ptr noundef %5) #7
  %16 = and i8 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %do.body18, label %if.end53

do.body18:                                        ; preds = %do.end14
  br i1 %tobool.not, label %if.then27, label %do.body18.do.body29_crit_edge

do.body18.do.body29_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.body18.do.body29_crit_edge
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !72

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #7, !srcloc !73
  %pps = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 1
  %18 = ptrtoint ptr %pps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pps, align 4
  %dev52 = getelementptr inbounds %struct.pps_device, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.20) #11
  br label %out_assert

if.end53:                                         ; preds = %do.end14
  %22 = ptrtoint ptr %cw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool55.not187 = icmp eq i32 %23, 0
  br i1 %tobool55.not187, label %if.end53.do.body96_crit_edge, label %if.end53.for.body_crit_edge

if.end53.for.body_crit_edge:                      ; preds = %if.end53
  br label %for.body

if.end53.do.body96_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96

for.cond:                                         ; preds = %for.body
  %dec = add i32 %i.0188, -1
  %tobool55.not = icmp eq i32 %dec, 0
  br i1 %tobool55.not, label %for.cond.do.body96_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.do.body96_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end53.for.body_crit_edge
  %i.0188 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ %23, %if.end53.for.body_crit_edge ]
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %read_status.i177 = getelementptr inbounds %struct.parport_operations, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %read_status.i177 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_status.i177, align 4
  %call.i178 = call zeroext i8 %27(ptr noundef %5) #7
  %28 = and i8 %call.i178, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool57.not = icmp eq i8 %28, 0
  br i1 %tobool57.not, label %if.then58, label %for.cond

if.then58:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %snap.i180) #7
  %29 = call ptr @memset(ptr %snap.i180, i32 255, i32 40)
  call void @ktime_get_snapshot(ptr noundef nonnull %snap.i180) #7
  %real.i182 = getelementptr inbounds %struct.system_time_snapshot, ptr %snap.i180, i32 0, i32 1
  %30 = ptrtoint ptr %real.i182 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %real.i182, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts_clear, i64 noundef %31) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %snap.i180) #7
  br i1 %tobool.not, label %if.then68, label %if.then58.do.body70_crit_edge

if.then58.do.body70_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

if.then68:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body70

do.body70:                                        ; preds = %if.then68, %if.then58.do.body70_crit_edge
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %and.i.i184 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i184)
  %tobool78.not = icmp eq i32 %and.i.i184, 0
  br i1 %tobool78.not, label %if.then87, label %do.body70.do.end90_crit_edge, !prof !72

do.body70.do.end90_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.then87:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body70.do.end90_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #7, !srcloc !73
  %cw_err = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 3
  %33 = ptrtoint ptr %cw_err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cw_err, align 4
  %pps147 = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 1
  %34 = ptrtoint ptr %pps147 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pps147, align 4
  call void @pps_event(ptr noundef %35, ptr noundef nonnull %ts_assert, i32 noundef 1, ptr noundef null) #7
  %36 = ptrtoint ptr %pps147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pps147, align 4
  call void @pps_event(ptr noundef %37, ptr noundef nonnull %ts_clear, i32 noundef 2, ptr noundef null) #7
  br label %cleanup

do.body96:                                        ; preds = %for.cond.do.body96_crit_edge, %if.end53.do.body96_crit_edge
  br i1 %tobool.not, label %if.then105, label %do.body96.do.body107_crit_edge

do.body96.do.body107_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

if.then105:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body107

do.body107:                                       ; preds = %if.then105, %do.body96.do.body107_crit_edge
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !71
  %and.i.i186 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i186)
  %tobool115.not = icmp eq i32 %and.i.i186, 0
  br i1 %tobool115.not, label %if.then124, label %do.body107.do.end127_crit_edge, !prof !72

do.body107.do.end127_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end127

if.then124:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end127

do.end127:                                        ; preds = %if.then124, %do.body107.do.end127_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #7, !srcloc !73
  %cw_err132 = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 3
  %39 = ptrtoint ptr %cw_err132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cw_err132, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %cw_err132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp134 = icmp ugt i32 %inc, 4
  br i1 %cmp134, label %do.end139, label %do.end127.out_assert_crit_edge

do.end127.out_assert_crit_edge:                   ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_assert

do.end139:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #9
  %pps140 = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 1
  %41 = ptrtoint ptr %pps140 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pps140, align 4
  %dev141 = getelementptr inbounds %struct.pps_device, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev141, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.25, i32 noundef %inc) #11
  %45 = ptrtoint ptr %cw to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cw, align 4
  %46 = ptrtoint ptr %cw_err132 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cw_err132, align 4
  br label %out_assert

out_assert:                                       ; preds = %do.end139, %do.end127.out_assert_crit_edge, %do.end44, %entry.out_assert_crit_edge
  %pps146 = getelementptr inbounds %struct.pps_client_pp, ptr %handle, i32 0, i32 1
  %47 = ptrtoint ptr %pps146 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pps146, align 4
  call void @pps_event(ptr noundef %48, ptr noundef nonnull %ts_assert, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %out_assert, %do.end90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts_clear) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts_assert) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pps_register_source(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pps_event(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_snapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !18, !19, !21, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !56, !57, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__UNIQUE_ID_clear_wait223, !1, !"__UNIQUE_ID_clear_wait223", i1 false, i1 false}
!1 = !{!"../drivers/pps/clients/pps_parport.c", i32 31, i32 1}
!2 = !{ptr @__param_clear_wait, !3, !"__param_clear_wait", i1 false, i1 false}
!3 = !{!"../drivers/pps/clients/pps_parport.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_clear_waittype224, !3, !"__UNIQUE_ID_clear_waittype224", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_pps_parport__225_221_pps_parport_driver_init6, !6, !"__initcall__kmod_pps_parport__225_221_pps_parport_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/pps/clients/pps_parport.c", i32 221, i32 1}
!7 = !{ptr @__exitcall_pps_parport_driver_exit, !6, !"__exitcall_pps_parport_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author226, !9, !"__UNIQUE_ID_author226", i1 false, i1 false}
!9 = !{!"../drivers/pps/clients/pps_parport.c", i32 223, i32 1}
!10 = !{ptr @__UNIQUE_ID_description227, !11, !"__UNIQUE_ID_description227", i1 false, i1 false}
!11 = !{!"../drivers/pps/clients/pps_parport.c", i32 224, i32 1}
!12 = !{ptr @__UNIQUE_ID_file228, !13, !"__UNIQUE_ID_file228", i1 false, i1 false}
!13 = !{!"../drivers/pps/clients/pps_parport.c", i32 225, i32 1}
!14 = !{ptr @__UNIQUE_ID_license229, !13, !"__UNIQUE_ID_license229", i1 false, i1 false}
!15 = !{ptr @__param_str_clear_wait, !3, !"__param_str_clear_wait", i1 false, i1 false}
!16 = !{ptr @clear_wait, !17, !"clear_wait", i1 false, i1 false}
!17 = !{!"../drivers/pps/clients/pps_parport.c", i32 30, i32 21}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pps_parport_driver, !20, !"pps_parport_driver", i1 false, i1 false}
!20 = !{!"../drivers/pps/clients/pps_parport.c", i32 215, i32 30}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pps/clients/pps_parport.c", i32 36, i32 8}
!23 = !{ptr @pps_client_index, !22, !"pps_client_index", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pps/clients/pps_parport.c", i32 140, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @parport_attach._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @parport_attach._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pps/clients/pps_parport.c", i32 147, i32 3}
!32 = !{ptr @parport_attach._entry.5, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @parport_attach._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pps/clients/pps_parport.c", i32 161, i32 3}
!36 = !{ptr @parport_attach._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @parport_attach._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pps/clients/pps_parport.c", i32 166, i32 3}
!40 = !{ptr @parport_attach._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @parport_attach._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pps/clients/pps_parport.c", i32 173, i32 3}
!44 = !{ptr @parport_attach._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @parport_attach._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pps/clients/pps_parport.c", i32 182, i32 2}
!48 = !{ptr @parport_attach._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @parport_attach._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pps/clients/pps_parport.c", i32 84, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @parport_irq._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @parport_irq._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pps/clients/pps_parport.c", i32 101, i32 3}
!59 = !{ptr @parport_irq._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @parport_irq._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 605947, i64 606008}
!71 = !{i64 608679}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 608964}
