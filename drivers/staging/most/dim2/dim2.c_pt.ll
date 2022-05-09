; ModuleID = '/llk/IR_all_yes/drivers/staging/most/dim2/dim2.c_pt.bc'
source_filename = "../drivers/staging/most/dim2/dim2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.71 = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { ptr }
%struct.dim2_platform_data = type { ptr, ptr, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dim2_hdm = type { %struct.device, [31 x %struct.hdm_channel], [31 x %struct.most_channel_capability], %struct.most_interface, [22 x i8], ptr, i8, ptr, ptr, ptr, %struct.wait_queue_head, i32, [6 x i8], i8, i32, %struct.medialb_bus, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.hdm_channel = type { [6 x i8], i8, %struct.dim_channel, ptr, %struct.list_head, %struct.list_head, i32, i32 }
%struct.dim_channel = type { %struct.int_ch_state, i8, i16, i16, i16, i16, i16 }
%struct.int_ch_state = type { i32, i32, i8, i8, i8 }
%struct.most_channel_capability = type { i16, i16, i16, i16, i16, i16, ptr }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.medialb_bus = type { %struct.kobject }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }
%struct.dim_ch_state_t = type { i8, i16 }

@__param_str_fcnt = internal constant [15 x i8] c"most_dim2.fcnt\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@fcnt = internal global { i8, [31 x i8] } { i8 4, [31 x i8] zeroinitializer }, align 32
@__param_fcnt = internal constant %struct.kernel_param { ptr @__param_str_fcnt, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @fcnt } }, section "__param", align 4
@__UNIQUE_ID_fcnttype234 = internal constant [29 x i8] c"most_dim2.parmtype=fcnt:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_fcnt235 = internal constant [83 x i8] c"most_dim2.parm=fcnt:Num of frames per sub-buffer for sync channels as a power of 2\00", section ".modinfo", align 1
@dimcb_on_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013most_dim2: %s: error_id - %d, error_message - %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dimcb_on_error\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/most/dim2/dim2.c\00", [63 x i8] zeroinitializer }, align 32
@dimcb_on_error._entry_ptr = internal global ptr @dimcb_on_error._entry, section ".printk_index", align 4
@__initcall__kmod_most_dim2__238_1113_dim2_driver_init6 = internal global ptr @dim2_driver_init, section ".initcall6.init", align 4
@dim2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dim2_probe, ptr @dim2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dim2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dim2_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dim2_driver_exit = internal global ptr @dim2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [58 x i8] c"most_dim2.author=Andrey Shvetsov <andrey.shvetsov@k2l.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [61 x i8] c"most_dim2.description=MediaLB DIM2 Hardware Dependent Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [51 x i8] c"most_dim2.file=drivers/staging/most/dim2/most_dim2\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [22 x i8] c"most_dim2.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdm_dim2\00", [23 x i8] zeroinitializer }, align 32
@dim2_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-mlb150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,mlp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @plat_data, i64 12) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-mlp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @plat_data, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi4-os62420_3pin-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi4-os62420_6pin-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@dim2_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dim2_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"microchip,clock-speed\00", [42 x i8] zeroinitializer }, align 32
@dim2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 779, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing dt property clock-speed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dim2_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr = internal global ptr @dim2_probe._entry, section ".printk_index", align 4
@dim2_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 785, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad dt property clock-speed\0A\00", [35 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr.11 = internal global ptr @dim2_probe._entry.9, section ".printk_index", align 4
@dim2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 810, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sync: num of frames per sub-buffer: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr.15 = internal global ptr @dim2_probe._entry.12, section ".printk_index", align 4
@dim2_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 813, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dim_startup failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr.18 = internal global ptr @dim2_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dim2_ahb0_int\00", [18 x i8] zeroinitializer }, align 32
@dim2_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 827, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request ahb0_int irq %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr.22 = internal global ptr @dim2_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dim2_mlb_int\00", [19 x i8] zeroinitializer }, align 32
@dim2_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.2, i32 840, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request mlb_int irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dim2_probe._entry_ptr.26 = internal global ptr @dim2_probe._entry.24, section ".printk_index", align 4
@dim2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->netinfo_waitq\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dim2_netinfo\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ca%d\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dim2-%016lx\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_mt = internal constant { [8 x %struct.anon.71], [32 x i8] } { [8 x %struct.anon.71] [%struct.anon.71 { ptr @.str.31, i8 0 }, %struct.anon.71 { ptr @.str.32, i8 1 }, %struct.anon.71 { ptr @.str.33, i8 2 }, %struct.anon.71 { ptr @.str.34, i8 3 }, %struct.anon.71 { ptr @.str.35, i8 4 }, %struct.anon.71 { ptr @.str.36, i8 5 }, %struct.anon.71 { ptr @.str.37, i8 6 }, %struct.anon.71 { ptr @.str.38, i8 7 }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"256fs\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"512fs\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1024fs\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2048fs\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3072fs\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4096fs\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6144fs\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8192fs\00", [25 x i8] zeroinitializer }, align 32
@dim_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dim2_tasklet = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t zeroinitializer, i8 0, %union.anon.72 { ptr @dim2_tasklet_fn }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dim_lock\00", [23 x i8] zeroinitializer }, align 32
@service_done_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\012most_dim2: hard error: started_mbo list is empty whereas DIM2 has sent buffers\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"service_done_flag\00", [46 x i8] zeroinitializer }, align 32
@service_done_flag._entry_ptr = internal global ptr @service_done_flag._entry, section ".printk_index", align 4
@retrieve_netinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016most_dim2: Node Address: 0x%03x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"retrieve_netinfo\00", [47 x i8] zeroinitializer }, align 32
@retrieve_netinfo._entry_ptr = internal global ptr @retrieve_netinfo._entry, section ".printk_index", align 4
@retrieve_netinfo._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016most_dim2: NIState: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@retrieve_netinfo._entry_ptr.46 = internal global ptr @retrieve_netinfo._entry.44, section ".printk_index", align 4
@configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013most_dim2: %s: too small buffer size\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"configure_channel\00", [46 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr = internal global ptr @configure_channel._entry, section ".printk_index", align 4
@configure_channel._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014most_dim2: %s: fixed buffer size (%d -> %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.51 = internal global ptr @configure_channel._entry.49, section ".printk_index", align 4
@configure_channel._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.53 = internal global ptr @configure_channel._entry.52, section ".printk_index", align 4
@configure_channel._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.55 = internal global ptr @configure_channel._entry.54, section ".printk_index", align 4
@configure_channel._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013most_dim2: %s: invalid sub-buffer size or too small buffer size\0A\00", [61 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.58 = internal global ptr @configure_channel._entry.56, section ".printk_index", align 4
@configure_channel._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.60 = internal global ptr @configure_channel._entry.59, section ".printk_index", align 4
@configure_channel._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.62 = internal global ptr @configure_channel._entry.61, section ".printk_index", align 4
@configure_channel._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.64 = internal global ptr @configure_channel._entry.63, section ".printk_index", align 4
@configure_channel._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.48, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013most_dim2: %s: configure failed, bad channel type: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.67 = internal global ptr @configure_channel._entry.65, section ".printk_index", align 4
@configure_channel._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.48, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013most_dim2: %s: configure failed (%d), type: %d, is_tx: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.70 = internal global ptr @configure_channel._entry.68, section ".printk_index", align 4
@poison_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013most_dim2: HAL Failed to close channel %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"poison_channel\00", [17 x i8] zeroinitializer }, align 32
@poison_channel._entry_ptr = internal global ptr @poison_channel._entry, section ".printk_index", align 4
@request_netinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013most_dim2: Async Tx Not initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"request_netinfo\00", [16 x i8] zeroinitializer }, align 32
@request_netinfo._entry_ptr = internal global ptr @request_netinfo._entry, section ".printk_index", align 4
@plat_data = internal global { [3 x %struct.dim2_platform_data], [60 x i8] } { [3 x %struct.dim2_platform_data] [%struct.dim2_platform_data { ptr @fsl_mx6_enable, ptr @fsl_mx6_disable, i8 0 }, %struct.dim2_platform_data { ptr @rcar_gen2_enable, ptr @rcar_gen2_disable, i8 0 }, %struct.dim2_platform_data { ptr @rcar_gen3_enable, ptr @rcar_gen3_disable, i8 3 }], [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mlb\00", [28 x i8] zeroinitializer }, align 32
@fsl_mx6_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 938, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to get mlb clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_mx6_enable\00", [17 x i8] zeroinitializer }, align 32
@fsl_mx6_enable._entry_ptr = internal global ptr @fsl_mx6_enable._entry, section ".printk_index", align 4
@fsl_mx6_enable._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 944, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@fsl_mx6_enable._entry_ptr.80 = internal global ptr @fsl_mx6_enable._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_prepare_enable failed\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll8_mlb\00", [23 x i8] zeroinitializer }, align 32
@fsl_mx6_enable._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.77, ptr @.str.2, i32 952, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to get mlb pll clock\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_mx6_enable._entry_ptr.85 = internal global ptr @fsl_mx6_enable._entry.83, section ".printk_index", align 4
@rcar_gen2_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 981, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_gen2_enable\00", [47 x i8] zeroinitializer }, align 32
@rcar_gen2_enable._entry_ptr = internal global ptr @rcar_gen2_enable._entry, section ".printk_index", align 4
@rcar_gen2_enable._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.87, ptr @.str.2, i32 987, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rcar_gen2_enable._entry_ptr.89 = internal global ptr @rcar_gen2_enable._entry.88, section ".printk_index", align 4
@rcar_gen3_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.90, ptr @.str.2, i32 1027, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_gen3_enable\00", [47 x i8] zeroinitializer }, align 32
@rcar_gen3_enable._entry_ptr = internal global ptr @rcar_gen3_enable._entry, section ".printk_index", align 4
@rcar_gen3_enable._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.90, ptr @.str.2, i32 1033, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@rcar_gen3_enable._entry_ptr.92 = internal global ptr @rcar_gen3_enable._entry.91, section ".printk_index", align 4
@dim2_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dim2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dim2_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_state, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 32]
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"fcnt\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 42, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 151, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"dim2_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1103, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1107, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"dim2_of_match\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1079, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"dim2_groups\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 777, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 779, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 785, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 809, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 813, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 825, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 827, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 838, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 840, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 844, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 846, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 860, i32 48 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 878, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"clk_mt\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 697, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 698, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 699, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 700, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 701, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 702, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 703, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 704, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 705, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [9 x i8] c"dim_lock\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [13 x i8] c"dim2_tasklet\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 49, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 46, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 295, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 247, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 249, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 479, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 484, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 493, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 498, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 507, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 513, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 521, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 527, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 533, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 540, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 666, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 615, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [10 x i8] c"plat_data\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1063, i32 34 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 936, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 938, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 944, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 950, i32 43 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 952, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 981, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 987, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1027, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1033, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [11 x i8] c"dim2_group\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 141, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [11 x i8] c"dim2_attrs\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 136, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 134, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 131, i32 41 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private constant [36 x i8] c"../drivers/staging/most/dim2/dim2.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 131, i32 52 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_fcnt235, ptr @__UNIQUE_ID_fcnttype234, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_dim2_driver_exit, ptr @__initcall__kmod_most_dim2__238_1113_dim2_driver_init6, ptr @__param_fcnt, ptr @configure_channel._entry, ptr @configure_channel._entry.49, ptr @configure_channel._entry.52, ptr @configure_channel._entry.54, ptr @configure_channel._entry.56, ptr @configure_channel._entry.59, ptr @configure_channel._entry.61, ptr @configure_channel._entry.63, ptr @configure_channel._entry.65, ptr @configure_channel._entry.68, ptr @configure_channel._entry_ptr, ptr @configure_channel._entry_ptr.51, ptr @configure_channel._entry_ptr.53, ptr @configure_channel._entry_ptr.55, ptr @configure_channel._entry_ptr.58, ptr @configure_channel._entry_ptr.60, ptr @configure_channel._entry_ptr.62, ptr @configure_channel._entry_ptr.64, ptr @configure_channel._entry_ptr.67, ptr @configure_channel._entry_ptr.70, ptr @dim2_driver_exit, ptr @dim2_probe._entry, ptr @dim2_probe._entry.12, ptr @dim2_probe._entry.16, ptr @dim2_probe._entry.20, ptr @dim2_probe._entry.24, ptr @dim2_probe._entry.9, ptr @dim2_probe._entry_ptr, ptr @dim2_probe._entry_ptr.11, ptr @dim2_probe._entry_ptr.15, ptr @dim2_probe._entry_ptr.18, ptr @dim2_probe._entry_ptr.22, ptr @dim2_probe._entry_ptr.26, ptr @dimcb_on_error._entry, ptr @dimcb_on_error._entry_ptr, ptr @fsl_mx6_enable._entry, ptr @fsl_mx6_enable._entry.78, ptr @fsl_mx6_enable._entry.83, ptr @fsl_mx6_enable._entry_ptr, ptr @fsl_mx6_enable._entry_ptr.80, ptr @fsl_mx6_enable._entry_ptr.85, ptr @poison_channel._entry, ptr @poison_channel._entry_ptr, ptr @rcar_gen2_enable._entry, ptr @rcar_gen2_enable._entry.88, ptr @rcar_gen2_enable._entry_ptr, ptr @rcar_gen2_enable._entry_ptr.89, ptr @rcar_gen3_enable._entry, ptr @rcar_gen3_enable._entry.91, ptr @rcar_gen3_enable._entry_ptr, ptr @rcar_gen3_enable._entry_ptr.92, ptr @request_netinfo._entry, ptr @request_netinfo._entry_ptr, ptr @retrieve_netinfo._entry, ptr @retrieve_netinfo._entry.44, ptr @retrieve_netinfo._entry_ptr, ptr @retrieve_netinfo._entry_ptr.46, ptr @service_done_flag._entry, ptr @service_done_flag._entry_ptr, ptr @fcnt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dim2_driver, ptr @.str.3, ptr @dim2_of_match, ptr @dim2_groups, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @dim2_probe.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @clk_mt, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @dim_lock, ptr @dim2_tasklet, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.57, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @plat_data, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @dim2_group, ptr @dim2_attrs, ptr @dev_attr_state, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcnt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dimcb_on_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_tasklet to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_done_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retrieve_netinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retrieve_netinfo._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_netinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plat_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mx6_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mx6_enable._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mx6_enable._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_enable._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_enable._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dim2_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dimcb_on_error(i8 noundef zeroext %error_id, ptr noundef %error_message) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %error_id to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, ptr noundef %error_message) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dim2_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dim2_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dim2_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @dim2_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dim2_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %clock_speed = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_speed) #10
  %0 = ptrtoint ptr %clock_speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clock_speed, align 4, !annotation !212
  %1 = load i8, ptr @fcnt, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3600) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %atx_idx = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %atx_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %atx_idx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @of_property_read_string(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %clock_speed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #13
  br label %err_free_dev

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %clock_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock_speed, align 4
  %clk_speed = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 6
  %call.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(6) @.str.31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end14_crit_edge, label %for.inc.i

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.i:                                        ; preds = %if.end6
  %call.1.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(6) @.str.32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.1.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end14_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end14_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end14_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end14_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.end14_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end14_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.36) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end14_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end14_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.if.end14_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end14_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.38) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.if.end14_crit_edge, label %do.end12

