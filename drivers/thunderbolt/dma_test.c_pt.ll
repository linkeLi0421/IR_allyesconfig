; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/dma_test.c_pt.bc'
source_filename = "../drivers/thunderbolt/dma_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tb_service_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_service_id = type { i32, [9 x i8], i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dma_test = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, ptr }
%struct.tb_service = type { %struct.device, i32, ptr, i32, i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.tb_xdomain = type { %struct.device, ptr, ptr, ptr, i64, i16, i16, i32, i32, %struct.mutex, ptr, ptr, i32, i32, i8, i8, %struct.ida, %struct.ida, %struct.ida, ptr, i32, i32, ptr, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_ring = type { %struct.spinlock, ptr, i32, i32, i32, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.work_struct, i8, i32, i8, i32, i32, i16, i16, ptr, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.dma_test_frame = type { ptr, ptr, %struct.ring_frame }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_thunderbolt_dma_test__244_746_dma_test_init6 = internal global ptr @dma_test_init, section ".initcall6.init", align 4
@dma_test_driver = internal global { %struct.tb_service_driver, [36 x i8] } { %struct.tb_service_driver { %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dma_test_pm_ops, ptr null, ptr null }, ptr @dma_test_probe, ptr @dma_test_remove, ptr null, ptr @dma_test_ids }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_test\00", [23 x i8] zeroinitializer }, align 32
@dma_test_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dma_test_pattern = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_dma_test_exit = internal global ptr @dma_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [64 x i8] c"thunderbolt_dma_test.author=Isaac Hazan <isaac.hazan@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [78 x i8] c"thunderbolt_dma_test.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [57 x i8] c"thunderbolt_dma_test.description=DMA traffic test driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [67 x i8] c"thunderbolt_dma_test.file=drivers/thunderbolt/thunderbolt_dma_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [36 x i8] c"thunderbolt_dma_test.license=GPL v2\00", section ".modinfo", align 1
@dma_test_dir_uuid = internal constant { %struct.uuid_t, [16 x i8] } { %struct.uuid_t { [16 x i8] c"1\88\CD\10e#JZ\A6\82\FD\CA\07\A2H\D8" }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prtcid\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcvers\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcrevs\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcstns\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thunderbolt_dma_test\00", [43 x i8] zeroinitializer }, align 32
@dma_test_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dma_test_suspend, ptr @dma_test_resume, ptr @dma_test_suspend, ptr @dma_test_resume, ptr @dma_test_suspend, ptr @dma_test_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dma_test_ids = internal constant { [2 x %struct.tb_service_id], [32 x i8] } { [2 x %struct.tb_service_id] [%struct.tb_service_id { i32 3, [9 x i8] c"dma_test\00", i32 1, i32 0, i32 0, i32 0 }, %struct.tb_service_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dma_test_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dt->lock\00", [22 x i8] zeroinitializer }, align 32
@tb_xdomain_type = external dso_local global %struct.device_type, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lanes\00", [26 x i8] zeroinitializer }, align 32
@lanes_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lanes_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@speed_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @speed_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"packets_to_receive\00", [45 x i8] zeroinitializer }, align 32
@packets_to_receive_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @packets_to_receive_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"packets_to_send\00", [16 x i8] zeroinitializer }, align 32
@packets_to_send_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @packets_to_send_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@test_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @test_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"result: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@dma_test_result_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"packets received: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"packets sent: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRC errors: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"buffer overflow errors: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@dma_test_error_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"not run\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no errors\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interrupted by signal\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no memory for packet buffers\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA ring setup failed\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"configuration is not valid\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected link speed\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected link width\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lane bonding configuration error\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"packet check failed\00", [44 x i8] zeroinitializer }, align 32
@test_store.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_store\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/thunderbolt/dma_test.c\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA test starting\0A\00", [45 x i8] zeroinitializer }, align 32
@test_store.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.36, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_speed: %u Gb/s\0A\00", [43 x i8] zeroinitializer }, align 32
@test_store.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.37, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link_width: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@test_store.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.38, i8 0, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"packets_to_send: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@test_store.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.39, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"packets_to_receive: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@test_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.34, i32 536, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid test configuration\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@test_store._entry_ptr = internal global ptr @test_store._entry, section ".printk_index", align 4
@test_store._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.34, i32 543, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set lanes\0A\00", [43 x i8] zeroinitializer }, align 32
@test_store._entry_ptr.45 = internal global ptr @test_store._entry.43, section ".printk_index", align 4
@test_store._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.34, i32 550, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable DMA rings\0A\00", [36 x i8] zeroinitializer }, align 32
@test_store._entry_ptr.48 = internal global ptr @test_store._entry.46, section ".printk_index", align 4
@test_store._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.33, ptr @.str.34, i32 559, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to submit receive buffers\0A\00", [62 x i8] zeroinitializer }, align 32
@test_store._entry_ptr.51 = internal global ptr @test_store._entry.49, section ".printk_index", align 4
@test_store._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.33, ptr @.str.34, i32 568, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to submit transmit buffers\0A\00", [61 x i8] zeroinitializer }, align 32
@test_store._entry_ptr.54 = internal global ptr @test_store._entry.52, section ".printk_index", align 4
@test_store.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.34, ptr @.str.55, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA test %s\0A\00", [19 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dma_test_rx_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.34, ptr @.str.59, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_test_rx_callback\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"packet %u/%u received\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thunderbolt.h\00", [36 x i8] zeroinitializer }, align 32
@dma_test_submit_tx.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.61, ptr @.str.34, ptr @.str.62, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_test_submit_tx\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"packet %u/%u sent\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_test_stop_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.34, i32 225, ptr @.str.65, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable DMA paths\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dma_test_stop_rings\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dma_test_stop_rings._entry_ptr = internal global ptr @dma_test_stop_rings._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 64, i64 0, i64 10, i64 20]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"dma_test_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 693, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 751, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"dma_test_dir\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 119, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"dma_test_pattern\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 120, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"dma_test_dir_uuid\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 115, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 722, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 723, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 724, i32 42 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 725, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 696, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"dma_test_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 683, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"dma_test_ids\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 687, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 647, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 87, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 626, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"lanes_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 627, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"speed_fops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 428, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 628, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"packets_to_receive_fops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 444, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 630, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"packets_to_send_fops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 461, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 632, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"status_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 618, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 633, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"test_fops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 591, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 405, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 603, i32 16 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"dma_test_result_names\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 63, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 607, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 608, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 609, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 610, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 612, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"dma_test_error_names\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 45, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 64, i32 23 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 65, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 66, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 46, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 47, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 48, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 49, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 50, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 51, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 52, i32 27 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 53, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 54, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 527, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 529, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 531, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 532, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 533, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 536, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 543, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 550, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 559, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 568, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 588, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 326, i32 6 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 247, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [31 x i8] c"../include/linux/thunderbolt.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 618, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 349, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [34 x i8] c"../drivers/thunderbolt/dma_test.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 225, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_dma_test_exit, ptr @__initcall__kmod_thunderbolt_dma_test__244_746_dma_test_init6, ptr @dma_test_exit, ptr @dma_test_stop_rings._entry, ptr @dma_test_stop_rings._entry_ptr, ptr @test_store._entry, ptr @test_store._entry.43, ptr @test_store._entry.46, ptr @test_store._entry.49, ptr @test_store._entry.52, ptr @test_store._entry_ptr, ptr @test_store._entry_ptr.45, ptr @test_store._entry_ptr.48, ptr @test_store._entry_ptr.51, ptr @test_store._entry_ptr.54, ptr @dma_test_driver, ptr @.str, ptr @dma_test_dir, ptr @dma_test_pattern, ptr @dma_test_dir_uuid, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dma_test_pm_ops, ptr @dma_test_ids, ptr @dma_test_probe.__key, ptr @.str.6, ptr @init_completion.__key, ptr @.str.7, ptr @.str.8, ptr @lanes_fops, ptr @.str.9, ptr @speed_fops, ptr @.str.10, ptr @packets_to_receive_fops, ptr @.str.11, ptr @packets_to_send_fops, ptr @.str.12, ptr @status_fops, ptr @.str.13, ptr @test_fops, ptr @.str.14, ptr @.str.15, ptr @dma_test_result_names, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dma_test_error_names, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_dir_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lanes_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packets_to_receive_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packets_to_send_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_result_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_error_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_store._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_store._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_store._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_store._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_test_stop_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #9
  store ptr %call7.i, ptr @dma_test_pattern, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %data_value.024 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 81985529216486895, %entry.for.body_crit_edge ]
  %inc = add nuw nsw i64 %data_value.024, 1
  %conv = trunc i64 %data_value.024 to i32
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %i.025
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %arrayidx, align 4
  %inc1 = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc1, 512
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %call2 = tail call ptr @tb_property_create_dir(ptr noundef nonnull @dma_test_dir_uuid) #6
  store ptr %call2, ptr @dma_test_dir, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %for.end.err_free_pattern_crit_edge, label %if.end5

for.end.err_free_pattern_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_pattern

if.end5:                                          ; preds = %for.end
  %call6 = tail call i32 @tb_property_add_immediate(ptr noundef nonnull %call2, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %2 = load ptr, ptr @dma_test_dir, align 4
  %call7 = tail call i32 @tb_property_add_immediate(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 1) #6
  %3 = load ptr, ptr @dma_test_dir, align 4
  %call8 = tail call i32 @tb_property_add_immediate(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %4 = load ptr, ptr @dma_test_dir, align 4
  %call9 = tail call i32 @tb_property_add_immediate(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef 0) #6
  %5 = load ptr, ptr @dma_test_dir, align 4
  %call10 = tail call i32 @tb_register_property_dir(ptr noundef nonnull @.str, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.err_free_dir_crit_edge

if.end5.err_free_dir_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dir

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @tb_register_service_driver(ptr noundef nonnull @dma_test_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %err_unregister_dir

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_unregister_dir:                               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load ptr, ptr @dma_test_dir, align 4
  tail call void @tb_unregister_property_dir(ptr noundef nonnull @.str, ptr noundef %6) #6
  br label %err_free_dir

err_free_dir:                                     ; preds = %err_unregister_dir, %if.end5.err_free_dir_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end5.err_free_dir_crit_edge ], [ %call14, %err_unregister_dir ]
  %7 = load ptr, ptr @dma_test_dir, align 4
  tail call void @tb_property_free_dir(ptr noundef %7) #6
  br label %err_free_pattern

err_free_pattern:                                 ; preds = %err_free_dir, %for.end.err_free_pattern_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_dir ], [ -12, %for.end.err_free_pattern_crit_edge ]
  %8 = load ptr, ptr @dma_test_pattern, align 4
  tail call void @kfree(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_pattern, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free_pattern ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dma_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_unregister_service_driver(ptr noundef nonnull @dma_test_driver) #6
  %0 = load ptr, ptr @dma_test_dir, align 4
  tail call void @tb_unregister_property_dir(ptr noundef nonnull @.str, ptr noundef %0) #6
  %1 = load ptr, ptr @dma_test_dir, align 4
  tail call void @tb_property_free_dir(ptr noundef %1) #6
  %2 = load ptr, ptr @dma_test_pattern, align 4
  tail call void @kfree(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_unregister_service_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_unregister_property_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_property_free_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_property_create_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_property_add_immediate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_register_property_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_register_service_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_test_probe(ptr noundef %svc, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %svc, i32 noundef 216, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmp.i.i.i = icmp eq ptr %3, @tb_xdomain_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %svc, ptr %call.i, align 4
  %xd3 = getelementptr inbounds %struct.dma_test, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %xd3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev..i.i, ptr %xd3, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @dma_test_probe.__key) #6
  %complete = getelementptr inbounds %struct.dma_test, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.dma_test, ptr %call.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %debugfs_dir.i = getelementptr inbounds %struct.tb_service, ptr %svc, i32 0, i32 7
  %8 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_dir.i, align 8
  %call1.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %9) #6
  %debugfs_dir2.i = getelementptr inbounds %struct.dma_test, ptr %call.i, i32 0, i32 18
  %10 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i, ptr %debugfs_dir2.i, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call1.i, ptr noundef %svc, ptr noundef nonnull @lanes_fops) #6
  %11 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_dir2.i, align 4
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %svc, ptr noundef nonnull @speed_fops) #6
  %13 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_dir2.i, align 4
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %14, ptr noundef %svc, ptr noundef nonnull @packets_to_receive_fops) #6
  %15 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_dir2.i, align 4
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %16, ptr noundef %svc, ptr noundef nonnull @packets_to_send_fops) #6
  %17 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_dir2.i, align 4
  %call12.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %svc, ptr noundef nonnull @status_fops) #6
  %19 = ptrtoint ptr %debugfs_dir2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debugfs_dir2.i, align 4
  %call14.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 128, ptr noundef %20, ptr noundef %svc, ptr noundef nonnull @test_fops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_test_remove(ptr nocapture noundef readonly %svc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %debugfs_dir = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dma_test_suspend(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dma_test_resume(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanes_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @lanes_show, ptr noundef nonnull @lanes_store, ptr noundef nonnull @.str.14) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanes_show(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %link_width.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %link_width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_width.i, align 4
  %conv.i = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lanes_store(ptr nocapture noundef readonly %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %val)
  %cmp.i = icmp ult i64 %val, 3
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %val to i32
  %link_width.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %link_width.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %link_width.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @speed_show, ptr noundef nonnull @speed_store, ptr noundef nonnull @.str.14) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_show(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %link_speed.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_speed.i, align 4
  %conv.i = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_store(ptr nocapture noundef readonly %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_switch(i64 %val, ptr @__sancov_gen_cov_switch_values)
  switch i64 %val, label %entry.cleanup_crit_edge [
    i64 20, label %entry.if.end_crit_edge
    i64 10, label %entry.if.end_crit_edge17
    i64 0, label %entry.if.end_crit_edge18
  ]

entry.if.end_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge17, %entry.if.end_crit_edge18
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %val to i32
  %link_speed.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %link_speed.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_receive_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @packets_to_receive_show, ptr noundef nonnull @packets_to_receive_store, ptr noundef nonnull @.str.14) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_receive_show(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %packets_to_receive.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packets_to_receive.i, align 4
  %conv.i = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_receive_store(ptr nocapture noundef readonly %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1001, i64 %val)
  %cmp.i = icmp ult i64 %val, 1001
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %val to i32
  %packets_to_receive.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %packets_to_receive.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_send_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @packets_to_send_show, ptr noundef nonnull @packets_to_send_store, ptr noundef nonnull @.str.14) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_send_show(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %packets_to_send.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packets_to_send.i, align 4
  %conv.i = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @packets_to_send_store(ptr nocapture noundef readonly %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1001, i64 %val)
  %cmp.i = icmp ult i64 %val, 1001
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i64 %val to i32
  %packets_to_send.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %packets_to_send.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @status_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %s, ptr nocapture noundef readnone %not_used) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %result = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @dma_test_result_names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef %7) #6
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %packets_received = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %packets_received to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packets_received, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %11) #6
  %packets_sent = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %packets_sent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %packets_sent, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %13) #6
  %crc_errors = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %crc_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crc_errors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %15) #6
  %buffer_overflow_errors = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %buffer_overflow_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_overflow_errors, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %17) #6
  %error_code = getelementptr inbounds %struct.dma_test, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error_code, align 4
  %arrayidx5 = getelementptr [9 x ptr], ptr @dma_test_error_names, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, ptr noundef %21) #6
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %if.end.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_fops_open(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @test_store, ptr noundef nonnull @.str.14) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_store(ptr noundef %data, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %val)
  %cmp.not = icmp eq i64 %val, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %packets_sent = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %packets_sent to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %packets_sent, align 4
  %packets_received = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %packets_received to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %packets_received, align 4
  %crc_errors = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %crc_errors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %crc_errors, align 4
  %buffer_overflow_errors = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %buffer_overflow_errors to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %buffer_overflow_errors, align 4
  %result = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %result, align 4
  %error_code = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %error_code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %error_code, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !179

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug238, ptr noundef %data, ptr noundef nonnull @.str.35) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end3
  %link_speed = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.end.if.end30_crit_edge, label %do.body12

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then24)) #6
          to label %if.end30 [label %if.then24], !srcloc !179

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_speed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug239, ptr noundef %data, ptr noundef nonnull @.str.36, i32 noundef %11) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %do.body12, %do.end.if.end30_crit_edge
  %link_width = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %link_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %link_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.end30.do.body52_crit_edge, label %do.body33