for.inc.6.i.if.end14_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end12:                                         ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #13
  br label %err_free_dev

if.end14:                                         ; preds = %for.inc.6.i.if.end14_crit_edge, %for.inc.5.i.if.end14_crit_edge, %for.inc.4.i.if.end14_crit_edge, %for.inc.3.i.if.end14_crit_edge, %for.inc.2.i.if.end14_crit_edge, %for.inc.1.i.if.end14_crit_edge, %for.inc.i.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end6.if.end14_crit_edge ], [ 1, %for.inc.i.if.end14_crit_edge ], [ 2, %for.inc.1.i.if.end14_crit_edge ], [ 3, %for.inc.2.i.if.end14_crit_edge ], [ 4, %for.inc.3.i.if.end14_crit_edge ], [ 5, %for.inc.4.i.if.end14_crit_edge ], [ 6, %for.inc.5.i.if.end14_crit_edge ], [ 7, %for.inc.6.i.if.end14_crit_edge ]
  %clk_speed.i = getelementptr [8 x %struct.anon.71], ptr @clk_mt, i32 0, i32 %i.07.lcssa.i, i32 1
  %9 = ptrtoint ptr %clk_speed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clk_speed.i, align 4
  %11 = ptrtoint ptr %clk_speed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %clk_speed, align 4
  %call15 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call17 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call15) #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call17, ptr %io_base, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call17 to i32
  br label %err_free_dev

if.end23:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call26 = call ptr @of_match_node(ptr noundef nonnull @dim2_of_match, ptr noundef %15) #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call26, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %tobool27.not = icmp eq ptr %17, null
  br i1 %tobool27.not, label %if.end23.do.end44_crit_edge, label %if.then28

if.end23.do.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.then28:                                        ; preds = %if.end23
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.then28.if.end36_crit_edge, label %if.then30

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then30:                                        ; preds = %if.then28
  %call32 = call i32 %19(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.err_free_dev_crit_edge

if.then30.err_free_dev_crit_edge:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_dev

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.then28.if.end36_crit_edge
  %disable = getelementptr inbounds %struct.dim2_platform_data, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disable, align 4
  %disable_platform = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %disable_platform to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %disable_platform, align 4
  %fcnt = getelementptr inbounds %struct.dim2_platform_data, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %fcnt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  %spec.select = select i1 %tobool37.not, i8 %1, i8 %24
  br label %do.end44

do.end44:                                         ; preds = %if.end36, %if.end23.do.end44_crit_edge
  %dev_fcnt.0 = phi i8 [ %1, %if.end23.do.end44_crit_edge ], [ %spec.select, %if.end36 ]
  %conv = zext i8 %dev_fcnt.0 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %conv) #13
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base, align 8
  %27 = ptrtoint ptr %clk_speed to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %clk_speed, align 4
  %conv48 = zext i8 %28 to i32
  %call50 = call zeroext i8 @dim_startup(ptr noundef %26, i32 noundef %conv48, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call50)
  %cmp.not = icmp eq i8 %call50, 0
  br i1 %cmp.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  %conv51 = zext i8 %call50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %conv51) #13
  br label %err_disable_platform

if.end59:                                         ; preds = %do.end44
  %call60 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.err_shutdown_dim_crit_edge, label %if.end64

if.end59.err_shutdown_dim_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_shutdown_dim

if.end64:                                         ; preds = %if.end59
  %call.i253 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call60, ptr noundef nonnull @dim2_ahb_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool67.not = icmp eq i32 %call.i253, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call60) #13
  br label %err_shutdown_dim

if.end73:                                         ; preds = %if.end64
  %call74 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.err_shutdown_dim_crit_edge, label %if.end78

if.end73.err_shutdown_dim_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_shutdown_dim

if.end78:                                         ; preds = %if.end73
  %call.i254 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @dim2_mlb_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool81.not = icmp eq i32 %call.i254, 0
  br i1 %tobool81.not, label %do.body88, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call74) #13
  br label %err_shutdown_dim

do.body88:                                        ; preds = %if.end78
  %netinfo_waitq = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %netinfo_waitq, ptr noundef nonnull @.str.27, ptr noundef nonnull @dim2_probe.__key) #10
  %deliver_netinfo = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 11
  %29 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %deliver_netinfo, align 8
  %call91 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @deliver_netinfo_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.28) #10
  %cmp.i255 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.then98, label %if.end95

if.end95:                                         ; preds = %do.body88
  %call94 = call i32 @wake_up_process(ptr noundef %call91) #10
  %netinfo_task = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %netinfo_task to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call91, ptr %netinfo_task, align 8
  %capabilities = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 2
  %hch = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 1
  br label %for.body

if.then98:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %netinfo_task260 = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %netinfo_task260 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call91, ptr %netinfo_task260, align 8
  %32 = ptrtoint ptr %call91 to i32
  br label %err_shutdown_dim

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end95
  %i.0261 = phi i32 [ 0, %if.end95 ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261
  %add.ptr105 = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261
  %pending_list = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261, i32 4
  %33 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pending_list, ptr %prev.i, align 4
  %started_list = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261, i32 5
  %35 = ptrtoint ptr %started_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %started_list, ptr %started_list, align 4
  %prev.i257 = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261, i32 5, i32 1
  %36 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %started_list, ptr %prev.i257, align 4
  %is_initialized = getelementptr %struct.hdm_channel, ptr %hch, i32 %i.0261, i32 1
  %37 = ptrtoint ptr %is_initialized to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %is_initialized, align 2
  %mul = shl nuw i32 %i.0261, 1
  %add = add nuw nsw i32 %mul, 2
  %call107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr105, i32 noundef 6, ptr noundef nonnull @.str.29, i32 noundef %add)
  %name_suffix = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 6
  %38 = ptrtoint ptr %name_suffix to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr105, ptr %name_suffix, align 8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 3, ptr %add.ptr, align 4
  %data_type = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 1
  %40 = ptrtoint ptr %data_type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 39, ptr %data_type, align 2
  %num_buffers_packet = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 2
  %41 = ptrtoint ptr %num_buffers_packet to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 32, ptr %num_buffers_packet, align 8
  %buffer_size_packet = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 3
  %42 = ptrtoint ptr %buffer_size_packet to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2048, ptr %buffer_size_packet, align 2
  %num_buffers_streaming = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 4
  %43 = ptrtoint ptr %num_buffers_streaming to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 32, ptr %num_buffers_streaming, align 4
  %buffer_size_streaming = getelementptr %struct.most_channel_capability, ptr %capabilities, i32 %i.0261, i32 5
  %44 = ptrtoint ptr %buffer_size_streaming to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 8192, ptr %buffer_size_streaming, align 2
  %inc = add nuw nsw i32 %i.0261, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name110 = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call15, align 4
  %call112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name110, i32 noundef 22, ptr noundef nonnull @.str.30, i32 noundef %46)
  %most_iface = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3
  %interface = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %interface, align 8
  %description = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %name110, ptr %description, align 4
  %num_channels = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 5
  %49 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 31, ptr %num_channels, align 8
  %channel_vector = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 6
  %50 = ptrtoint ptr %channel_vector to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %capabilities, ptr %channel_vector, align 4
  %configure = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 9
  %51 = ptrtoint ptr %configure to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @configure_channel, ptr %configure, align 8
  %enqueue = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 10
  %52 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @enqueue, ptr %enqueue, align 4
  %dma_alloc = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 7
  %53 = ptrtoint ptr %dma_alloc to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @dma_alloc, ptr %dma_alloc, align 8
  %dma_free = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %dma_free to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @dma_free, ptr %dma_free, align 4
  %poison_channel = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 11
  %55 = ptrtoint ptr %poison_channel to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @poison_channel, ptr %poison_channel, align 8
  %request_netinfo = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 12
  %56 = ptrtoint ptr %request_netinfo to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @request_netinfo, ptr %request_netinfo, align 4
  %driver_dev = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %driver_dev to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev1, ptr %driver_dev, align 8
  %58 = ptrtoint ptr %most_iface to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %most_iface, align 4
  %init_name = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %name110, ptr %init_name, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev1, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %61 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @dim2_release, ptr %release, align 4
  %call138 = call i32 @most_register_interface(ptr noundef %most_iface) #10
  br label %cleanup

err_shutdown_dim:                                 ; preds = %if.then98, %do.end85, %if.end73.err_shutdown_dim_crit_edge, %do.end71, %if.end59.err_shutdown_dim_crit_edge
  %ret.0 = phi i32 [ %call.i253, %do.end71 ], [ %call.i254, %do.end85 ], [ %32, %if.then98 ], [ %call60, %if.end59.err_shutdown_dim_crit_edge ], [ %call74, %if.end73.err_shutdown_dim_crit_edge ]
  call void @dim_shutdown() #10
  br label %err_disable_platform

err_disable_platform:                             ; preds = %err_shutdown_dim, %do.end56
  %ret.1 = phi i32 [ -19, %do.end56 ], [ %ret.0, %err_shutdown_dim ]
  %disable_platform139 = getelementptr inbounds %struct.dim2_hdm, ptr %call7.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %disable_platform139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %disable_platform139, align 4
  %tobool140.not = icmp eq ptr %63, null
  br i1 %tobool140.not, label %err_disable_platform.err_free_dev_crit_edge, label %if.then141

err_disable_platform.err_free_dev_crit_edge:      ; preds = %err_disable_platform
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_dev

if.then141:                                       ; preds = %err_disable_platform
  call void @__sanitizer_cov_trace_pc() #12
  call void %63(ptr noundef %pdev) #10
  br label %err_free_dev

err_free_dev:                                     ; preds = %if.then141, %err_disable_platform.err_free_dev_crit_edge, %if.then30.err_free_dev_crit_edge, %if.then20, %do.end12, %do.end
  %ret.2 = phi i32 [ %call2, %do.end ], [ -22, %do.end12 ], [ %13, %if.then20 ], [ %call32, %if.then30.err_free_dev_crit_edge ], [ %ret.1, %if.then141 ], [ %ret.1, %err_disable_platform.err_free_dev_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_free_dev ], [ %call138, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_speed) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dim2_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %most_iface = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 3
  tail call void @most_deregister_interface(ptr noundef %most_iface) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_startup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dim2_ahb_isr(i32 noundef %irq, ptr noundef %_dev) #0 align 64 {
entry:
  %buffer = alloca [32 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buffer) #10
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 128)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %ch_idx.015.i = phi i32 [ 0, %entry ], [ %inc4.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.014.i = phi i32 [ 0, %entry ], [ %idx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %is_initialized.i = getelementptr %struct.dim2_hdm, ptr %_dev, i32 0, i32 1, i32 %ch_idx.015.i, i32 1
  %1 = ptrtoint ptr %is_initialized.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_initialized.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %ch.i = getelementptr %struct.dim2_hdm, ptr %_dev, i32 0, i32 1, i32 %ch_idx.015.i, i32 2
  %inc.i = add i32 %idx.014.i, 1
  %arrayidx3.i = getelementptr ptr, ptr %buffer, i32 %idx.014.i
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ch.i, ptr %arrayidx3.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %idx.1.i = phi i32 [ %inc.i, %if.then.i ], [ %idx.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %ch_idx.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, 31
  br i1 %exitcond.not.i, label %get_active_channels.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

get_active_channels.exit:                         ; preds = %for.inc.i
  %arrayidx6.i = getelementptr ptr, ptr %buffer, i32 %idx.1.i
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx6.i, align 4
  call void @dim_service_ahb_int_irq(ptr noundef nonnull %buffer) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call2) #10
  %5 = ptrtoint ptr %_dev to i32
  store i32 %5, ptr getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 5), align 4
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i7 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i7, label %if.then.i8, label %get_active_channels.exit.tasklet_schedule.exit_crit_edge

get_active_channels.exit.tasklet_schedule.exit_crit_edge: ; preds = %get_active_channels.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i8:                                       ; preds = %get_active_channels.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__tasklet_schedule(ptr noundef nonnull @dim2_tasklet) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i8, %get_active_channels.exit.tasklet_schedule.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buffer) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dim2_mlb_isr(i32 noundef %irq, ptr noundef %_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  tail call void @dim_service_mlb_int_irq() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call2) #10
  %atx_idx = getelementptr inbounds %struct.dim2_hdm, ptr %_dev, i32 0, i32 14
  %0 = ptrtoint ptr %atx_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %atx_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp5 = icmp sgt i32 %1, -1
  br i1 %cmp5, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hch = getelementptr inbounds %struct.dim2_hdm, ptr %_dev, i32 0, i32 1
  %is_initialized = getelementptr %struct.dim2_hdm, ptr %_dev, i32 0, i32 1, i32 %1, i32 1
  %2 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.while.cond_crit_edge

land.lhs.true.while.cond_crit_edge:               ; preds = %land.lhs.true
  br label %while.cond

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %land.lhs.true.while.cond_crit_edge
  %4 = ptrtoint ptr %atx_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atx_idx, align 4
  %add.ptr = getelementptr %struct.hdm_channel, ptr %hch, i32 %5
  %call11 = tail call fastcc i32 @try_start_dim_transfer(ptr noundef %add.ptr)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.cond.while.cond_crit_edge, label %while.cond.if.end_crit_edge

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end:                                           ; preds = %while.cond.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deliver_netinfo_thread(ptr noundef %data) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call51 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call51, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %deliver_netinfo = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 11
  %netinfo_waitq = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 10
  %on_netinfo = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 16
  %most_iface = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 3
  %link_state = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 13
  %mac_addrs = getelementptr inbounds %struct.dim2_hdm, ptr %data, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 220) #10
  %0 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %deliver_netinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %while.body.if.then20_crit_edge