if.end30.do.body52_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body52

do.body33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then45)) #6
          to label %do.body52 [label %if.then45], !srcloc !179

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %link_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_width, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug240, ptr noundef %data, ptr noundef nonnull @.str.37, i32 noundef %15) #6
  br label %do.body52

do.body52:                                        ; preds = %if.then45, %do.body33, %if.end30.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then64)) #6
          to label %do.body69 [label %if.then64], !srcloc !179

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %packets_to_send = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %packets_to_send to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %packets_to_send, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug241, ptr noundef %data, ptr noundef nonnull @.str.38, i32 noundef %17) #6
  br label %do.body69

do.body69:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then81)) #6
          to label %do.end85 [label %if.then81], !srcloc !179

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  %packets_to_receive = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %packets_to_receive to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packets_to_receive, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug242, ptr noundef %data, ptr noundef nonnull @.str.39, i32 noundef %19) #6
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %packets_to_send.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %packets_to_send.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %packets_to_receive.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %packets_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true4.i

land.lhs.true.i:                                  ; preds = %do.end85
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge, label %land.lhs.true.i.if.end93_crit_edge

land.lhs.true.i.if.end93_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

land.lhs.true4.i:                                 ; preds = %do.end85
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not.i = icmp eq i32 %21, %23
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true4.i.if.end93_crit_edge, label %land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge

land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

land.lhs.true4.i.if.end93_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.end93:                                         ; preds = %land.lhs.true4.i.if.end93_crit_edge, %land.lhs.true.i.if.end93_crit_edge
  %24 = ptrtoint ptr %link_width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_width, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %25, label %if.end93.if.end102_crit_edge [
    i32 2, label %dma_test_set_bonding.exit
    i32 1, label %sw.bb1.i
  ]

if.end93.if.end102_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

sw.bb1.i:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %xd2.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %xd2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xd2.i, align 4
  tail call void @tb_xdomain_lane_bonding_disable(ptr noundef %28) #6
  br label %if.end102

dma_test_set_bonding.exit:                        ; preds = %if.end93
  %xd.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %xd.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xd.i, align 4
  %call.i = tail call i32 @tb_xdomain_lane_bonding_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool95.not = icmp eq i32 %call.i, 0
  br i1 %tobool95.not, label %dma_test_set_bonding.exit.if.end102_crit_edge, label %dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge

dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %dma_test_set_bonding.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

dma_test_set_bonding.exit.if.end102_crit_edge:    ; preds = %dma_test_set_bonding.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.end102:                                        ; preds = %dma_test_set_bonding.exit.if.end102_crit_edge, %sw.bb1.i, %if.end93.if.end102_crit_edge
  %xd1.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xd1.i, align 4
  %33 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %packets_to_send.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i242 = icmp eq i32 %34, 0
  br i1 %tobool.not.i242, label %if.end102.if.end12.i_crit_edge, label %if.then5.i

if.end102.if.end12.i_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then5.i:                                       ; preds = %if.end102
  %35 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %packets_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool2.not.i = icmp eq i32 %36, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 2, i32 6
  %tb.i = getelementptr inbounds %struct.tb_xdomain, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nhi.i, align 4
  %call.i244 = tail call ptr @tb_ring_alloc_tx(ptr noundef %40, i32 noundef -1, i32 noundef 64, i32 noundef %spec.select.i) #6
  %tobool6.not.i = icmp eq ptr %call.i244, null
  br i1 %tobool6.not.i, label %if.then5.i.if.end26.i.sink.split.sink.split_crit_edge, label %if.end8.i

if.then5.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

if.end8.i:                                        ; preds = %if.then5.i
  %tx_ring.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i244, ptr %tx_ring.i, align 4
  %hop.i = getelementptr inbounds %struct.tb_ring, ptr %call.i244, i32 0, i32 3
  %42 = ptrtoint ptr %hop.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hop.i, align 4
  %call9.i = tail call i32 @tb_xdomain_alloc_out_hopid(ptr noundef %32, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end11.i245

if.then10.i:                                      ; preds = %if.end8.i
  %rx_ring.i.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then10.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then10.i.if.end.i.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xd1.i, align 4
  %rx_hopid.i.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %rx_hopid.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_hopid.i.i, align 4
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %47, i32 noundef %49) #6
  %50 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_ring.i.i, align 4
  tail call void @tb_ring_free(ptr noundef %51) #6
  %52 = ptrtoint ptr %rx_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rx_ring.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then10.i.if.end.i.i_crit_edge
  %53 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_ring.i, align 4
  %tobool3.not.i.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge, label %if.then4.i.i

if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_hopid.i.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 5
  br label %do.end108.sink.split

if.end11.i245:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_hopid.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %tx_hopid.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call9.i, ptr %tx_hopid.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end11.i245, %if.end102.if.end12.i_crit_edge
  %flags.0142.i = phi i32 [ %spec.select.i, %if.end11.i245 ], [ 2, %if.end102.if.end12.i_crit_edge ]
  %e2e_tx_hop.0.i = phi i32 [ %43, %if.end11.i245 ], [ 0, %if.end102.if.end12.i_crit_edge ]
  %56 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %packets_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool14.not.i = icmp eq i32 %57, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end27.i_crit_edge, label %if.then15.i

if.end12.i.if.end27.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then15.i:                                      ; preds = %if.end12.i
  %tb16.i = getelementptr inbounds %struct.tb_xdomain, ptr %32, i32 0, i32 1
  %58 = ptrtoint ptr %tb16.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tb16.i, align 8
  %nhi17.i = getelementptr inbounds %struct.tb, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %nhi17.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %nhi17.i, align 4
  %call18.i = tail call ptr @tb_ring_alloc_rx(ptr noundef %61, i32 noundef -1, i32 noundef 256, i32 noundef %flags.0142.i, i32 noundef %e2e_tx_hop.0.i, i16 noundef zeroext 2, i16 noundef zeroext 4, ptr noundef null, ptr noundef null) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  %rx_ring.i105.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 2
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %if.then15.i
  %62 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_ring.i105.i, align 4
  %tobool.not.i106.i = icmp eq ptr %63, null
  br i1 %tobool.not.i106.i, label %if.then20.i.if.end.i112.i_crit_edge, label %if.then.i109.i

if.then20.i.if.end.i112.i_crit_edge:              ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i112.i

if.then.i109.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xd1.i, align 4
  %rx_hopid.i108.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %rx_hopid.i108.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_hopid.i108.i, align 4
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %65, i32 noundef %67) #6
  %68 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_ring.i105.i, align 4
  tail call void @tb_ring_free(ptr noundef %69) #6
  %70 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rx_ring.i105.i, align 4
  br label %if.end.i112.i

if.end.i112.i:                                    ; preds = %if.then.i109.i, %if.then20.i.if.end.i112.i_crit_edge
  %tx_ring.i110.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %tx_ring.i110.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ring.i110.i, align 4
  %tobool3.not.i111.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i111.i, label %if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge, label %if.then4.i115.i

if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

if.then4.i115.i:                                  ; preds = %if.end.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_hopid.i114.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 5
  br label %do.end108.sink.split

if.end21.i:                                       ; preds = %if.then15.i
  %73 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call18.i, ptr %rx_ring.i105.i, align 4
  %call22.i = tail call i32 @tb_xdomain_alloc_in_hopid(ptr noundef %32, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then24.i, label %cleanup.i

if.then24.i:                                      ; preds = %if.end21.i
  %74 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_ring.i105.i, align 4
  %tobool.not.i118.i = icmp eq ptr %75, null
  br i1 %tobool.not.i118.i, label %if.then24.i.if.end.i124.i_crit_edge, label %if.then.i121.i

if.then24.i.if.end.i124.i_crit_edge:              ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i124.i

if.then.i121.i:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xd1.i, align 4
  %rx_hopid.i120.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %rx_hopid.i120.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_hopid.i120.i, align 4
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %77, i32 noundef %79) #6
  %80 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx_ring.i105.i, align 4
  tail call void @tb_ring_free(ptr noundef %81) #6
  %82 = ptrtoint ptr %rx_ring.i105.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rx_ring.i105.i, align 4
  br label %if.end.i124.i