while.body.if.then20_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false:                                    ; preds = %while.body
  %call4 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call4, label %lor.lhs.false.if.end16_crit_edge, label %if.then

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call647 = call i32 @prepare_to_wait_event(ptr noundef %netinfo_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %3 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %deliver_netinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not48 = icmp eq i32 %4, 0
  br i1 %tobool8.not48, label %if.then.lor.lhs.false9_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.lor.lhs.false9_crit_edge:                 ; preds = %if.then
  br label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %cleanup.lor.lhs.false9_crit_edge, %if.then.lor.lhs.false9_crit_edge
  %call649 = phi i32 [ %call6, %cleanup.lor.lhs.false9_crit_edge ], [ %call647, %if.then.lor.lhs.false9_crit_edge ]
  %call10 = call zeroext i1 @kthread_should_stop() #10
  br i1 %call10, label %lor.lhs.false9.for.end_crit_edge, label %if.end

lor.lhs.false9.for.end_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call649)
  %tobool12.not = icmp eq i32 %call649, 0
  br i1 %tobool12.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %netinfo_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %5 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %deliver_netinfo, align 8
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %cleanup.lor.lhs.false9_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false9_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false9

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false9.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %netinfo_waitq, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end16

if.end16:                                         ; preds = %__out, %lor.lhs.false.if.end16_crit_edge
  %7 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %deliver_netinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.end16.if.end26_crit_edge, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then20:                                        ; preds = %if.end16.if.then20_crit_edge, %while.body.if.then20_crit_edge
  %8 = phi i32 [ %.pr, %if.end16.if.then20_crit_edge ], [ %1, %while.body.if.then20_crit_edge ]
  %dec = add i32 %8, -1
  %9 = ptrtoint ptr %deliver_netinfo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %deliver_netinfo, align 8
  %10 = ptrtoint ptr %on_netinfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %on_netinfo, align 8
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %if.then20.if.end26_crit_edge, label %if.then23

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %link_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %link_state, align 2
  call void %11(ptr noundef %most_iface, i8 noundef zeroext %13, ptr noundef %mac_addrs) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then20.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #10
  br i1 %call, label %if.end26.while.end_crit_edge, label %if.end26.while.body_crit_edge

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_channel(ptr noundef %most_iface, i32 noundef %ch_idx, ptr noundef %ccfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ccfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %frombool = zext i1 %cmp to i8
  %subbuffer_size = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 5
  %2 = ptrtoint ptr %subbuffer_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subbuffer_size, align 2
  %buffer_size = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 3
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %buffer_size, align 2
  %mul = shl i32 %ch_idx, 1
  %add = add i32 %mul, 2
  %hch = getelementptr i8, ptr %most_iface, i32 -2356
  %add.ptr1 = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %ch_idx)
  %6 = icmp ugt i32 %ch_idx, 30
  br i1 %6, label %do.body5, label %do.end10, !prof !214

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 464, 0\0A.popsection", ""() #10, !srcloc !215
  unreachable

do.end10:                                         ; preds = %entry
  %is_initialized = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 1
  %7 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end13, label %do.end10.cleanup_crit_edge

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %dbr_size = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 7
  %9 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dbr_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool14.not = icmp eq i16 %10, 0
  %spec.select364 = select i1 %tobool14.not, ptr %dbr_size, ptr null
  %reset_dbr_size = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 3
  %11 = ptrtoint ptr %reset_dbr_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select364, ptr %reset_dbr_size, align 4
  %12 = ptrtoint ptr %dbr_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dbr_size, align 2
  %ch = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 2
  %dbr_size17 = getelementptr inbounds %struct.dim_channel, ptr %ch, i32 0, i32 3
  %14 = ptrtoint ptr %dbr_size17 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %dbr_size17, align 4
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %ccfg, i32 0, i32 1
  %15 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end227 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb71
    i32 4, label %sw.bb129
    i32 32, label %sw.bb177
  ]

sw.bb:                                            ; preds = %if.end13
  %call = tail call zeroext i16 @dim_norm_ctrl_async_buffer_size(i16 noundef zeroext %5) #10
  %conv18 = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp19 = icmp eq i16 %call, 0
  br i1 %cmp19, label %do.end24, label %if.end28

do.end24:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %add.ptr1) #13
  br label %cleanup

if.end28:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %5)
  %cmp32.not = icmp eq i16 %call, %5
  br i1 %cmp32.not, label %if.end28.do.body46_crit_edge, label %do.end37

if.end28.do.body46_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body46

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %conv31 = zext i16 %5 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %add.ptr1, i32 noundef %conv31, i32 noundef %conv18) #13
  br label %do.body46

do.body46:                                        ; preds = %do.end37, %if.end28.do.body46_crit_edge
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %conv59 = trunc i32 %add to i16
  %mul64 = zext i1 %cmp to i16
  %cond68 = shl i16 %call, %mul64
  %call70 = tail call zeroext i8 @dim_init_control(ptr noundef %ch, i8 noundef zeroext %frombool, i16 noundef zeroext %conv59, i16 noundef zeroext %cond68) #10
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end13
  %call72 = tail call zeroext i16 @dim_norm_ctrl_async_buffer_size(i16 noundef zeroext %5) #10
  %conv73 = zext i16 %call72 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call72)
  %cmp74 = icmp eq i16 %call72, 0
  br i1 %cmp74, label %do.end79, label %if.end84

do.end79:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %add.ptr1) #13
  br label %cleanup

if.end84:                                         ; preds = %sw.bb71
  %19 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call72, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call72, i16 %5)
  %cmp88.not = icmp eq i16 %call72, %5
  br i1 %cmp88.not, label %if.end84.do.body102_crit_edge, label %do.end93

if.end84.do.body102_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

do.end93:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %conv87 = zext i16 %5 to i32
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %add.ptr1, i32 noundef %conv87, i32 noundef %conv73) #13
  br label %do.body102

do.body102:                                       ; preds = %do.end93, %if.end84.do.body102_crit_edge
  %call109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %conv117 = trunc i32 %add to i16
  %mul122 = zext i1 %cmp to i16
  %cond126 = shl i16 %call72, %mul122
  %call128 = tail call zeroext i8 @dim_init_async(ptr noundef %ch, i8 noundef zeroext %frombool, i16 noundef zeroext %conv117, i16 noundef zeroext %cond126) #10
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end13
  %call130 = tail call zeroext i16 @dim_norm_isoc_buffer_size(i16 noundef zeroext %5, i16 noundef zeroext %3) #10
  %conv131 = zext i16 %call130 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call130)
  %cmp132 = icmp eq i16 %call130, 0
  br i1 %cmp132, label %do.end137, label %if.end142

do.end137:                                        ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #12
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %add.ptr1) #13
  br label %cleanup

if.end142:                                        ; preds = %sw.bb129
  %20 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %call130, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call130, i16 %5)
  %cmp146.not = icmp eq i16 %call130, %5
  br i1 %cmp146.not, label %if.end142.do.body160_crit_edge, label %do.end151

if.end142.do.body160_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body160

do.end151:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %conv145 = zext i16 %5 to i32
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %add.ptr1, i32 noundef %conv145, i32 noundef %conv131) #13
  br label %do.body160

do.body160:                                       ; preds = %do.end151, %if.end142.do.body160_crit_edge
  %call167 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %conv175 = trunc i32 %add to i16
  %call176 = tail call zeroext i8 @dim_init_isoc(ptr noundef %ch, i8 noundef zeroext %frombool, i16 noundef zeroext %conv175, i16 noundef zeroext %3) #10
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end13
  %call178 = tail call zeroext i16 @dim_norm_sync_buffer_size(i16 noundef zeroext %5, i16 noundef zeroext %3) #10
  %conv179 = zext i16 %call178 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call178)
  %cmp180 = icmp eq i16 %call178, 0
  br i1 %cmp180, label %do.end185, label %if.end190

do.end185:                                        ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #12
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %add.ptr1) #13
  br label %cleanup

if.end190:                                        ; preds = %sw.bb177
  %21 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %call178, ptr %buffer_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call178, i16 %5)
  %cmp194.not = icmp eq i16 %call178, %5
  br i1 %cmp194.not, label %if.end190.do.body208_crit_edge, label %do.end199

if.end190.do.body208_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body208

do.end199:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %conv193 = zext i16 %5 to i32
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %add.ptr1, i32 noundef %conv193, i32 noundef %conv179) #13
  br label %do.body208

do.body208:                                       ; preds = %do.end199, %if.end190.do.body208_crit_edge
  %call215 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %conv223 = trunc i32 %add to i16
  %call224 = tail call zeroext i8 @dim_init_sync(ptr noundef %ch, i8 noundef zeroext %frombool, i16 noundef zeroext %conv223, i16 noundef zeroext %3) #10
  br label %sw.epilog

do.end227:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %add.ptr1, i32 noundef %16) #13
  br label %cleanup

sw.epilog:                                        ; preds = %do.body208, %do.body160, %do.body102, %do.body46
  %hal_ret.0 = phi i8 [ %call224, %do.body208 ], [ %call176, %do.body160 ], [ %call128, %do.body102 ], [ %call70, %do.body46 ]
  %flags.0 = phi i32 [ %call215, %do.body208 ], [ %call167, %do.body160 ], [ %call109, %do.body102 ], [ %call51, %do.body46 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hal_ret.0)
  %cmp234.not = icmp eq i8 %hal_ret.0, 0
  br i1 %cmp234.not, label %if.end248, label %if.then236