if.end.i124.i:                                    ; preds = %if.then.i121.i, %if.then24.i.if.end.i124.i_crit_edge
  %tx_ring.i122.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %tx_ring.i122.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_ring.i122.i, align 4
  %tobool3.not.i123.i = icmp eq ptr %84, null
  br i1 %tobool3.not.i123.i, label %if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge, label %if.then4.i127.i

if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

if.then4.i127.i:                                  ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_hopid.i126.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 5
  br label %do.end108.sink.split

cleanup.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %rx_hopid.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %rx_hopid.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call22.i, ptr %rx_hopid.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %cleanup.i, %if.end12.i.if.end27.i_crit_edge
  %86 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xd1.i, align 4
  %tx_hopid29.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %tx_hopid29.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_hopid29.i, align 4
  %tx_ring30.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_ring30.i, align 4
  %tobool31.not.i = icmp eq ptr %91, null
  br i1 %tobool31.not.i, label %if.end27.i.cond.end.i_crit_edge, label %cond.true.i

if.end27.i.cond.end.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %hop33.i = getelementptr inbounds %struct.tb_ring, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %hop33.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %hop33.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end27.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %93, %cond.true.i ], [ 0, %if.end27.i.cond.end.i_crit_edge ]
  %rx_hopid34.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 3
  %94 = ptrtoint ptr %rx_hopid34.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_hopid34.i, align 4
  %rx_ring35.i = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_ring35.i, align 4
  %tobool36.not.i = icmp eq ptr %97, null
  br i1 %tobool36.not.i, label %cond.end.i.cond.end41.i_crit_edge, label %cond.true37.i

cond.end.i.cond.end41.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end41.i

cond.true37.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %hop39.i = getelementptr inbounds %struct.tb_ring, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %hop39.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hop39.i, align 4
  br label %cond.end41.i

cond.end41.i:                                     ; preds = %cond.true37.i, %cond.end.i.cond.end41.i_crit_edge
  %cond42.i = phi i32 [ %99, %cond.true37.i ], [ 0, %cond.end.i.cond.end41.i_crit_edge ]
  %call43.i = tail call i32 @tb_xdomain_enable_paths(ptr noundef %87, i32 noundef %89, i32 noundef %cond.i, i32 noundef %95, i32 noundef %cond42.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.then45.i

if.then45.i:                                      ; preds = %cond.end41.i
  %100 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_ring35.i, align 4
  %tobool.not.i130.i = icmp eq ptr %101, null
  br i1 %tobool.not.i130.i, label %if.then45.i.if.end.i136.i_crit_edge, label %if.then.i133.i

if.then45.i.if.end.i136.i_crit_edge:              ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i136.i

if.then.i133.i:                                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %xd1.i, align 4
  %104 = ptrtoint ptr %rx_hopid34.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_hopid34.i, align 4
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %103, i32 noundef %105) #6
  %106 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_ring35.i, align 4
  tail call void @tb_ring_free(ptr noundef %107) #6
  %108 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rx_ring35.i, align 4
  br label %if.end.i136.i

if.end.i136.i:                                    ; preds = %if.then.i133.i, %if.then45.i.if.end.i136.i_crit_edge
  %109 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx_ring30.i, align 4
  %tobool3.not.i135.i = icmp eq ptr %110, null
  br i1 %tobool3.not.i135.i, label %if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge, label %if.end.i136.i.do.end108.sink.split_crit_edge

if.end.i136.i.do.end108.sink.split_crit_edge:     ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108.sink.split

if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge: ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split.sink.split

if.end46.i:                                       ; preds = %cond.end41.i
  %111 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_ring30.i, align 4
  %tobool48.not.i = icmp eq ptr %112, null
  br i1 %tobool48.not.i, label %if.end46.i.if.end51.i_crit_edge, label %if.then49.i

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_ring_start(ptr noundef nonnull %112) #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end51.i_crit_edge
  %113 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx_ring35.i, align 4
  %tobool53.not.i = icmp eq ptr %114, null
  br i1 %tobool53.not.i, label %if.end51.i.if.end111_crit_edge, label %if.then54.i

if.end51.i.if.end111_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then54.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_ring_start(ptr noundef nonnull %114) #6
  br label %if.end111

do.end108.sink.split:                             ; preds = %if.end.i136.i.do.end108.sink.split_crit_edge, %if.then4.i127.i, %if.then4.i115.i, %if.then4.i.i
  %tx_hopid.i.i.sink = phi ptr [ %tx_hopid.i.i, %if.then4.i.i ], [ %tx_hopid.i126.i, %if.then4.i127.i ], [ %tx_hopid.i114.i, %if.then4.i115.i ], [ %tx_hopid29.i, %if.end.i136.i.do.end108.sink.split_crit_edge ]
  %tx_ring.i.sink325 = phi ptr [ %tx_ring.i, %if.then4.i.i ], [ %tx_ring.i122.i, %if.then4.i127.i ], [ %tx_ring.i110.i, %if.then4.i115.i ], [ %tx_ring30.i, %if.end.i136.i.do.end108.sink.split_crit_edge ]
  %retval.1.i.ph.ph = phi i32 [ %call9.i, %if.then4.i.i ], [ %call22.i, %if.then4.i127.i ], [ -12, %if.then4.i115.i ], [ %call43.i, %if.end.i136.i.do.end108.sink.split_crit_edge ]
  %115 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.sink = load ptr, ptr %xd1.i, align 4
  %116 = ptrtoint ptr %tx_hopid.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_hopid.i.i.sink, align 4
  tail call void @tb_xdomain_release_out_hopid(ptr noundef %.sink, i32 noundef %117) #6
  %118 = ptrtoint ptr %tx_ring.i.sink325 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_ring.i.sink325, align 4
  tail call void @tb_ring_free(ptr noundef %119) #6
  %120 = ptrtoint ptr %tx_ring.i.sink325 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %tx_ring.i.sink325, align 4
  br label %if.end26.i.sink.split.sink.split

if.end111:                                        ; preds = %if.then54.i, %if.end51.i.if.end111_crit_edge
  %121 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %packets_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool113.not = icmp eq i32 %122, 0
  br i1 %tobool113.not, label %if.end111.if.end125_crit_edge, label %if.then114

if.end111.if.end125_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then114:                                       ; preds = %if.end111
  %complete = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 16
  %123 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %complete, align 4
  %124 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rx_ring35.i, align 4
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %tb_ring_rx.exit.i.for.body.i_crit_edge, %if.then114
  %i.057.i = phi i32 [ %inc.i, %tb_ring_rx.exit.i.for.body.i_crit_edge ], [ 0, %if.then114 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i246 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i246, label %for.body.i.out_stop.sink.split.sink.split_crit_edge, label %if.end.i

for.body.i.out_stop.sink.split.sink.split_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop.sink.split.sink.split

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %131 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i38.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %131, i32 noundef 3520, i32 noundef 4096) #9
  %data.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i38.i, ptr %data.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i38.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup20.sink.split.i_crit_edge, label %if.end6.i

if.end.i.cleanup20.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20.sink.split.i

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i38.i) #6
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end6.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i247, !prof !180

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i247:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #6
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44, i32 3
  %133 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i247.dev_name.exit.i.i_crit_edge

if.then.i.i247.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i247
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i247.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %136, %if.end.i.i.i ], [ %134, %if.then.i.i247.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef -1) #6
  br label %if.then11.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end6.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef nonnull %call7.i.i38.i, i32 noundef 4096) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %137 = load ptr, ptr @mem_map, align 4
  %138 = ptrtoint ptr %call7.i.i38.i to i32
  %sub.i.i = add i32 %138, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %137, i32 %shr.i.i
  %and.i.i = and i32 %138, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %call41.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then11.i_crit_edge, label %if.end13.i

dma_map_single_attrs.exit.i.if.then11.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then11.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %data.i322 = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %data.i322 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i322, align 4
  tail call void @kfree(ptr noundef %140) #6
  br label %cleanup20.sink.split.i

if.end13.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %frame.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call41.i.i, ptr %frame.i, align 8
  %callback.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @dma_test_rx_callback, ptr %callback.i, align 4
  %143 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %1, ptr %call7.i.i.i, align 8
  %list.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %144 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1
  %145 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %list.i, ptr %prev.i.i, align 4
  %146 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rx_ring35.i, align 4
  %is_tx.i.i = getelementptr inbounds %struct.tb_ring, ptr %147, i32 0, i32 11
  %148 = ptrtoint ptr %is_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load.i.i = load i8, ptr %is_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %if.end13.i.tb_ring_rx.exit.i_crit_edge, label %do.end.i.i, !prof !180

if.end13.i.tb_ring_rx.exit.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_ring_rx.exit.i

do.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 618, i32 noundef 9, ptr noundef null) #6
  br label %tb_ring_rx.exit.i

tb_ring_rx.exit.i:                                ; preds = %do.end.i.i, %if.end13.i.tb_ring_rx.exit.i_crit_edge
  %call.i39.i = tail call i32 @__tb_ring_enqueue(ptr noundef %147, ptr noundef %frame.i) #6
  %inc.i = add nuw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %122
  br i1 %exitcond.not.i, label %tb_ring_rx.exit.i.if.end125_crit_edge, label %tb_ring_rx.exit.i.for.body.i_crit_edge

tb_ring_rx.exit.i.for.body.i_crit_edge:           ; preds = %tb_ring_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tb_ring_rx.exit.i.if.end125_crit_edge:            ; preds = %tb_ring_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

cleanup20.sink.split.i:                           ; preds = %if.then11.i, %if.end.i.cleanup20.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %out_stop.sink.split.sink.split

if.end125:                                        ; preds = %tb_ring_rx.exit.i.if.end125_crit_edge, %if.end111.if.end125_crit_edge
  %149 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %packets_to_send.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool127.not = icmp eq i32 %150, 0
  br i1 %tobool127.not, label %if.end125.if.end139_crit_edge, label %if.then128

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then128:                                       ; preds = %if.end125
  %call130 = tail call fastcc i32 @dma_test_submit_tx(ptr noundef %1, i32 noundef %150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then128.if.end139_crit_edge, label %if.then128.out_stop.sink.split.sink.split_crit_edge

if.then128.out_stop.sink.split.sink.split_crit_edge: ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop.sink.split.sink.split

if.then128.if.end139_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.end139:                                        ; preds = %if.then128.if.end139_crit_edge, %if.end125.if.end139_crit_edge
  %151 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %packets_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool141.not = icmp eq i32 %152, 0
  br i1 %tobool141.not, label %if.end139.out_stop_crit_edge, label %if.then142

if.end139.out_stop_crit_edge:                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop

if.then142:                                       ; preds = %if.end139
  %complete143 = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 16
  %call144 = tail call i32 @wait_for_completion_interruptible(ptr noundef %complete143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then142.out_stop_crit_edge, label %if.then142.out_stop.sink.split_crit_edge

if.then142.out_stop.sink.split_crit_edge:         ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop.sink.split

if.then142.out_stop_crit_edge:                    ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_stop

out_stop.sink.split.sink.split:                   ; preds = %if.then128.out_stop.sink.split.sink.split_crit_edge, %cleanup20.sink.split.i, %for.body.i.out_stop.sink.split.sink.split_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %cleanup20.sink.split.i ], [ @.str.53, %if.then128.out_stop.sink.split.sink.split_crit_edge ], [ @.str.50, %for.body.i.out_stop.sink.split.sink.split_crit_edge ]
  %ret.2.ph.ph = phi i32 [ -12, %cleanup20.sink.split.i ], [ %call130, %if.then128.out_stop.sink.split.sink.split_crit_edge ], [ -12, %for.body.i.out_stop.sink.split.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull %.str.50.sink) #10
  br label %out_stop.sink.split

out_stop.sink.split:                              ; preds = %out_stop.sink.split.sink.split, %if.then142.out_stop.sink.split_crit_edge
  %.sink327 = phi i32 [ 1, %if.then142.out_stop.sink.split_crit_edge ], [ 2, %out_stop.sink.split.sink.split ]
  %ret.2.ph = phi i32 [ %call144, %if.then142.out_stop.sink.split_crit_edge ], [ %ret.2.ph.ph, %out_stop.sink.split.sink.split ]
  %153 = ptrtoint ptr %error_code to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %.sink327, ptr %error_code, align 4
  br label %out_stop

out_stop:                                         ; preds = %out_stop.sink.split, %if.then142.out_stop_crit_edge, %if.end139.out_stop_crit_edge
  %ret.2 = phi i32 [ 0, %if.then142.out_stop_crit_edge ], [ 0, %if.end139.out_stop_crit_edge ], [ %ret.2.ph, %out_stop.sink.split ]
  %154 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rx_ring35.i, align 4
  %tobool.not.i249 = icmp eq ptr %155, null
  br i1 %tobool.not.i249, label %out_stop.if.end.i252_crit_edge, label %if.then.i

out_stop.if.end.i252_crit_edge:                   ; preds = %out_stop
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i252

if.then.i:                                        ; preds = %out_stop
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_ring_stop(ptr noundef nonnull %155) #6
  br label %if.end.i252

if.end.i252:                                      ; preds = %if.then.i, %out_stop.if.end.i252_crit_edge
  %156 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tx_ring30.i, align 4
  %tobool2.not.i251 = icmp eq ptr %157, null
  br i1 %tobool2.not.i251, label %if.end5.thread.i, label %if.end5.i

if.end5.thread.i:                                 ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %xd1.i, align 4
  %160 = ptrtoint ptr %tx_hopid29.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_hopid29.i, align 4
  br label %cond.end.i259

if.end5.i:                                        ; preds = %if.end.i252
  tail call void @tb_ring_stop(ptr noundef nonnull %157) #6
  %162 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pr.i = load ptr, ptr %tx_ring30.i, align 4
  %163 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %xd1.i, align 4
  %165 = ptrtoint ptr %tx_hopid29.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_hopid29.i, align 4
  %tobool7.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool7.not.i, label %if.end5.i.cond.end.i259_crit_edge, label %cond.true.i256

if.end5.i.cond.end.i259_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i259

cond.true.i256:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %hop.i255 = getelementptr inbounds %struct.tb_ring, ptr %.pr.i, i32 0, i32 3
  %167 = ptrtoint ptr %hop.i255 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hop.i255, align 4
  br label %cond.end.i259

cond.end.i259:                                    ; preds = %cond.true.i256, %if.end5.i.cond.end.i259_crit_edge, %if.end5.thread.i
  %169 = phi i32 [ %166, %cond.true.i256 ], [ %166, %if.end5.i.cond.end.i259_crit_edge ], [ %161, %if.end5.thread.i ]
  %170 = phi ptr [ %164, %cond.true.i256 ], [ %164, %if.end5.i.cond.end.i259_crit_edge ], [ %159, %if.end5.thread.i ]
  %cond.i257 = phi i32 [ %168, %cond.true.i256 ], [ 0, %if.end5.i.cond.end.i259_crit_edge ], [ 0, %if.end5.thread.i ]
  %171 = ptrtoint ptr %rx_hopid34.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_hopid34.i, align 4
  %173 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rx_ring35.i, align 4
  %tobool10.not.i = icmp eq ptr %174, null
  br i1 %tobool10.not.i, label %cond.end.i259.cond.end15.i_crit_edge, label %cond.true11.i

cond.end.i259.cond.end15.i_crit_edge:             ; preds = %cond.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end15.i

cond.true11.i:                                    ; preds = %cond.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  %hop13.i = getelementptr inbounds %struct.tb_ring, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %hop13.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %hop13.i, align 4
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.true11.i, %cond.end.i259.cond.end15.i_crit_edge
  %cond16.i = phi i32 [ %176, %cond.true11.i ], [ 0, %cond.end.i259.cond.end15.i_crit_edge ]
  %call.i260 = tail call i32 @tb_xdomain_disable_paths(ptr noundef %170, i32 noundef %169, i32 noundef %cond.i257, i32 noundef %172, i32 noundef %cond16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool17.not.i = icmp eq i32 %call.i260, 0
  br i1 %tobool17.not.i, label %cond.end15.i.if.end19.i_crit_edge, label %do.end.i

cond.end15.i.if.end19.i_crit_edge:                ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

do.end.i:                                         ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %178, ptr noundef nonnull @.str.63) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %cond.end15.i.if.end19.i_crit_edge
  %179 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rx_ring35.i, align 4
  %tobool.not.i.i261 = icmp eq ptr %180, null
  br i1 %tobool.not.i.i261, label %if.end19.i.if.end.i.i264_crit_edge, label %if.then.i.i262

if.end19.i.if.end.i.i264_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i264

if.then.i.i262:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %xd1.i, align 4
  %183 = ptrtoint ptr %rx_hopid34.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rx_hopid34.i, align 4
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %182, i32 noundef %184) #6
  %185 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rx_ring35.i, align 4
  tail call void @tb_ring_free(ptr noundef %186) #6
  %187 = ptrtoint ptr %rx_ring35.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr null, ptr %rx_ring35.i, align 4
  br label %if.end.i.i264