if.then236:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv233 = zext i8 %hal_ret.0 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %flags.0) #10
  %22 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_type, align 4
  %conv246 = zext i1 %cmp to i32
  %call247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %add.ptr1, i32 noundef %conv233, i32 noundef %23, i32 noundef %conv246) #13
  br label %cleanup

if.end248:                                        ; preds = %sw.epilog
  %24 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_type, align 4
  %data_type250 = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 7
  %26 = ptrtoint ptr %data_type250 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data_type250, align 4
  %27 = ptrtoint ptr %ccfg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ccfg, align 4
  %direction252 = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 6
  %29 = ptrtoint ptr %direction252 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %direction252, align 4
  %30 = ptrtoint ptr %is_initialized to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %is_initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp255 = icmp eq i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp258 = icmp eq i32 %28, 2
  %or.cond = select i1 %cmp255, i1 %cmp258, i1 false
  br i1 %or.cond, label %land.lhs.true260, label %if.end248.if.end265_crit_edge

if.end248.if.end265_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

land.lhs.true260:                                 ; preds = %if.end248
  %atx_idx = getelementptr i8, ptr %most_iface, i32 168
  %31 = ptrtoint ptr %atx_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %atx_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp261 = icmp slt i32 %32, 0
  br i1 %cmp261, label %if.then263, label %land.lhs.true260.if.end265_crit_edge

land.lhs.true260.if.end265_crit_edge:             ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

if.then263:                                       ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %atx_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ch_idx, ptr %atx_idx, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %land.lhs.true260.if.end265_crit_edge, %if.end248.if.end265_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %flags.0) #10
  %34 = ptrtoint ptr %dbr_size17 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dbr_size17, align 4
  %36 = ptrtoint ptr %dbr_size to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %dbr_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end265, %if.then236, %do.end227, %do.end185, %do.end137, %do.end79, %do.end24, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end227 ], [ -22, %do.end185 ], [ -19, %if.then236 ], [ 0, %if.end265 ], [ -22, %do.end137 ], [ -22, %do.end79 ], [ -22, %do.end24 ], [ -1, %do.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enqueue(ptr noundef %most_iface, i32 noundef %ch_idx, ptr noundef %mbo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hch = getelementptr i8, ptr %most_iface, i32 -2356
  %add.ptr1 = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %ch_idx)
  %0 = icmp ugt i32 %ch_idx, 30
  br i1 %0, label %do.body4, label %do.end9, !prof !214

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #10, !srcloc !216
  unreachable

do.end9:                                          ; preds = %entry
  %is_initialized = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 1
  %1 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool10.not = icmp eq i8 %2, 0
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %3 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13 = icmp eq i32 %4, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %do.body17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body17:                                        ; preds = %if.end12
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %list = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %pending_list = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pending_list, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef %pending_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body17.list_add_tail.exit_crit_edge

do.body17.list_add_tail.exit_crit_edge:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body17.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call20) #10
  %call25 = tail call fastcc i32 @try_start_dim_transfer(ptr noundef %add.ptr1)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -1, %do.end9.cleanup_crit_edge ], [ -14, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dma_alloc(ptr noundef %mbo, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %driver_dev = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_dev, align 4
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %bus_address, i32 noundef 3264, i32 noundef 0) #10
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_free(ptr nocapture noundef readonly %mbo, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ifp = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 3
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %driver_dev = getelementptr inbounds %struct.most_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_dev, align 4
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %4 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_address, align 4
  %bus_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 7
  %6 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_address, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %size, ptr noundef %5, i32 noundef %7, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poison_channel(ptr noundef %most_iface, i32 noundef %ch_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hch = getelementptr i8, ptr %most_iface, i32 -2356
  %add.ptr1 = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %ch_idx)
  %0 = icmp ugt i32 %ch_idx, 30
  br i1 %0, label %do.body4, label %do.end9, !prof !214

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #10, !srcloc !217
  unreachable

do.end9:                                          ; preds = %entry
  %is_initialized = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 1
  %1 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool10.not = icmp eq i8 %2, 0
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2)) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @tasklet_unlock_wait(ptr noundef nonnull @dim2_tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %ch = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 2
  %call22 = tail call zeroext i8 @dim_destroy_channel(ptr noundef %ch) #10
  %4 = ptrtoint ptr %is_initialized to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_initialized, align 2
  %atx_idx = getelementptr i8, ptr %most_iface, i32 168
  %5 = ptrtoint ptr %atx_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %atx_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %ch_idx)
  %cmp24 = icmp eq i32 %6, %ch_idx
  br i1 %cmp24, label %if.then26, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %atx_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %atx_idx, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end12.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !221
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @dim2_tasklet, i32 0, i32 2)) #10, !srcloc !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call22)
  %cmp30.not = icmp eq i8 %call22, 0
  br i1 %cmp30.not, label %if.end28.if.end39_crit_edge, label %do.end35

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %add.ptr1) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end35, %if.end28.if.end39_crit_edge
  %ret.0 = phi i32 [ -14, %do.end35 ], [ 0, %if.end28.if.end39_crit_edge ]
  %started_list = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 5
  tail call fastcc void @complete_all_mbos(ptr noundef %started_list)
  %pending_list = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 4
  tail call fastcc void @complete_all_mbos(ptr noundef %pending_list)
  %reset_dbr_size = getelementptr inbounds %struct.hdm_channel, ptr %add.ptr1, i32 0, i32 3
  %9 = ptrtoint ptr %reset_dbr_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_dbr_size, align 4
  %tobool40.not = icmp eq ptr %10, null
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %10, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end9.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_netinfo(ptr noundef %most_iface, i32 noundef %ch_idx, ptr noundef %on_netinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %on_netinfo1 = getelementptr i8, ptr %most_iface, i32 308
  %0 = ptrtoint ptr %on_netinfo1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %on_netinfo, ptr %on_netinfo1, align 8
  %tobool.not = icmp eq ptr %on_netinfo, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %atx_idx = getelementptr i8, ptr %most_iface, i32 168
  %1 = ptrtoint ptr %atx_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %atx_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call7 = tail call ptr @most_get_mbo(ptr noundef %most_iface, i32 noundef %2, ptr noundef null) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_length = getelementptr inbounds %struct.mbo, ptr %call7, i32 0, i32 8
  %3 = ptrtoint ptr %buffer_length to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 5, ptr %buffer_length, align 4
  %virt_address = getelementptr inbounds %struct.mbo, ptr %call7, i32 0, i32 6
  %4 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_address, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %5, align 1
  %arrayidx11 = getelementptr i8, ptr %5, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %5, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %5, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr i8, ptr %5, i32 4
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 64, ptr %arrayidx14, align 1
  tail call void @most_submit_mbo(ptr noundef nonnull %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dim2_release(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netinfo_task = getelementptr inbounds %struct.dim2_hdm, ptr %d, i32 0, i32 9
  %0 = ptrtoint ptr %netinfo_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netinfo_task, align 8
  %call = tail call i32 @kthread_stop(ptr noundef %1) #10
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  tail call void @dim_shutdown() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call4) #10
  %disable_platform = getelementptr inbounds %struct.dim2_hdm, ptr %d, i32 0, i32 17
  %2 = ptrtoint ptr %disable_platform to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable_platform, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 -16
  tail call void %3(ptr noundef %add.ptr10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_shutdown() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_service_ahb_int_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dim2_tasklet_fn(i32 noundef %data) #0 align 64 {
entry:
  %st.i = alloca %struct.dim_ch_state_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %hch = getelementptr inbounds %struct.dim2_hdm, ptr %0, i32 0, i32 1
  %link_state.i.i = getelementptr inbounds %struct.dim2_hdm, ptr %0, i32 0, i32 13
  %mac_addrs.i.i = getelementptr inbounds %struct.dim2_hdm, ptr %0, i32 0, i32 12
  %deliver_netinfo.i.i = getelementptr inbounds %struct.dim2_hdm, ptr %0, i32 0, i32 11
  %netinfo_waitq.i.i = getelementptr inbounds %struct.dim2_hdm, ptr %0, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ch_idx.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %is_initialized = getelementptr %struct.dim2_hdm, ptr %0, i32 0, i32 1, i32 %ch_idx.021, i32 1
  %1 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body1

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body1:                                         ; preds = %for.body
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %ch = getelementptr %struct.dim2_hdm, ptr %0, i32 0, i32 1, i32 %ch_idx.021, i32 2
  %call8 = call zeroext i8 @dim_service_channel(ptr noundef %ch) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call3) #10
  %add.ptr.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st.i) #10
  %3 = ptrtoint ptr %st.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %st.i, align 4, !annotation !212
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !214

do.body4.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 272, 0\0A.popsection", ""() #10, !srcloc !223
  unreachable

do.body10.i:                                      ; preds = %do.body1
  %is_initialized.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 1
  %4 = ptrtoint ptr %is_initialized.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_initialized.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not.i = icmp eq i8 %5, 0
  br i1 %tobool11.not.i, label %do.body21.i, label %do.body31.i, !prof !214

do.body21.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 273, 0\0A.popsection", ""() #10, !srcloc !224
  unreachable

do.body31.i:                                      ; preds = %do.body10.i
  %call32.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %ch.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 2
  %call37.i = call ptr @dim_get_channel_state(ptr noundef %ch.i, ptr noundef nonnull %st.i) #10
  %done_buffers38.i = getelementptr inbounds %struct.dim_ch_state_t, ptr %call37.i, i32 0, i32 1
  %6 = ptrtoint ptr %done_buffers38.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %done_buffers38.i, align 2
  %conv39.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool40.not.i = icmp eq i16 %7, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32.i) #10
  br label %service_done_flag.exit