if.end.i.i264:                                    ; preds = %if.then.i.i262, %if.end19.i.if.end.i.i264_crit_edge
  %188 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %tx_ring30.i, align 4
  %tobool3.not.i.i263 = icmp eq ptr %189, null
  br i1 %tobool3.not.i.i263, label %if.end.i.i264.out_unlock_crit_edge, label %if.then4.i.i265

if.end.i.i264.out_unlock_crit_edge:               ; preds = %if.end.i.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then4.i.i265:                                  ; preds = %if.end.i.i264
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %xd1.i, align 4
  %192 = ptrtoint ptr %tx_hopid29.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %tx_hopid29.i, align 4
  tail call void @tb_xdomain_release_out_hopid(ptr noundef %191, i32 noundef %193) #6
  %194 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %tx_ring30.i, align 4
  tail call void @tb_ring_free(ptr noundef %195) #6
  %196 = ptrtoint ptr %tx_ring30.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %tx_ring30.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then4.i.i265, %if.end.i.i264.out_unlock_crit_edge
  %197 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %197)
  %.pr = load i32, ptr %error_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i266 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i266, label %if.then.i268, label %out_unlock.if.end26.i_crit_edge

out_unlock.if.end26.i_crit_edge:                  ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then.i268:                                     ; preds = %out_unlock
  %198 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool1.not.i267 = icmp eq i32 %199, 0
  br i1 %tobool1.not.i267, label %if.then.i268.if.else.i_crit_edge, label %land.lhs.true.i271

if.then.i268.if.else.i_crit_edge:                 ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i271:                               ; preds = %if.then.i268
  %200 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %xd1.i, align 4
  %link_speed2.i = getelementptr inbounds %struct.tb_xdomain, ptr %201, i32 0, i32 12
  %202 = ptrtoint ptr %link_speed2.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %link_speed2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %199)
  %cmp.not.i270 = icmp eq i32 %203, %199
  br i1 %cmp.not.i270, label %land.lhs.true.i271.if.else.i_crit_edge, label %land.lhs.true.i271.if.end26.i.sink.split_crit_edge

land.lhs.true.i271.if.end26.i.sink.split_crit_edge: ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

land.lhs.true.i271.if.else.i_crit_edge:           ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i271.if.else.i_crit_edge, %if.then.i268.if.else.i_crit_edge
  %204 = ptrtoint ptr %link_width to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %link_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool6.not.i273 = icmp eq i32 %205, 0
  br i1 %tobool6.not.i273, label %if.else.i.if.else14.i_crit_edge, label %land.lhs.true7.i

if.else.i.if.else14.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14.i

land.lhs.true7.i:                                 ; preds = %if.else.i
  %206 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %xd1.i, align 4
  %link_width9.i = getelementptr inbounds %struct.tb_xdomain, ptr %207, i32 0, i32 13
  %208 = ptrtoint ptr %link_width9.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %link_width9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %205)
  %cmp11.not.i = icmp eq i32 %209, %205
  br i1 %cmp11.not.i, label %land.lhs.true7.i.if.else14.i_crit_edge, label %land.lhs.true7.i.if.end26.i.sink.split_crit_edge

land.lhs.true7.i.if.end26.i.sink.split_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

land.lhs.true7.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true7.i.if.else14.i_crit_edge, %if.else.i.if.else14.i_crit_edge
  %210 = ptrtoint ptr %packets_to_send.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %packets_to_send.i, align 4
  %212 = ptrtoint ptr %packets_sent to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %packets_sent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %213)
  %cmp15.not.i = icmp eq i32 %211, %213
  br i1 %cmp15.not.i, label %lor.lhs.false.i, label %if.else14.i.if.end26.i.sink.split_crit_edge

if.else14.i.if.end26.i.sink.split_crit_edge:      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

lor.lhs.false.i:                                  ; preds = %if.else14.i
  %214 = ptrtoint ptr %packets_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %packets_to_receive.i, align 4
  %216 = ptrtoint ptr %packets_received to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %packets_received, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp16.not.i = icmp eq i32 %215, %217
  br i1 %cmp16.not.i, label %lor.lhs.false17.i, label %lor.lhs.false.i.if.end26.i.sink.split_crit_edge

lor.lhs.false.i.if.end26.i.sink.split_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i
  %218 = ptrtoint ptr %crc_errors to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %crc_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool18.not.i = icmp eq i32 %219, 0
  br i1 %tobool18.not.i, label %lor.lhs.false19.i, label %lor.lhs.false17.i.if.end26.i.sink.split_crit_edge

lor.lhs.false17.i.if.end26.i.sink.split_crit_edge: ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

lor.lhs.false19.i:                                ; preds = %lor.lhs.false17.i
  %220 = ptrtoint ptr %buffer_overflow_errors to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %buffer_overflow_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool20.not.i = icmp eq i32 %221, 0
  br i1 %tobool20.not.i, label %lor.lhs.false19.i.dma_test_check_errors.exit_crit_edge, label %lor.lhs.false19.i.if.end26.i.sink.split_crit_edge

lor.lhs.false19.i.if.end26.i.sink.split_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.sink.split

lor.lhs.false19.i.dma_test_check_errors.exit_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_test_check_errors.exit

if.end26.i.sink.split.sink.split:                 ; preds = %do.end108.sink.split, %if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge, %if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge, %if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge, %if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge, %if.then5.i.if.end26.i.sink.split.sink.split_crit_edge, %dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge, %land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge, %land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.40, %land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.40, %land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.44, %dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.47, %do.end108.sink.split ], [ @.str.47, %if.then5.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.47, %if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.47, %if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.47, %if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge ], [ @.str.47, %if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge ]
  %.sink328.ph = phi i32 [ 4, %land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 4, %land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 7, %dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge ], [ 3, %do.end108.sink.split ], [ 3, %if.then5.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 3, %if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 3, %if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 3, %if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 3, %if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge ]
  %ret.3293.ph.ph = phi i32 [ 0, %land.lhs.true.i.if.end26.i.sink.split.sink.split_crit_edge ], [ 0, %land.lhs.true4.i.if.end26.i.sink.split.sink.split_crit_edge ], [ %call.i, %dma_test_set_bonding.exit.if.end26.i.sink.split.sink.split_crit_edge ], [ %retval.1.i.ph.ph, %do.end108.sink.split ], [ -12, %if.then5.i.if.end26.i.sink.split.sink.split_crit_edge ], [ %call9.i, %if.end.i.i.if.end26.i.sink.split.sink.split_crit_edge ], [ %call43.i, %if.end.i136.i.if.end26.i.sink.split.sink.split_crit_edge ], [ %call22.i, %if.end.i124.i.if.end26.i.sink.split.sink.split_crit_edge ], [ -12, %if.end.i112.i.if.end26.i.sink.split.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull %.str.47.sink) #10
  br label %if.end26.i.sink.split