if.end42.i:                                       ; preds = %do.body31.i
  %call45.i = call zeroext i1 @dim_detach_buffers(ptr noundef %ch.i, i16 noundef zeroext %7) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32.i) #10
  br i1 %call45.i, label %do.body50.lr.ph.i, label %if.end42.i.service_done_flag.exit_crit_edge

if.end42.i.service_done_flag.exit_crit_edge:      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %service_done_flag.exit

do.body50.lr.ph.i:                                ; preds = %if.end42.i
  %started_list.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 5
  %data_type.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 7
  %direction.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 6
  %pending_list.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 4
  %prev.i187.i = getelementptr %struct.hdm_channel, ptr %hch, i32 %ch_idx.021, i32 4, i32 1
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.end142.i.do.body50.i_crit_edge, %do.body50.lr.ph.i
  %done_buffers.0193.i = phi i32 [ %conv39.i, %do.body50.lr.ph.i ], [ %dec.i, %if.end142.i.do.body50.i_crit_edge ]
  %call57.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %8 = ptrtoint ptr %started_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %started_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %started_list.i
  br i1 %cmp.i.not.i, label %if.then64.i, label %if.end70.i

if.then64.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call57.i) #10
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  br label %service_done_flag.exit

if.end70.i:                                       ; preds = %do.body50.i
  %add.ptr72.i = getelementptr i8, ptr %9, i32 -8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end70.i.list_del.exit.i_crit_edge

if.end70.i.list_del.exit.i_crit_edge:             ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end70.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call57.i) #10
  %virt_address.i = getelementptr i8, ptr %9, i32 20
  %18 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_address.i, align 4
  %20 = ptrtoint ptr %data_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp74.i = icmp eq i32 %21, 2
  br i1 %cmp74.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %list_del.exit.i
  %22 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp76.i = icmp eq i32 %23, 1
  br i1 %cmp76.i, label %land.lhs.true78.i, label %land.lhs.true.i.if.then127.i_crit_edge

land.lhs.true.i.if.then127.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true78.i:                                ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr i8, ptr %19, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %25)
  %cmp80.i = icmp eq i8 %25, 24
  br i1 %cmp80.i, label %land.lhs.true82.i, label %land.lhs.true78.i.if.then127.i_crit_edge

land.lhs.true78.i.if.then127.i_crit_edge:         ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true82.i:                                ; preds = %land.lhs.true78.i
  %arrayidx83.i = getelementptr i8, ptr %19, i32 2
  %26 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx83.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %cmp85.i = icmp eq i8 %27, 5
  br i1 %cmp85.i, label %land.lhs.true87.i, label %land.lhs.true82.i.if.then127.i_crit_edge

land.lhs.true82.i.if.then127.i_crit_edge:         ; preds = %land.lhs.true82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true87.i:                                ; preds = %land.lhs.true82.i
  %arrayidx88.i = getelementptr i8, ptr %19, i32 3
  %28 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %29)
  %cmp90.i = icmp eq i8 %29, 12
  br i1 %cmp90.i, label %land.lhs.true92.i, label %land.lhs.true87.i.if.then127.i_crit_edge

land.lhs.true87.i.if.then127.i_crit_edge:         ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true92.i:                                ; preds = %land.lhs.true87.i
  %arrayidx93.i = getelementptr i8, ptr %19, i32 13
  %30 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx93.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %31)
  %cmp95.i = icmp eq i8 %31, 60
  br i1 %cmp95.i, label %land.lhs.true97.i, label %land.lhs.true92.i.if.then127.i_crit_edge

land.lhs.true92.i.if.then127.i_crit_edge:         ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true97.i:                                ; preds = %land.lhs.true92.i
  %arrayidx98.i = getelementptr i8, ptr %19, i32 14
  %32 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx98.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp100.i = icmp eq i8 %33, 0
  br i1 %cmp100.i, label %land.lhs.true102.i, label %land.lhs.true97.i.if.then127.i_crit_edge

land.lhs.true97.i.if.then127.i_crit_edge:         ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

land.lhs.true102.i:                               ; preds = %land.lhs.true97.i
  %arrayidx103.i = getelementptr i8, ptr %19, i32 15
  %34 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx103.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %35)
  %cmp105.i = icmp eq i8 %35, 10
  br i1 %cmp105.i, label %if.then107.i, label %land.lhs.true102.i.if.then127.i_crit_edge

land.lhs.true102.i.if.then127.i_crit_edge:        ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

if.then107.i:                                     ; preds = %land.lhs.true102.i
  %arrayidx.i.i = getelementptr i8, ptr %19, i32 16
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = zext i8 %37 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i.i, 8
  %arrayidx2.i.i = getelementptr i8, ptr %19, i32 17
  %38 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %39 to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %or.i.i) #13
  %arrayidx4.i.i = getelementptr i8, ptr %19, i32 18
  %40 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx4.i.i, align 1
  %42 = ptrtoint ptr %link_state.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %link_state.i.i, align 2
  %conv10.i.i = zext i8 %41 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv10.i.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 19
  %43 = call ptr @memcpy(ptr %mac_addrs.i.i, ptr %add.ptr.i.i, i32 6)
  %44 = ptrtoint ptr %deliver_netinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %deliver_netinfo.i.i, align 8
  %inc.i.i = add i32 %45, 1
  store i32 %inc.i.i, ptr %deliver_netinfo.i.i, align 8
  call void @__wake_up(ptr noundef %netinfo_waitq.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %call116.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %46 = ptrtoint ptr %prev.i187.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i187.i, align 4
  %call.i.i188.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %47, ptr noundef %pending_list.i) #10
  br i1 %call.i.i188.i, label %if.end.i.i189.i, label %if.then107.i.list_add_tail.exit.i_crit_edge

if.then107.i.list_add_tail.exit.i_crit_edge:      ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i189.i:                                  ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %prev.i187.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %9, ptr %prev.i187.i, align 4
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pending_list.i, ptr %9, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %9, ptr %47, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i189.i, %if.then107.i.list_add_tail.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call116.i) #10
  br label %if.end142.i

if.else.i:                                        ; preds = %list_del.exit.i
  %.off.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.else.i.if.then127.i_crit_edge, label %if.else138.i

if.else.i.if.then127.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then127.i

if.then127.i:                                     ; preds = %if.else.i.if.then127.i_crit_edge, %land.lhs.true102.i.if.then127.i_crit_edge, %land.lhs.true97.i.if.then127.i_crit_edge, %land.lhs.true92.i.if.then127.i_crit_edge, %land.lhs.true87.i.if.then127.i_crit_edge, %land.lhs.true82.i.if.then127.i_crit_edge, %land.lhs.true78.i.if.then127.i_crit_edge, %land.lhs.true.i.if.then127.i_crit_edge
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %19, align 1
  %conv129.i = zext i8 %53 to i32
  %mul.i = shl nuw nsw i32 %conv129.i, 8
  %arrayidx130.i = getelementptr i8, ptr %19, i32 1
  %54 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx130.i, align 1
  %conv131.i = zext i8 %55 to i32
  %add.i = or i32 %mul.i, %conv131.i
  %add132.i = add nuw nsw i32 %add.i, 2
  %buffer_length.i = getelementptr i8, ptr %9, i32 28
  %56 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %buffer_length.i, align 4
  %conv133.i = zext i16 %57 to i32
  %58 = call i32 @llvm.umin.i32(i32 %add132.i, i32 %conv133.i) #10
  %conv137.i = trunc i32 %58 to i16
  br label %if.end141.i

if.else138.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %buffer_length139.i = getelementptr i8, ptr %9, i32 28
  %59 = ptrtoint ptr %buffer_length139.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %buffer_length139.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.else138.i, %if.then127.i
  %.sink.i = phi i16 [ %60, %if.else138.i ], [ %conv137.i, %if.then127.i ]
  %processed_length140.i = getelementptr i8, ptr %9, i32 30
  %61 = ptrtoint ptr %processed_length140.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %.sink.i, ptr %processed_length140.i, align 2
  %status.i = getelementptr i8, ptr %9, i32 32
  %62 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %status.i, align 4
  %complete.i = getelementptr i8, ptr %9, i32 36
  %63 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %complete.i, align 4
  call void %64(ptr noundef %add.ptr72.i) #10
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.end141.i, %list_add_tail.exit.i
  %dec.i = add nsw i32 %done_buffers.0193.i, -1
  %tobool48.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool48.not.i, label %if.end142.i.service_done_flag.exit_crit_edge, label %if.end142.i.do.body50.i_crit_edge

if.end142.i.do.body50.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50.i

if.end142.i.service_done_flag.exit_crit_edge:     ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %service_done_flag.exit

service_done_flag.exit:                           ; preds = %if.end142.i.service_done_flag.exit_crit_edge, %if.then64.i, %if.end42.i.service_done_flag.exit_crit_edge, %if.then41.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st.i) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %service_done_flag.exit
  %call10 = call fastcc i32 @try_start_dim_transfer(ptr noundef nonnull %add.ptr.i)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %while.cond.while.cond_crit_edge, label %while.cond.for.inc_crit_edge

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