if.end26.i.sink.split:                            ; preds = %if.end26.i.sink.split.sink.split, %lor.lhs.false19.i.if.end26.i.sink.split_crit_edge, %lor.lhs.false17.i.if.end26.i.sink.split_crit_edge, %lor.lhs.false.i.if.end26.i.sink.split_crit_edge, %if.else14.i.if.end26.i.sink.split_crit_edge, %land.lhs.true7.i.if.end26.i.sink.split_crit_edge, %land.lhs.true.i271.if.end26.i.sink.split_crit_edge
  %.sink328 = phi i32 [ 5, %land.lhs.true.i271.if.end26.i.sink.split_crit_edge ], [ 6, %land.lhs.true7.i.if.end26.i.sink.split_crit_edge ], [ 8, %lor.lhs.false19.i.if.end26.i.sink.split_crit_edge ], [ 8, %lor.lhs.false17.i.if.end26.i.sink.split_crit_edge ], [ 8, %lor.lhs.false.i.if.end26.i.sink.split_crit_edge ], [ 8, %if.else14.i.if.end26.i.sink.split_crit_edge ], [ %.sink328.ph, %if.end26.i.sink.split.sink.split ]
  %ret.3293.ph = phi i32 [ %ret.2, %land.lhs.true.i271.if.end26.i.sink.split_crit_edge ], [ %ret.2, %land.lhs.true7.i.if.end26.i.sink.split_crit_edge ], [ %ret.2, %lor.lhs.false19.i.if.end26.i.sink.split_crit_edge ], [ %ret.2, %lor.lhs.false17.i.if.end26.i.sink.split_crit_edge ], [ %ret.2, %lor.lhs.false.i.if.end26.i.sink.split_crit_edge ], [ %ret.2, %if.else14.i.if.end26.i.sink.split_crit_edge ], [ %ret.3293.ph.ph, %if.end26.i.sink.split.sink.split ]
  %222 = ptrtoint ptr %error_code to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %.sink328, ptr %error_code, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.i.sink.split, %out_unlock.if.end26.i_crit_edge
  %ret.3293 = phi i32 [ %ret.2, %out_unlock.if.end26.i_crit_edge ], [ %ret.3293.ph, %if.end26.i.sink.split ]
  %223 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 2, ptr %result, align 4
  br label %dma_test_check_errors.exit

dma_test_check_errors.exit:                       ; preds = %if.end26.i, %lor.lhs.false19.i.dma_test_check_errors.exit_crit_edge
  %ret.3292 = phi i32 [ %ret.2, %lor.lhs.false19.i.dma_test_check_errors.exit_crit_edge ], [ %ret.3293, %if.end26.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @test_store.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@test_store, %if.then163)) #6
          to label %cleanup [label %if.then163], !srcloc !179

if.then163:                                       ; preds = %dma_test_check_errors.exit
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %result, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @dma_test_result_names, i32 0, i32 %225
  %226 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @test_store.__UNIQUE_ID_ddebug243, ptr noundef %data, ptr noundef nonnull @.str.55, ptr noundef %227) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then163, %dma_test_check_errors.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %ret.3292, %if.then163 ], [ %ret.3292, %dma_test_check_errors.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_test_submit_tx(ptr noundef %dt, i32 noundef %npackets) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.dma_test, ptr %dt, i32 0, i32 4
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npackets)
  %cmp81.not = icmp eq i32 %npackets, 0
  br i1 %cmp81.not, label %entry.cleanup37_crit_edge, label %for.body.lr.ph

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %entry
  %packets_sent = getelementptr inbounds %struct.dma_test, ptr %dt, i32 0, i32 8
  %packets_to_send = getelementptr inbounds %struct.dma_test, ptr %dt, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %tb_ring_tx.exit.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %tb_ring_tx.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup37_crit_edge, label %if.end

for.body.cleanup37_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

if.end:                                           ; preds = %for.body
  %frame = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 2
  %size = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %size, align 8
  %bf.clear = and i32 %bf.load, 1048575
  store i32 %bf.clear, ptr %size, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dt, ptr %call7.i.i, align 8
  %9 = load ptr, ptr @dma_test_pattern, align 4
  %call2 = tail call ptr @kmemdup(ptr noundef %9, i32 noundef 4096, i32 noundef 3264) #6
  %data = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup37.sink.split_crit_edge, label %if.end6

if.end.cleanup37.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37.sink.split

if.end6:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call2) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end6
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !180

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #6
  br label %if.then11

dma_map_single_attrs.exit:                        ; preds = %if.end6
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call2, i32 noundef 4096) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %call2 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then11_crit_edge, label %if.end13

dma_map_single_attrs.exit.if.then11_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %dma_map_single_attrs.exit.if.then11_crit_edge, %dma_map_single_attrs.exit.thread
  %data90 = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %data90 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data90, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %cleanup37.sink.split

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  %19 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call41.i, ptr %frame, align 8
  %callback = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dma_test_tx_callback, ptr %callback, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load17 = load i32, ptr %size, align 8
  %bf.clear18 = and i32 %bf.load17, -256
  %bf.set23 = or i32 %bf.clear18, 33
  store i32 %bf.set23, ptr %size, align 8
  %list = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.dma_test_frame, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i, align 4
  %24 = ptrtoint ptr %packets_sent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %packets_sent, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %packets_sent, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_test_submit_tx.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_test_submit_tx, %if.then29)) #6
          to label %do.end [label %if.then29], !srcloc !179

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dt, align 4
  %28 = ptrtoint ptr %packets_sent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packets_sent, align 4
  %30 = ptrtoint ptr %packets_to_send to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %packets_to_send, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_test_submit_tx.__UNIQUE_ID_ddebug237, ptr noundef %27, ptr noundef nonnull @.str.62, i32 noundef %29, i32 noundef %31) #6
  br label %do.end

do.end:                                           ; preds = %if.then29, %if.end13
  %32 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_ring, align 4
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %do.end.i, label %do.end.tb_ring_tx.exit_crit_edge, !prof !181

do.end.tb_ring_tx.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_ring_tx.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 639, i32 noundef 9, ptr noundef null) #6
  br label %tb_ring_tx.exit

tb_ring_tx.exit:                                  ; preds = %do.end.i, %do.end.tb_ring_tx.exit_crit_edge
  %call.i63 = tail call i32 @__tb_ring_enqueue(ptr noundef %33, ptr noundef %frame) #6
  %inc36 = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc36, %npackets
  br i1 %exitcond.not, label %tb_ring_tx.exit.cleanup37_crit_edge, label %tb_ring_tx.exit.for.body_crit_edge

tb_ring_tx.exit.for.body_crit_edge:               ; preds = %tb_ring_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

tb_ring_tx.exit.cleanup37_crit_edge:              ; preds = %tb_ring_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup37

cleanup37.sink.split:                             ; preds = %if.then11, %if.end.cleanup37.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup37

cleanup37:                                        ; preds = %cleanup37.sink.split, %tb_ring_tx.exit.cleanup37_crit_edge, %for.body.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup37_crit_edge ], [ -12, %cleanup37.sink.split ], [ -12, %for.body.cleanup37_crit_edge ], [ 0, %tb_ring_tx.exit.cleanup37_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_lane_bonding_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_lane_bonding_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_tx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_alloc_out_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_rx(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_alloc_in_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_enable_paths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_release_in_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_release_out_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_test_rx_callback(ptr nocapture noundef readnone %ring, ptr noundef %frame, i1 noundef zeroext %canceled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %frame, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %rx_ring = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #6
  %data = getelementptr i8, ptr %frame, i32 -4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %11) #6
  br i1 %canceled, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %add.ptr) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %packets_received = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %packets_received to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %packets_received, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %packets_received, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_test_rx_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_test_rx_callback, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !179

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %packets_received to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %packets_received, align 4
  %packets_to_receive = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %packets_to_receive to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %packets_to_receive, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_test_rx_callback.__UNIQUE_ID_ddebug236, ptr noundef %15, ptr noundef nonnull @.str.59, i32 noundef %17, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %flags = getelementptr inbounds %struct.ring_frame, ptr %frame, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %flags, align 4
  %21 = and i32 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %do.end.if.end15_crit_edge, label %if.then13

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %crc_errors = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %crc_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crc_errors, align 4
  %inc14 = add i32 %23, 1
  store i32 %inc14, ptr %crc_errors, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end.if.end15_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load18 = load i32, ptr %flags, align 4
  %25 = and i32 %bf.load18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not = icmp eq i32 %25, 0
  br i1 %tobool22.not, label %if.end15.if.end25_crit_edge, label %if.then23

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %buffer_overflow_errors = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %buffer_overflow_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_overflow_errors, align 4
  %inc24 = add i32 %27, 1
  store i32 %inc24, ptr %buffer_overflow_errors, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end15.if.end25_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #6
  %28 = ptrtoint ptr %packets_received to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packets_received, align 4
  %packets_to_receive27 = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %packets_to_receive27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %packets_to_receive27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp = icmp eq i32 %29, %31
  br i1 %cmp, label %if.then28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %complete = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %complete) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tb_ring_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_test_tx_callback(ptr nocapture noundef readnone %ring, ptr noundef %frame, i1 noundef zeroext %canceled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %frame, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tx_ring = getelementptr inbounds %struct.dma_test, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %9, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #6
  %data = getelementptr i8, ptr %frame, i32 -4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %11) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_disable_paths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !164, !165, !166, !167, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_thunderbolt_dma_test__244_746_dma_test_init6, !1, !"__initcall__kmod_thunderbolt_dma_test__244_746_dma_test_init6", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/dma_test.c", i32 746, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/dma_test.c", i32 751, i32 29}