for.inc:                                          ; preds = %while.cond.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ch_idx.021, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_service_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_start_dim_transfer(ptr noundef %hdm_ch) unnamed_addr #0 align 64 {
entry:
  %st = alloca %struct.dim_ch_state_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_list = getelementptr inbounds %struct.hdm_channel, ptr %hdm_ch, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st) #10
  %0 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %st, align 4, !annotation !212
  %tobool.not = icmp eq ptr %hdm_ch, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !214

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #10, !srcloc !225
  unreachable

do.body10:                                        ; preds = %entry
  %is_initialized = getelementptr inbounds %struct.hdm_channel, ptr %hdm_ch, i32 0, i32 1
  %1 = ptrtoint ptr %is_initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_initialized, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool11.not = icmp eq i8 %2, 0
  br i1 %tobool11.not, label %do.body21, label %do.body31, !prof !214

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #10, !srcloc !226
  unreachable

do.body31:                                        ; preds = %do.body10
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %3 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %4, %pending_list
  br i1 %cmp.i.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32) #10
  br label %cleanup

if.end40:                                         ; preds = %do.body31
  %ch = getelementptr inbounds %struct.hdm_channel, ptr %hdm_ch, i32 0, i32 2
  %call41 = call ptr @dim_get_channel_state(ptr noundef %ch, ptr noundef nonnull %st) #10
  %5 = ptrtoint ptr %call41 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call41, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool42.not = icmp eq i8 %6, 0
  br i1 %tobool42.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %7 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pending_list, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -8
  %buffer_length = getelementptr i8, ptr %8, i32 28
  %9 = ptrtoint ptr %buffer_length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %buffer_length, align 4
  %call47 = call zeroext i16 @dim_dbr_space(ptr noundef %ch) #10
  call void @__sanitizer_cov_trace_cmp2(i16 %call47, i16 %10)
  %cmp50 = icmp ult i16 %call47, %10
  br i1 %cmp50, label %if.then52, label %do.body54

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32) #10
  br label %cleanup

do.body54:                                        ; preds = %if.end44
  %bus_address = getelementptr i8, ptr %8, i32 24
  %11 = ptrtoint ptr %bus_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp55 = icmp eq i32 %12, 0
  br i1 %cmp55, label %do.body64, label %do.end72, !prof !214

do.body64:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/dim2/dim2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #10, !srcloc !227
  unreachable

do.end72:                                         ; preds = %do.body54
  %call75 = call zeroext i1 @dim_enqueue_buffer(ptr noundef %ch, i32 noundef %12, i16 noundef zeroext %10) #10
  %13 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pending_list, align 4
  br i1 %call75, label %if.end78, label %if.then76

if.then76:                                        ; preds = %do.end72
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then76.list_del.exit_crit_edge

if.then76.list_del.exit_crit_edge:                ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then76.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32) #10
  %processed_length = getelementptr i8, ptr %8, i32 30
  %23 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %processed_length, align 2
  %status = getelementptr i8, ptr %8, i32 32
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %status, align 4
  %complete = getelementptr i8, ptr %8, i32 36
  %25 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %complete, align 4
  call void %26(ptr noundef %add.ptr) #10
  br label %cleanup

if.end78:                                         ; preds = %do.end72
  %started_list = getelementptr inbounds %struct.hdm_channel, ptr %hdm_ch, i32 0, i32 5
  %call.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #10
  br i1 %call.i.i104, label %if.end.i.i107, label %if.end78.__list_del_entry.exit.i_crit_edge

if.end78.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i107:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i105 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i105, align 4
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %14, align 4
  %prev1.i.i.i106 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i106, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i107, %if.end78.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.hdm_channel, ptr %hdm_ch, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %34, ptr noundef %started_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %14, ptr %prev.i2.i, align 4
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %started_list, ptr %14, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %14, ptr %34, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call32) #10
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %list_del.exit, %if.then52, %if.then43, %if.then39
  %retval.0 = phi i32 [ -11, %if.then39 ], [ -11, %if.then52 ], [ 0, %list_move_tail.exit ], [ -14, %list_del.exit ], [ -11, %if.then43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dim_get_channel_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dim_detach_buffers(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dim_dbr_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dim_enqueue_buffer(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dim_service_mlb_int_irq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dim_norm_ctrl_async_buffer_size(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_init_control(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_init_async(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dim_norm_isoc_buffer_size(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_init_isoc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dim_norm_sync_buffer_size(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_init_sync(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dim_destroy_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @complete_all_mbos(ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call214 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not15 = icmp eq ptr %1, %head
  br i1 %cmp.i.not15, label %entry.if.then_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %list_del.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2.lcssa = phi i32 [ %call214, %entry.if.then_crit_edge ], [ %call2, %list_del.exit.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call2.lcssa) #10
  ret void

if.end:                                           ; preds = %list_del.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = phi ptr [ %16, %list_del.exit.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %call216 = phi i32 [ %call2, %list_del.exit.if.end_crit_edge ], [ %call214, %entry.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call216) #10
  %processed_length = getelementptr i8, ptr %2, i32 30
  %11 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %processed_length, align 2
  %status = getelementptr i8, ptr %2, i32 32
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %status, align 4
  %complete = getelementptr i8, ptr %2, i32 36
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %complete, align 4
  tail call void %14(ptr noundef %add.ptr) #10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %16, %head
  br i1 %cmp.i.not, label %list_del.exit.if.then_crit_edge, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

list_del.exit.if.then_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @most_get_mbo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_submit_mbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mx6_enable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.75) #10
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %clk, align 8
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i48 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i48, label %if.end.i, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef nonnull %call2) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %if.end.do.end11_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end11_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  %clk_speed = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %clk_speed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clk_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  br i1 %cmp, label %if.then15, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.82) #10
  %clk_pll = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %clk_pll to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %clk_pll, align 4
  %tobool.not.i49 = icmp eq ptr %call17, null
  %cmp.i50 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %spec.select.i51 = or i1 %tobool.not.i49, %cmp.i50
  br i1 %spec.select.i51, label %do.end23, label %do.body27

do.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84) #13
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %cleanup

do.body27:                                        ; preds = %if.then15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2012741632) #10, !srcloc !229
  %10 = ptrtoint ptr %clk_pll to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_pll, align 4
  %call.i52 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %do.body27.cleanup_crit_edge

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i56:                                       ; preds = %do.body27
  %call1.i54 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool2.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool2.not.i55, label %if.end.i56.cleanup_crit_edge, label %if.then3.i57

if.end.i56.cleanup_crit_edge:                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i57:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i57, %if.end.i56.cleanup_crit_edge, %do.body27.cleanup_crit_edge, %do.end23, %if.end13.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %retval.0.i.ph, %do.end11 ], [ -14, %do.end23 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.body27.cleanup_crit_edge ], [ 0, %if.end.i56.cleanup_crit_edge ], [ 0, %if.then3.i57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_mx6_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_speed = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %clk_pll = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %clk_pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pll, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_enable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.86) #13
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call2) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then3.i, %if.end.do.end13_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end13_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  %clk_speed = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %clk_speed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ugt i8 %7, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1536
  br i1 %cmp, label %do.body18, label %do.body26

do.body18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr25 = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -2012741632) #10, !srcloc !229
  br label %do.body32

do.body26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #10, !srcloc !229
  br label %do.body32

do.body32:                                        ; preds = %do.body26, %do.body18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %io_base35 = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base35, align 8
  %add.ptr36 = getelementptr i8, ptr %13, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 50331648) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %io_base35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base35, align 8
  %add.ptr41 = getelementptr i8, ptr %15, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 50266624) #10, !srcloc !229
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %do.end13, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %retval.0.i.ph, %do.end13 ], [ 0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen2_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !229
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen3_enable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_speed = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %clk_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.86) #13
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 8
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call3) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then3.i, %if.end.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end14_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.81) #13
  br label %cleanup