!4 = !{ptr @__exitcall_dma_test_exit, !5, !"__exitcall_dma_test_exit", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/dma_test.c", i32 755, i32 1}
!6 = !{ptr @__UNIQUE_ID_author245, !7, !"__UNIQUE_ID_author245", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/dma_test.c", i32 757, i32 1}
!8 = !{ptr @__UNIQUE_ID_author246, !9, !"__UNIQUE_ID_author246", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/dma_test.c", i32 758, i32 1}
!10 = !{ptr @__UNIQUE_ID_description247, !11, !"__UNIQUE_ID_description247", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/dma_test.c", i32 759, i32 1}
!12 = !{ptr @__UNIQUE_ID_file248, !13, !"__UNIQUE_ID_file248", i1 false, i1 false}
!13 = !{!"../drivers/thunderbolt/dma_test.c", i32 760, i32 1}
!14 = !{ptr @__UNIQUE_ID_license249, !13, !"__UNIQUE_ID_license249", i1 false, i1 false}
!15 = !{ptr @dma_test_dir, !16, !"dma_test_dir", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/dma_test.c", i32 119, i32 32}
!17 = !{ptr @dma_test_pattern, !18, !"dma_test_pattern", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/dma_test.c", i32 120, i32 14}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thunderbolt/dma_test.c", i32 722, i32 42}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/dma_test.c", i32 723, i32 42}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/dma_test.c", i32 724, i32 42}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/thunderbolt/dma_test.c", i32 725, i32 42}
!27 = !{ptr @dma_test_dir_uuid, !28, !"dma_test_dir_uuid", i1 false, i1 false}
!28 = !{!"../drivers/thunderbolt/dma_test.c", i32 115, i32 21}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thunderbolt/dma_test.c", i32 696, i32 11}
!31 = !{ptr @dma_test_driver, !32, !"dma_test_driver", i1 false, i1 false}
!32 = !{!"../drivers/thunderbolt/dma_test.c", i32 693, i32 33}
!33 = !{ptr @dma_test_pm_ops, !34, !"dma_test_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/thunderbolt/dma_test.c", i32 683, i32 32}
!35 = !{ptr @dma_test_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/thunderbolt/dma_test.c", i32 647, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thunderbolt/dma_test.c", i32 626, i32 22}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thunderbolt/dma_test.c", i32 627, i32 22}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/dma_test.c", i32 628, i32 22}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/dma_test.c", i32 630, i32 22}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thunderbolt/dma_test.c", i32 632, i32 22}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thunderbolt/dma_test.c", i32 633, i32 22}
!53 = !{ptr @lanes_fops, !54, !"lanes_fops", i1 false, i1 false}
!54 = !{!"../drivers/thunderbolt/dma_test.c", i32 405, i32 1}
!55 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @speed_fops, !57, !"speed_fops", i1 false, i1 false}
!57 = !{!"../drivers/thunderbolt/dma_test.c", i32 428, i32 1}
!58 = !{ptr @packets_to_receive_fops, !59, !"packets_to_receive_fops", i1 false, i1 false}
!59 = !{!"../drivers/thunderbolt/dma_test.c", i32 444, i32 1}
!60 = !{ptr @packets_to_send_fops, !61, !"packets_to_send_fops", i1 false, i1 false}
!61 = !{!"../drivers/thunderbolt/dma_test.c", i32 461, i32 1}
!62 = !{ptr @status_fops, !63, !"status_fops", i1 false, i1 false}
!63 = !{!"../drivers/thunderbolt/dma_test.c", i32 618, i32 1}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thunderbolt/dma_test.c", i32 603, i32 16}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/thunderbolt/dma_test.c", i32 607, i32 16}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thunderbolt/dma_test.c", i32 608, i32 16}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thunderbolt/dma_test.c", i32 609, i32 16}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thunderbolt/dma_test.c", i32 610, i32 16}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thunderbolt/dma_test.c", i32 612, i32 16}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/thunderbolt/dma_test.c", i32 64, i32 23}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thunderbolt/dma_test.c", i32 65, i32 23}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/thunderbolt/dma_test.c", i32 66, i32 20}
!82 = !{ptr @dma_test_result_names, !83, !"dma_test_result_names", i1 false, i1 false}
!83 = !{!"../drivers/thunderbolt/dma_test.c", i32 63, i32 27}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/thunderbolt/dma_test.c", i32 46, i32 24}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/thunderbolt/dma_test.c", i32 47, i32 27}
!88 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/thunderbolt/dma_test.c", i32 48, i32 28}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/thunderbolt/dma_test.c", i32 49, i32 25}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/thunderbolt/dma_test.c", i32 50, i32 28}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/thunderbolt/dma_test.c", i32 51, i32 27}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/thunderbolt/dma_test.c", i32 52, i32 27}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thunderbolt/dma_test.c", i32 53, i32 29}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/thunderbolt/dma_test.c", i32 54, i32 28}
!102 = !{ptr @dma_test_error_names, !103, !"dma_test_error_names", i1 false, i1 false}
!103 = !{!"../drivers/thunderbolt/dma_test.c", i32 45, i32 27}
!104 = !{ptr @test_fops, !105, !"test_fops", i1 false, i1 false}
!105 = !{!"../drivers/thunderbolt/dma_test.c", i32 591, i32 1}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/thunderbolt/dma_test.c", i32 527, i32 2}
!108 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @test_store.__UNIQUE_ID_ddebug238, !107, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/thunderbolt/dma_test.c", i32 529, i32 3}
!113 = !{ptr @test_store.__UNIQUE_ID_ddebug239, !112, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/thunderbolt/dma_test.c", i32 531, i32 3}
!116 = !{ptr @test_store.__UNIQUE_ID_ddebug240, !115, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/thunderbolt/dma_test.c", i32 532, i32 2}
!119 = !{ptr @test_store.__UNIQUE_ID_ddebug241, !118, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/thunderbolt/dma_test.c", i32 533, i32 2}
!122 = !{ptr @test_store.__UNIQUE_ID_ddebug242, !121, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thunderbolt/dma_test.c", i32 536, i32 3}
!125 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @test_store._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @test_store._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/thunderbolt/dma_test.c", i32 543, i32 3}
!131 = !{ptr @test_store._entry.43, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @test_store._entry_ptr.45, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/thunderbolt/dma_test.c", i32 550, i32 3}
!135 = !{ptr @test_store._entry.46, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @test_store._entry_ptr.48, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/thunderbolt/dma_test.c", i32 559, i32 4}
!139 = !{ptr @test_store._entry.49, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @test_store._entry_ptr.51, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/thunderbolt/dma_test.c", i32 568, i32 4}
!143 = !{ptr @test_store._entry.52, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @test_store._entry_ptr.54, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/thunderbolt/dma_test.c", i32 588, i32 2}
!147 = !{ptr @test_store.__UNIQUE_ID_ddebug243, !146, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!150 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/thunderbolt/dma_test.c", i32 247, i32 2}
!154 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @dma_test_rx_callback.__UNIQUE_ID_ddebug236, !153, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../include/linux/thunderbolt.h", i32 618, i32 2}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/thunderbolt/dma_test.c", i32 349, i32 3}
!160 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dma_test_submit_tx.__UNIQUE_ID_ddebug237, !159, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/thunderbolt/dma_test.c", i32 225, i32 3}
!164 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @dma_test_stop_rings._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @dma_test_stop_rings._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @dma_test_ids, !169, !"dma_test_ids", i1 false, i1 false}
!169 = !{!"../drivers/thunderbolt/dma_test.c", i32 687, i32 35}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148333072, i64 2148333077, i64 2148333090, i64 2148333134, i64 2148333168, i64 2148333189}
!180 = !{!"branch_weights", i32 2000, i32 1}
!181 = !{!"branch_weights", i32 1, i32 2000}