do.body17:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %10 = select i1 %cmp, i32 16777216, i32 0
  %11 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base, align 8
  %add.ptr24 = getelementptr i8, ptr %12, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %10) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base, align 8
  %add.ptr29 = getelementptr i8, ptr %14, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 50331648) #10, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base, align 8
  %add.ptr34 = getelementptr i8, ptr %16, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 50266624) #10, !srcloc !229
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %do.end14, %do.end
  %retval.0 = phi i32 [ %7, %do.end ], [ %retval.0.i.ph, %do.end14 ], [ 0, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_gen3_disable(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.dim2_hdm, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !229
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dim_lock) #10
  %call5 = tail call zeroext i1 @dim_get_lock_state() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dim_lock, i32 noundef %call2) #10
  %cond = select i1 %call5, ptr @.str.94, ptr @.str.95
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond) #10
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dim_get_lock_state() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !186, !187, !188, !190, !191, !193, !194, !196, !198, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__param_fcnt, !1, !"__param_fcnt", i1 false, i1 false}
!1 = !{!"../drivers/staging/most/dim2/dim2.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_fcnttype234, !1, !"__UNIQUE_ID_fcnttype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fcnt235, !4, !"__UNIQUE_ID_fcnt235", i1 false, i1 false}
!4 = !{!"../drivers/staging/most/dim2/dim2.c", i32 44, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/most/dim2/dim2.c", i32 151, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dimcb_on_error._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @dimcb_on_error._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_most_dim2__238_1113_dim2_driver_init6, !12, !"__initcall__kmod_most_dim2__238_1113_dim2_driver_init6", i1 false, i1 false}
!12 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1113, i32 1}
!13 = !{ptr @__exitcall_dim2_driver_exit, !12, !"__exitcall_dim2_driver_exit", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author239, !15, !"__UNIQUE_ID_author239", i1 false, i1 false}
!15 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1115, i32 1}
!16 = !{ptr @__UNIQUE_ID_description240, !17, !"__UNIQUE_ID_description240", i1 false, i1 false}
!17 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1116, i32 1}
!18 = !{ptr @__UNIQUE_ID_file241, !19, !"__UNIQUE_ID_file241", i1 false, i1 false}
!19 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1117, i32 1}
!20 = !{ptr @__UNIQUE_ID_license242, !19, !"__UNIQUE_ID_license242", i1 false, i1 false}
!21 = !{ptr @__param_str_fcnt, !1, !"__param_str_fcnt", i1 false, i1 false}
!22 = !{ptr @fcnt, !23, !"fcnt", i1 false, i1 false}
!23 = !{!"../drivers/staging/most/dim2/dim2.c", i32 42, i32 11}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1107, i32 11}
!26 = !{ptr @dim2_driver, !27, !"dim2_driver", i1 false, i1 false}
!27 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1103, i32 31}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/most/dim2/dim2.c", i32 777, i32 11}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/most/dim2/dim2.c", i32 779, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dim2_probe._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @dim2_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/most/dim2/dim2.c", i32 785, i32 3}
!39 = !{ptr @dim2_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dim2_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/most/dim2/dim2.c", i32 809, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dim2_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dim2_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/most/dim2/dim2.c", i32 813, i32 3}
!48 = !{ptr @dim2_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dim2_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/most/dim2/dim2.c", i32 825, i32 11}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/most/dim2/dim2.c", i32 827, i32 3}
!54 = !{ptr @dim2_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dim2_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/most/dim2/dim2.c", i32 838, i32 11}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/most/dim2/dim2.c", i32 840, i32 3}
!60 = !{ptr @dim2_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dim2_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dim2_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/staging/most/dim2/dim2.c", i32 844, i32 2}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/most/dim2/dim2.c", i32 846, i32 22}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/most/dim2/dim2.c", i32 860, i32 48}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/most/dim2/dim2.c", i32 878, i32 10}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/most/dim2/dim2.c", i32 698, i32 4}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/most/dim2/dim2.c", i32 699, i32 4}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/most/dim2/dim2.c", i32 700, i32 4}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/most/dim2/dim2.c", i32 701, i32 4}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/most/dim2/dim2.c", i32 702, i32 4}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/most/dim2/dim2.c", i32 703, i32 4}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/most/dim2/dim2.c", i32 704, i32 4}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/most/dim2/dim2.c", i32 705, i32 4}
!87 = !{ptr @clk_mt, !88, !"clk_mt", i1 false, i1 false}
!88 = !{!"../drivers/staging/most/dim2/dim2.c", i32 697, i32 3}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/most/dim2/dim2.c", i32 46, i32 8}
!91 = !{ptr @dim_lock, !90, !"dim_lock", i1 false, i1 false}
!92 = !{ptr @dim2_tasklet, !93, !"dim2_tasklet", i1 false, i1 false}
!93 = !{!"../drivers/staging/most/dim2/dim2.c", i32 49, i32 8}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/most/dim2/dim2.c", i32 295, i32 4}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @service_done_flag._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @service_done_flag._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/most/dim2/dim2.c", i32 247, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @retrieve_netinfo._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @retrieve_netinfo._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/most/dim2/dim2.c", i32 249, i32 2}
!106 = !{ptr @retrieve_netinfo._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @retrieve_netinfo._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/most/dim2/dim2.c", i32 479, i32 4}
!110 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @configure_channel._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @configure_channel._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/most/dim2/dim2.c", i32 484, i32 4}
!115 = !{ptr @configure_channel._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @configure_channel._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @configure_channel._entry.52, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/staging/most/dim2/dim2.c", i32 493, i32 4}
!119 = !{ptr @configure_channel._entry_ptr.53, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @configure_channel._entry.54, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/staging/most/dim2/dim2.c", i32 498, i32 4}
!122 = !{ptr @configure_channel._entry_ptr.55, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/most/dim2/dim2.c", i32 507, i32 4}
!125 = !{ptr @configure_channel._entry.56, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @configure_channel._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @configure_channel._entry.59, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/staging/most/dim2/dim2.c", i32 513, i32 4}
!129 = !{ptr @configure_channel._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @configure_channel._entry.61, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/staging/most/dim2/dim2.c", i32 521, i32 4}
!132 = !{ptr @configure_channel._entry_ptr.62, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @configure_channel._entry.63, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/staging/most/dim2/dim2.c", i32 527, i32 4}
!135 = !{ptr @configure_channel._entry_ptr.64, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/staging/most/dim2/dim2.c", i32 533, i32 3}
!138 = !{ptr @configure_channel._entry.65, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @configure_channel._entry_ptr.67, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/staging/most/dim2/dim2.c", i32 540, i32 3}
!142 = !{ptr @configure_channel._entry.68, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @configure_channel._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/most/dim2/dim2.c", i32 666, i32 3}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @poison_channel._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @poison_channel._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/most/dim2/dim2.c", i32 615, i32 3}
!151 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @request_netinfo._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @request_netinfo._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @dim2_of_match, !155, !"dim2_of_match", i1 false, i1 false}
!155 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1079, i32 34}
!156 = !{ptr @plat_data, !157, !"plat_data", i1 false, i1 false}
!157 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1063, i32 34}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/most/dim2/dim2.c", i32 936, i32 38}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/staging/most/dim2/dim2.c", i32 938, i32 3}
!162 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @fsl_mx6_enable._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @fsl_mx6_enable._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/most/dim2/dim2.c", i32 944, i32 3}
!167 = !{ptr @fsl_mx6_enable._entry.78, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @fsl_mx6_enable._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/most/dim2/dim2.c", i32 950, i32 43}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/staging/most/dim2/dim2.c", i32 952, i32 4}
!174 = !{ptr @fsl_mx6_enable._entry.83, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @fsl_mx6_enable._entry_ptr.85, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/most/dim2/dim2.c", i32 981, i32 3}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @rcar_gen2_enable._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @rcar_gen2_enable._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @rcar_gen2_enable._entry.88, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../drivers/staging/most/dim2/dim2.c", i32 987, i32 3}
!183 = !{ptr @rcar_gen2_enable._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1027, i32 3}
!186 = !{ptr @rcar_gen3_enable._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @rcar_gen3_enable._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @rcar_gen3_enable._entry.91, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/staging/most/dim2/dim2.c", i32 1033, i32 3}
!190 = !{ptr @rcar_gen3_enable._entry_ptr.92, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @dim2_groups, !192, !"dim2_groups", i1 false, i1 false}
!192 = !{!"../drivers/staging/most/dim2/dim2.c", i32 141, i32 1}
!193 = !{ptr @dim2_group, !192, !"dim2_group", i1 false, i1 false}
!194 = !{ptr @dim2_attrs, !195, !"dim2_attrs", i1 false, i1 false}
!195 = !{!"../drivers/staging/most/dim2/dim2.c", i32 136, i32 26}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/staging/most/dim2/dim2.c", i32 134, i32 8}
!198 = !{ptr @dev_attr_state, !197, !"dev_attr_state", i1 false, i1 false}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/most/dim2/dim2.c", i32 131, i32 41}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/most/dim2/dim2.c", i32 131, i32 52}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{i8 0, i8 2}
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i64 2154361255, i64 2154361752, i64 2154361292, i64 2154361348, i64 2154361382, i64 2154361406, i64 2154361447, i64 2154361468, i64 2154361496, i64 2154361530}
!216 = !{i64 2154388270, i64 2154388767, i64 2154388307, i64 2154388363, i64 2154388397, i64 2154388421, i64 2154388462, i64 2154388483, i64 2154388511, i64 2154388545}
!217 = !{i64 2154394600, i64 2154395097, i64 2154394637, i64 2154394693, i64 2154394727, i64 2154394751, i64 2154394792, i64 2154394813, i64 2154394841, i64 2154394875}
!218 = !{i64 2148366828, i64 2148366854, i64 2148366883, i64 2148366917, i64 2148366948, i64 2148366971}
!219 = !{i64 2153149557}
!220 = !{i64 2153150199}
!221 = !{i64 2153150546}
!222 = !{i64 2148369293, i64 2148369319, i64 2148369348, i64 2148369382, i64 2148369413, i64 2148369436}
!223 = !{i64 2154347515, i64 2154348012, i64 2154347552, i64 2154347608, i64 2154347642, i64 2154347666, i64 2154347707, i64 2154347728, i64 2154347756, i64 2154347790}
!224 = !{i64 2154349156, i64 2154349653, i64 2154349193, i64 2154349249, i64 2154349283, i64 2154349307, i64 2154349348, i64 2154349369, i64 2154349397, i64 2154349431}
!225 = !{i64 2154336043, i64 2154336540, i64 2154336080, i64 2154336136, i64 2154336170, i64 2154336194, i64 2154336235, i64 2154336256, i64 2154336284, i64 2154336318}
!226 = !{i64 2154337684, i64 2154338181, i64 2154337721, i64 2154337777, i64 2154337811, i64 2154337835, i64 2154337876, i64 2154337897, i64 2154337925, i64 2154337959}
!227 = !{i64 2154341002, i64 2154341499, i64 2154341039, i64 2154341095, i64 2154341129, i64 2154341153, i64 2154341194, i64 2154341215, i64 2154341243, i64 2154341277}
!228 = !{i64 2154417123}
!229 = !{i64 5060490}
!230 = !{i64 2154420957}
!231 = !{i64 2154421757}
!232 = !{i64 2154422162}
!233 = !{i64 2154422578}
!234 = !{i64 2154426010}
!235 = !{i64 2154426417}
!236 = !{i64 2154426840}
!237 = !{i64 2154427245}
!238 = !{i64 2154427661}
