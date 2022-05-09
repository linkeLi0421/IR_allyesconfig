; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/com90xx.c_pt.bc'
source_filename = "../drivers/net/arcnet/com90xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__param_str_io = internal constant [11 x i8] c"com90xx.io\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @io } }, section "__param", align 4
@__UNIQUE_ID_iotype337 = internal constant [24 x i8] c"com90xx.parmtype=io:int\00", section ".modinfo", align 1
@__param_str_irq = internal constant [12 x i8] c"com90xx.irq\00", align 1
@irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq = internal constant %struct.kernel_param { ptr @__param_str_irq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 2, %union.anon.97 { ptr @irq } }, section "__param", align 4
@__UNIQUE_ID_irqtype338 = internal constant [25 x i8] c"com90xx.parmtype=irq:int\00", section ".modinfo", align 1
@__param_str_shmem = internal constant [14 x i8] c"com90xx.shmem\00", align 1
@shmem = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_shmem = internal constant %struct.kernel_param { ptr @__param_str_shmem, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @shmem } }, section "__param", align 4
@__UNIQUE_ID_shmemtype339 = internal constant [27 x i8] c"com90xx.parmtype=shmem:int\00", section ".modinfo", align 1
@__param_str_device = internal constant [15 x i8] c"com90xx.device\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_device = internal constant %struct.kparam_string { i32 9, ptr @device }, align 4
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_string_device } }, section "__param", align 4
@__UNIQUE_ID_devicetype340 = internal constant [31 x i8] c"com90xx.parmtype=device:string\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [40 x i8] c"com90xx.file=drivers/net/arcnet/com90xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [20 x i8] c"com90xx.license=GPL\00", section ".modinfo", align 1
@numcards = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cards = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__initcall__kmod_com90xx__350_680_com90xx_init6 = internal global ptr @com90xx_init, section ".initcall6.init", align 4
@__exitcall_com90xx_exit = internal global ptr @com90xx_exit, section ".exitcall.exit", align 4
@__setup_str_com90xx_setup = internal constant [9 x i8] c"com90xx=\00", section ".init.rodata", align 1
@__setup_com90xx_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_com90xx_setup, ptr @com90xx_setup, i32 0 }, section ".init.setup", align 4
@device = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@com90xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016arcnet:com90xx: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/arcnet/com90xx.c\00", [35 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr = internal global ptr @com90xx_probe._entry, section ".printk_index", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"COM90xx chipset support\00", [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.6 = internal global ptr @com90xx_probe._entry.4, section ".printk_index", align 4
@com90xx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cS1: \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.9 = internal global ptr @com90xx_probe._entry.7, section ".printk_index", align 4
@com90xx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%Xh \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.12 = internal global ptr @com90xx_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arcnet (90xx)\00", [18 x i8] zeroinitializer }, align 32
@com90xx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c(request_region)\0A\00", [44 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.16 = internal global ptr @com90xx_probe._entry.14, section ".printk_index", align 4
@com90xx_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.18 = internal global ptr @com90xx_probe._entry.17, section ".printk_index", align 4
@com90xx_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c(empty)\0A\00", [21 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.21 = internal global ptr @com90xx_probe._entry.19, section ".printk_index", align 4
@com90xx_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.23 = internal global ptr @com90xx_probe._entry.22, section ".printk_index", align 4
@com90xx_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.25 = internal global ptr @com90xx_probe._entry.24, section ".printk_index", align 4
@com90xx_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.27 = internal global ptr @com90xx_probe._entry.26, section ".printk_index", align 4
@com90xx_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.29 = internal global ptr @com90xx_probe._entry.28, section ".printk_index", align 4
@com90xx_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01cS1: No ARCnet cards found.\0A\00", [34 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.32 = internal global ptr @com90xx_probe._entry.30, section ".printk_index", align 4
@com90xx_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.34 = internal global ptr @com90xx_probe._entry.33, section ".printk_index", align 4
@com90xx_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cS2: \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.37 = internal global ptr @com90xx_probe._entry.35, section ".printk_index", align 4
@com90xx_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.39 = internal global ptr @com90xx_probe._entry.38, section ".printk_index", align 4
@com90xx_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.41 = internal global ptr @com90xx_probe._entry.40, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@com90xx_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.43 = internal global ptr @com90xx_probe._entry.42, section ".printk_index", align 4
@com90xx_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cS3: \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.46 = internal global ptr @com90xx_probe._entry.44, section ".printk_index", align 4
@com90xx_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c%lXh \00", [24 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.49 = internal global ptr @com90xx_probe._entry.47, section ".printk_index", align 4
@com90xx_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c(request_mem_region)\0A\00", [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.52 = internal global ptr @com90xx_probe._entry.50, section ".printk_index", align 4
@com90xx_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cStage 3: \00", [20 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.55 = internal global ptr @com90xx_probe._entry.53, section ".printk_index", align 4
@com90xx_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c(ioremap)\0A\00", [19 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.58 = internal global ptr @com90xx_probe._entry.56, section ".printk_index", align 4
@com90xx_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.60 = internal global ptr @com90xx_probe._entry.59, section ".printk_index", align 4
@com90xx_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c(%02Xh != %02Xh)\0A\00", [44 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.63 = internal global ptr @com90xx_probe._entry.61, section ".printk_index", align 4
@com90xx_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.65 = internal global ptr @com90xx_probe._entry.64, section ".printk_index", align 4
@com90xx_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c(read only)\0A\00", [17 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.68 = internal global ptr @com90xx_probe._entry.66, section ".printk_index", align 4
@com90xx_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.70 = internal global ptr @com90xx_probe._entry.69, section ".printk_index", align 4
@com90xx_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.72 = internal global ptr @com90xx_probe._entry.71, section ".printk_index", align 4
@com90xx_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.74 = internal global ptr @com90xx_probe._entry.73, section ".printk_index", align 4
@com90xx_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.76 = internal global ptr @com90xx_probe._entry.75, section ".printk_index", align 4
@com90xx_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\01cS3: No ARCnet cards found.\0A\00", [34 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.79 = internal global ptr @com90xx_probe._entry.77, section ".printk_index", align 4
@com90xx_probe._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.81 = internal global ptr @com90xx_probe._entry.80, section ".printk_index", align 4
@com90xx_probe._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cS4: \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.84 = internal global ptr @com90xx_probe._entry.82, section ".printk_index", align 4
@com90xx_probe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.86 = internal global ptr @com90xx_probe._entry.85, section ".printk_index", align 4
@com90xx_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.88 = internal global ptr @com90xx_probe._entry.87, section ".printk_index", align 4
@com90xx_probe._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.90 = internal global ptr @com90xx_probe._entry.89, section ".printk_index", align 4
@com90xx_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cS5: \00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.93 = internal global ptr @com90xx_probe._entry.91, section ".printk_index", align 4
@com90xx_probe._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.95 = internal global ptr @com90xx_probe._entry.94, section ".printk_index", align 4
@com90xx_probe._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.1, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c(status=%Xh)\0A\00", [16 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.98 = internal global ptr @com90xx_probe._entry.96, section ".printk_index", align 4
@com90xx_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.1, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.100 = internal global ptr @com90xx_probe._entry.99, section ".printk_index", align 4
@com90xx_probe._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01c (eternal reset, status=%Xh)\0A\00", [32 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.103 = internal global ptr @com90xx_probe._entry.101, section ".printk_index", align 4
@com90xx_probe._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.105 = internal global ptr @com90xx_probe._entry.104, section ".printk_index", align 4
@com90xx_probe._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c(airq=%d)\0A\00", [19 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.108 = internal global ptr @com90xx_probe._entry.106, section ".printk_index", align 4
@com90xx_probe._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.1, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.110 = internal global ptr @com90xx_probe._entry.109, section ".printk_index", align 4
@com90xx_probe._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c(%d,\00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.113 = internal global ptr @com90xx_probe._entry.111, section ".printk_index", align 4
@com90xx_probe._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.1, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c%lXh)\0A\00", [23 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.116 = internal global ptr @com90xx_probe._entry.114, section ".printk_index", align 4
@com90xx_probe._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%Xh-\00", [25 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.119 = internal global ptr @com90xx_probe._entry.117, section ".printk_index", align 4
@com90xx_probe._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.1, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\01cno matching shmem)\0A\00", [42 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.122 = internal global ptr @com90xx_probe._entry.120, section ".printk_index", align 4
@com90xx_probe._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.124 = internal global ptr @com90xx_probe._entry.123, section ".printk_index", align 4
@com90xx_probe._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@com90xx_probe._entry_ptr.126 = internal global ptr @com90xx_probe._entry.125, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@com90xx_found._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\01ccom90xx: Can't allocate device!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90xx_found\00", [18 x i8] zeroinitializer }, align 32
@com90xx_found._entry_ptr = internal global ptr @com90xx_found._entry, section ".printk_index", align 4
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get IRQ %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COM90xx\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't remap device memory!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"COM90xx station %02Xh found at %03lXh, IRQ %d, ShMem %lXh (%ld*%xh).\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resetting (status=%02Xh)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reset failed: TESTvalue not present.\0A\00", [58 x i8] zeroinitializer }, align 32
@com90xx_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015arcnet:com90xx: Disabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"com90xx_setup\00", [18 x i8] zeroinitializer }, align 32
@com90xx_setup._entry_ptr = internal global ptr @com90xx_setup._entry, section ".printk_index", align 4
@com90xx_setup._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013arcnet:com90xx: Too many arguments\0A\00", [58 x i8] zeroinitializer }, align 32
@com90xx_setup._entry_ptr.145 = internal global ptr @com90xx_setup._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.147 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 86, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 87, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"shmem\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 88, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"numcards\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 71, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 70, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 89, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 122, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 145, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 146, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 148, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 152, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 154, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 155, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 162, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 163, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 173, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 174, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 178, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 181, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 195, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 196, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 198, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 200, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 213, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 214, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 216, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 219, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 220, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 227, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 228, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 234, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 237, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 249, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 250, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 253, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 254, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 267, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 270, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 285, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 286, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 288, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 290, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 306, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 307, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 309, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 316, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 317, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 328, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 330, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 352, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 353, i32 5 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 364, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 392, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 405, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 412, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 414, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 424, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 471, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 512, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 518, i32 18 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 529, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 539, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 595, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 616, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 690, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 696, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.445 = private constant [32 x i8] c"../drivers/net/arcnet/com90xx.c\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.445, i32 709, i32 36 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_devicetype340, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_iotype337, ptr @__UNIQUE_ID_irqtype338, ptr @__UNIQUE_ID_license349, ptr @__UNIQUE_ID_shmemtype339, ptr @__exitcall_com90xx_exit, ptr @__initcall__kmod_com90xx__350_680_com90xx_init6, ptr @__param_device, ptr @__param_io, ptr @__param_irq, ptr @__param_shmem, ptr @__setup_com90xx_setup, ptr @com90xx_exit, ptr @com90xx_found._entry, ptr @com90xx_found._entry_ptr, ptr @com90xx_probe._entry, ptr @com90xx_probe._entry.10, ptr @com90xx_probe._entry.101, ptr @com90xx_probe._entry.104, ptr @com90xx_probe._entry.106, ptr @com90xx_probe._entry.109, ptr @com90xx_probe._entry.111, ptr @com90xx_probe._entry.114, ptr @com90xx_probe._entry.117, ptr @com90xx_probe._entry.120, ptr @com90xx_probe._entry.123, ptr @com90xx_probe._entry.125, ptr @com90xx_probe._entry.14, ptr @com90xx_probe._entry.17, ptr @com90xx_probe._entry.19, ptr @com90xx_probe._entry.22, ptr @com90xx_probe._entry.24, ptr @com90xx_probe._entry.26, ptr @com90xx_probe._entry.28, ptr @com90xx_probe._entry.30, ptr @com90xx_probe._entry.33, ptr @com90xx_probe._entry.35, ptr @com90xx_probe._entry.38, ptr @com90xx_probe._entry.4, ptr @com90xx_probe._entry.40, ptr @com90xx_probe._entry.42, ptr @com90xx_probe._entry.44, ptr @com90xx_probe._entry.47, ptr @com90xx_probe._entry.50, ptr @com90xx_probe._entry.53, ptr @com90xx_probe._entry.56, ptr @com90xx_probe._entry.59, ptr @com90xx_probe._entry.61, ptr @com90xx_probe._entry.64, ptr @com90xx_probe._entry.66, ptr @com90xx_probe._entry.69, ptr @com90xx_probe._entry.7, ptr @com90xx_probe._entry.71, ptr @com90xx_probe._entry.73, ptr @com90xx_probe._entry.75, ptr @com90xx_probe._entry.77, ptr @com90xx_probe._entry.80, ptr @com90xx_probe._entry.82, ptr @com90xx_probe._entry.85, ptr @com90xx_probe._entry.87, ptr @com90xx_probe._entry.89, ptr @com90xx_probe._entry.91, ptr @com90xx_probe._entry.94, ptr @com90xx_probe._entry.96, ptr @com90xx_probe._entry.99, ptr @com90xx_probe._entry_ptr, ptr @com90xx_probe._entry_ptr.100, ptr @com90xx_probe._entry_ptr.103, ptr @com90xx_probe._entry_ptr.105, ptr @com90xx_probe._entry_ptr.108, ptr @com90xx_probe._entry_ptr.110, ptr @com90xx_probe._entry_ptr.113, ptr @com90xx_probe._entry_ptr.116, ptr @com90xx_probe._entry_ptr.119, ptr @com90xx_probe._entry_ptr.12, ptr @com90xx_probe._entry_ptr.122, ptr @com90xx_probe._entry_ptr.124, ptr @com90xx_probe._entry_ptr.126, ptr @com90xx_probe._entry_ptr.16, ptr @com90xx_probe._entry_ptr.18, ptr @com90xx_probe._entry_ptr.21, ptr @com90xx_probe._entry_ptr.23, ptr @com90xx_probe._entry_ptr.25, ptr @com90xx_probe._entry_ptr.27, ptr @com90xx_probe._entry_ptr.29, ptr @com90xx_probe._entry_ptr.32, ptr @com90xx_probe._entry_ptr.34, ptr @com90xx_probe._entry_ptr.37, ptr @com90xx_probe._entry_ptr.39, ptr @com90xx_probe._entry_ptr.41, ptr @com90xx_probe._entry_ptr.43, ptr @com90xx_probe._entry_ptr.46, ptr @com90xx_probe._entry_ptr.49, ptr @com90xx_probe._entry_ptr.52, ptr @com90xx_probe._entry_ptr.55, ptr @com90xx_probe._entry_ptr.58, ptr @com90xx_probe._entry_ptr.6, ptr @com90xx_probe._entry_ptr.60, ptr @com90xx_probe._entry_ptr.63, ptr @com90xx_probe._entry_ptr.65, ptr @com90xx_probe._entry_ptr.68, ptr @com90xx_probe._entry_ptr.70, ptr @com90xx_probe._entry_ptr.72, ptr @com90xx_probe._entry_ptr.74, ptr @com90xx_probe._entry_ptr.76, ptr @com90xx_probe._entry_ptr.79, ptr @com90xx_probe._entry_ptr.81, ptr @com90xx_probe._entry_ptr.84, ptr @com90xx_probe._entry_ptr.86, ptr @com90xx_probe._entry_ptr.88, ptr @com90xx_probe._entry_ptr.9, ptr @com90xx_probe._entry_ptr.90, ptr @com90xx_probe._entry_ptr.93, ptr @com90xx_probe._entry_ptr.95, ptr @com90xx_probe._entry_ptr.98, ptr @com90xx_setup._entry, ptr @com90xx_setup._entry.143, ptr @com90xx_setup._entry_ptr, ptr @com90xx_setup._entry_ptr.145, ptr @io, ptr @irq, ptr @shmem, ptr @numcards, ptr @cards, ptr @device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.20, ptr @.str.31, ptr @.str.36, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.62, ptr @.str.67, ptr @.str.78, ptr @.str.83, ptr @.str.92, ptr @.str.97, ptr @.str.102, ptr @.str.107, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.146], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numcards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_probe._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_found._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com90xx_setup._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @com90xx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @numcards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp14 = icmp sgt i32 %0, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %count.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @cards, i32 0, i32 %count.015
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @unregister_netdev(ptr noundef %2) #7
  %irq = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 64
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %2) #7
  %mem_start = getelementptr i8, ptr %2, i32 5000
  %5 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_start, align 4
  tail call void @iounmap(ptr noundef %6) #7
  %base_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_addr, align 32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %8, i32 noundef 16) #7
  %mem_start2 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %mem_start2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mem_start2, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_end, align 8
  %sub = sub i32 1, %10
  %add = add i32 %sub, %12
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %add) #7
  tail call void @free_arcdev(ptr noundef %2) #7
  %inc = add nuw nsw i32 %count.015, 1
  %13 = load i32, ptr @numcards, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_arcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @com90xx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 9, ptr @irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @com90xx_probe() #10
  %1 = load i32, ptr @numcards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @com90xx_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  %ints = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ints) #7
  %0 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %ints, i32 0, i32 3
  %3 = call ptr @memset(ptr %ints, i32 255, i32 32)
  %call = call ptr @get_options(ptr noundef %s, i32 noundef 8, ptr noundef nonnull %ints) #7
  %4 = ptrtoint ptr %ints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ints, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.do.end6_crit_edge [
    i32 0, label %land.lhs.true
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb10_crit_edge
    i32 1, label %entry.sw.bb12_crit_edge
  ]

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.do.end6_crit_edge

land.lhs.true.do.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #11
  br label %cleanup

do.end6:                                          ; preds = %land.lhs.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #11
  br label %sw.bb

sw.bb:                                            ; preds = %do.end6, %entry.sw.bb_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr @shmem, align 4
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb, %entry.sw.bb10_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  store i32 %12, ptr @irq, align 4
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 4
  store i32 %14, ptr @io, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %sw.bb12.cleanup_crit_edge, label %if.then15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @device, i32 noundef 9, ptr noundef nonnull @.str.146, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %sw.bb12.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ints) #7
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @com90xx_probe() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ports = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ports) #7
  %0 = call ptr @memset(ptr %ports, i32 0, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 768) #12
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %entry.cleanup960_crit_edge, label %if.end10

entry.cleanup960_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup960

if.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i1122 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #12
  %tobool12.not = icmp eq ptr %call7.i.i1122, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup960

if.end14:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %3 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %do.end

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end14.if.end18_crit_edge
  %4 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool19.not = icmp eq i32 %4, 0
  br i1 %tobool19.not, label %if.end18.for.body_crit_edge, label %if.then20

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ports, align 4
  br label %if.end23

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end18.for.body_crit_edge
  %count.01150 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 512, %if.end18.for.body_crit_edge ]
  %numports.01149 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %inc21 = add nuw nsw i32 %numports.01149, 1
  %arrayidx22 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %numports.01149
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count.01150, ptr %arrayidx22, align 4
  %add = add nuw nsw i32 %count.01150, 16
  %exitcond.not = icmp eq i32 %inc21, 32
  br i1 %exitcond.not, label %for.body.if.end23_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %if.then20
  %numports.1 = phi i32 [ 1, %if.then20 ], [ 32, %for.body.if.end23_crit_edge ]
  %7 = load i32, ptr @shmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not = icmp eq i32 %7, 0
  br i1 %tobool24.not, label %if.end23.for.body31_crit_edge, label %if.then25

if.end23.for.body31_crit_edge:                    ; preds = %if.end23
  br label %for.body31

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i.i, align 8
  br label %for.body41.preheader

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %if.end23.for.body31_crit_edge
  %count.11152 = phi i32 [ %add35, %for.body31.for.body31_crit_edge ], [ 655360, %if.end23.for.body31_crit_edge ]
  %numshmems.01151 = phi i32 [ %inc32, %for.body31.for.body31_crit_edge ], [ 0, %if.end23.for.body31_crit_edge ]
  %inc32 = add nuw nsw i32 %numshmems.01151, 1
  %arrayidx33 = getelementptr i32, ptr %call7.i.i, i32 %numshmems.01151
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %count.11152, ptr %arrayidx33, align 4
  %add35 = add nuw nsw i32 %count.11152, 2048
  %exitcond1203.not = icmp eq i32 %inc32, 192
  br i1 %exitcond1203.not, label %for.body31.for.body41.preheader_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body31

for.body31.for.body41.preheader_crit_edge:        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.preheader

for.body41.preheader:                             ; preds = %for.body31.for.body41.preheader_crit_edge, %if.then25
  %numshmems.1 = phi i32 [ 1, %if.then25 ], [ 192, %for.body31.for.body41.preheader_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %ports to i32
  br label %for.body41

for.body41:                                       ; preds = %for.inc191.for.body41_crit_edge, %for.body41.preheader
  %numprint.01157 = phi i32 [ %numprint.3, %for.inc191.for.body41_crit_edge ], [ -1, %for.body41.preheader ]
  %numports.21156 = phi i32 [ %numports.3, %for.inc191.for.body41_crit_edge ], [ %numports.1, %for.body41.preheader ]
  %port.01155 = phi ptr [ %incdec.ptr192, %for.inc191.for.body41_crit_edge ], [ %ports, %for.body41.preheader ]
  %inc42 = add nsw i32 %numprint.01157, 1
  %rem = srem i32 %inc42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool43.not = icmp eq i32 %rem, 0
  br i1 %tobool43.not, label %do.body45, label %for.body41.do.body70_crit_edge

for.body41.do.body70_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.body45:                                        ; preds = %for.body41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %10 = load i32, ptr @arcnet_debug, align 4
  %and46 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.body57_crit_edge, label %do.end51

do.body45.do.body57_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body57

do.body57:                                        ; preds = %do.end51, %do.body45.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %11 = load i32, ptr @arcnet_debug, align 4
  %and58 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.do.body70_crit_edge, label %do.end63

do.body57.do.body70_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %do.body70

do.body70:                                        ; preds = %do.end63, %do.body57.do.body70_crit_edge, %for.body41.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %12 = load i32, ptr @arcnet_debug, align 4
  %and71 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.do.end81_crit_edge, label %do.end76

do.body70.do.end81_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end81

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %port.01155 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.01155, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %14) #11
  br label %do.end81

do.end81:                                         ; preds = %do.end76, %do.body70.do.end81_crit_edge
  %15 = ptrtoint ptr %port.01155 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.01155, align 4
  %call82 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %16, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.body85, label %if.end114

do.body85:                                        ; preds = %do.end81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %17 = load i32, ptr @arcnet_debug, align 4
  %and86 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.body97_crit_edge, label %do.end91

do.body85.do.body97_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

do.end91:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %do.body97

do.body97:                                        ; preds = %do.end91, %do.body85.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %18 = load i32, ptr @arcnet_debug, align 4
  %and98 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.end108_crit_edge, label %do.end103

do.body97.do.end108_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %call105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %do.end108

do.end108:                                        ; preds = %do.end103, %do.body97.do.end108_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %19 = load i32, ptr @arcnet_debug, align 4
  %and109 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  %spec.select = select i1 %tobool110.not, i32 %rem, i32 0
  %dec = add nsw i32 %numports.21156, -1
  %arrayidx113 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec
  %20 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx113, align 4
  %incdec.ptr = getelementptr i32, ptr %port.01155, i32 -1
  %22 = ptrtoint ptr %port.01155 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %port.01155, align 4
  br label %for.inc191

if.end114:                                        ; preds = %do.end81
  %and116 = and i32 %16, 1048575
  %add117 = or i32 %and116, -18874368
  %23 = inttoptr i32 %add117 to ptr
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp121 = icmp eq i8 %24, -1
  br i1 %cmp121, label %do.body124, label %if.end155

do.body124:                                       ; preds = %if.end114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %25 = load i32, ptr @arcnet_debug, align 4
  %and125 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body124.do.body136_crit_edge, label %do.end130

do.body124.do.body136_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body136

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #9
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %do.body136

do.body136:                                       ; preds = %do.end130, %do.body124.do.body136_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %26 = load i32, ptr @arcnet_debug, align 4
  %and137 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body136.do.end147_crit_edge, label %do.end142

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end147

do.end142:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #9
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %do.end147

do.end147:                                        ; preds = %do.end142, %do.body136.do.end147_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %27 = load i32, ptr @arcnet_debug, align 4
  %and148 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %spec.select1112 = select i1 %tobool149.not, i32 %rem, i32 0
  %28 = ptrtoint ptr %port.01155 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.01155, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %29, i32 noundef 16) #7
  %dec152 = add nsw i32 %numports.21156, -1
  %arrayidx153 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec152
  %30 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx153, align 4
  %incdec.ptr154 = getelementptr i32, ptr %port.01155, i32 -1
  %32 = ptrtoint ptr %port.01155 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %port.01155, align 4
  br label %for.inc191

if.end155:                                        ; preds = %if.end114
  %add157 = add i32 %16, 8
  %and158 = and i32 %add157, 1048575
  %add159 = or i32 %and158, -18874368
  %33 = inttoptr i32 %add159 to ptr
  %34 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !270
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %35 = load i32, ptr @arcnet_debug, align 4
  %and164 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end155.do.body175_crit_edge, label %do.end169

if.end155.do.body175_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body175

do.end169:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body175

do.body175:                                       ; preds = %do.end169, %if.end155.do.body175_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %36 = load i32, ptr @arcnet_debug, align 4
  %and176 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %do.body175.do.end186_crit_edge, label %do.end181

do.body175.do.end186_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end186

do.end181:                                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  %call183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %do.end186

do.end186:                                        ; preds = %do.end181, %do.body175.do.end186_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %37 = load i32, ptr @arcnet_debug, align 4
  %and187 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  %spec.select1113 = select i1 %tobool188.not, i32 %rem, i32 0
  br label %for.inc191

for.inc191:                                       ; preds = %do.end186, %do.end147, %do.end108
  %port.1 = phi ptr [ %incdec.ptr154, %do.end147 ], [ %incdec.ptr, %do.end108 ], [ %port.01155, %do.end186 ]
  %numports.3 = phi i32 [ %dec152, %do.end147 ], [ %dec, %do.end108 ], [ %numports.21156, %do.end186 ]
  %numprint.3 = phi i32 [ %spec.select1112, %do.end147 ], [ %spec.select, %do.end108 ], [ %spec.select1113, %do.end186 ]
  %incdec.ptr192 = getelementptr i32, ptr %port.1, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr192 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %cmp40 = icmp slt i32 %sub.ptr.div, %numports.3
  br i1 %cmp40, label %for.inc191.for.body41_crit_edge, label %do.body194

for.inc191.for.body41_crit_edge:                  ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

do.body194:                                       ; preds = %for.inc191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %38 = load i32, ptr @arcnet_debug, align 4
  %and195 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body194.do.end205_crit_edge, label %do.end200

do.body194.do.end205_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end205

do.end200:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #9
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.end205

do.end205:                                        ; preds = %do.end200, %do.body194.do.end205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numports.3)
  %tobool206.not = icmp eq i32 %numports.3, 0
  br i1 %tobool206.not, label %do.body208, label %for.cond222.preheader

for.cond222.preheader:                            ; preds = %do.end205
  %add.ptr = getelementptr i32, ptr %ports, i32 %numports.3
  %cmp2241158 = icmp ult ptr %ports, %add.ptr
  br i1 %cmp2241158, label %for.cond222.preheader.for.body226_crit_edge, label %for.cond222.preheader.do.body271_crit_edge

for.cond222.preheader.do.body271_crit_edge:       ; preds = %for.cond222.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body271

for.cond222.preheader.for.body226_crit_edge:      ; preds = %for.cond222.preheader
  br label %for.body226

do.body208:                                       ; preds = %do.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %39 = load i32, ptr @arcnet_debug, align 4
  %and209 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %do.body208.do.end219_crit_edge, label %do.end214

do.body208.do.end219_crit_edge:                   ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end219

do.end214:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #9
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %do.end219

do.end219:                                        ; preds = %do.end214, %do.body208.do.end219_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1122) #7
  br label %cleanup960

for.body226:                                      ; preds = %for.inc268.for.body226_crit_edge, %for.cond222.preheader.for.body226_crit_edge
  %numprint.41161 = phi i32 [ %rem228, %for.inc268.for.body226_crit_edge ], [ -1, %for.cond222.preheader.for.body226_crit_edge ]
  %port.21159 = phi ptr [ %incdec.ptr269, %for.inc268.for.body226_crit_edge ], [ %ports, %for.cond222.preheader.for.body226_crit_edge ]
  %inc227 = add nsw i32 %numprint.41161, 1
  %rem228 = srem i32 %inc227, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem228)
  %tobool229.not = icmp eq i32 %rem228, 0
  br i1 %tobool229.not, label %do.body231, label %for.body226.do.body256_crit_edge

for.body226.do.body256_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body256

do.body231:                                       ; preds = %for.body226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %40 = load i32, ptr @arcnet_debug, align 4
  %and232 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %do.body231.do.body243_crit_edge, label %do.end237

do.body231.do.body243_crit_edge:                  ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body243

do.end237:                                        ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #9
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body243

do.body243:                                       ; preds = %do.end237, %do.body231.do.body243_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %41 = load i32, ptr @arcnet_debug, align 4
  %and244 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %do.body243.do.body256_crit_edge, label %do.end249

do.body243.do.body256_crit_edge:                  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body256

do.end249:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #9
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  br label %do.body256

do.body256:                                       ; preds = %do.end249, %do.body243.do.body256_crit_edge, %for.body226.do.body256_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %42 = load i32, ptr @arcnet_debug, align 4
  %and257 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %do.body256.for.inc268_crit_edge, label %do.end262

do.body256.for.inc268_crit_edge:                  ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc268

do.end262:                                        ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %port.21159 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.21159, align 4
  %call264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %44) #11
  br label %for.inc268

for.inc268:                                       ; preds = %do.end262, %do.body256.for.inc268_crit_edge
  %incdec.ptr269 = getelementptr i32, ptr %port.21159, i32 1
  %cmp224 = icmp ult ptr %incdec.ptr269, %add.ptr
  br i1 %cmp224, label %for.inc268.for.body226_crit_edge, label %for.inc268.do.body271_crit_edge

for.inc268.do.body271_crit_edge:                  ; preds = %for.inc268
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body271

for.inc268.for.body226_crit_edge:                 ; preds = %for.inc268
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body226

do.body271:                                       ; preds = %for.inc268.do.body271_crit_edge, %for.cond222.preheader.do.body271_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %45 = load i32, ptr @arcnet_debug, align 4
  %and272 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %do.body271.while.body.preheader_crit_edge, label %do.end277

do.body271.while.body.preheader_crit_edge:        ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

do.end277:                                        ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  %call279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.end277, %do.body271.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.01163 = phi i32 [ %dec283, %while.body.while.body_crit_edge ], [ 300, %while.body.preheader ]
  %dec283 = add nsw i32 %__ms.01163, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #7
  %tobool284.not = icmp eq i32 %dec283, 0
  br i1 %tobool284.not, label %while.body.for.body289_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.body289_crit_edge:                 ; preds = %while.body
  br label %for.body289

for.body289:                                      ; preds = %cleanup.for.body289_crit_edge, %while.body.for.body289_crit_edge
  %numprint.51177 = phi i32 [ %numprint.10, %cleanup.for.body289_crit_edge ], [ -1, %while.body.for.body289_crit_edge ]
  %numshmems.21173 = phi i32 [ %numshmems.3, %cleanup.for.body289_crit_edge ], [ %numshmems.1, %while.body.for.body289_crit_edge ]
  %p.01169 = phi ptr [ %incdec.ptr513, %cleanup.for.body289_crit_edge ], [ %call7.i.i, %while.body.for.body289_crit_edge ]
  %index.01165 = phi i32 [ %inc514, %cleanup.for.body289_crit_edge ], [ 0, %while.body.for.body289_crit_edge ]
  %inc290 = add nsw i32 %numprint.51177, 1
  %rem291 = srem i32 %inc290, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem291)
  %tobool292.not = icmp eq i32 %rem291, 0
  br i1 %tobool292.not, label %do.body294, label %for.body289.do.body319_crit_edge

for.body289.do.body319_crit_edge:                 ; preds = %for.body289
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body319

do.body294:                                       ; preds = %for.body289
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %47 = load i32, ptr @arcnet_debug, align 4
  %and295 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %do.body294.do.body306_crit_edge, label %do.end300

do.body294.do.body306_crit_edge:                  ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body306

do.end300:                                        ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #9
  %call302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body306

do.body306:                                       ; preds = %do.end300, %do.body294.do.body306_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %48 = load i32, ptr @arcnet_debug, align 4
  %and307 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %do.body306.do.body319_crit_edge, label %do.end312

do.body306.do.body319_crit_edge:                  ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body319

do.end312:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  %call314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %do.body319

do.body319:                                       ; preds = %do.end312, %do.body306.do.body319_crit_edge, %for.body289.do.body319_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %49 = load i32, ptr @arcnet_debug, align 4
  %and320 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  br i1 %tobool321.not, label %do.body319.do.end330_crit_edge, label %do.end325

do.body319.do.end330_crit_edge:                   ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end330

do.end325:                                        ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %p.01169 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p.01169, align 4
  %call327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %51) #11
  br label %do.end330

do.end330:                                        ; preds = %do.end325, %do.body319.do.end330_crit_edge
  %52 = ptrtoint ptr %p.01169 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %p.01169, align 4
  %call331 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %53, i32 noundef 2048, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %tobool332.not = icmp eq ptr %call331, null
  br i1 %tobool332.not, label %do.body334, label %if.end362

do.body334:                                       ; preds = %do.end330
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %54 = load i32, ptr @arcnet_debug, align 4
  %and335 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %do.body334.do.body346_crit_edge, label %do.end340

do.body334.do.body346_crit_edge:                  ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body346

do.end340:                                        ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #9
  %call342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #11
  br label %do.body346

do.body346:                                       ; preds = %do.end340, %do.body334.do.body346_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %55 = load i32, ptr @arcnet_debug, align 4
  %and347 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %tobool348.not = icmp eq i32 %and347, 0
  br i1 %tobool348.not, label %do.body346.do.end357_crit_edge, label %do.end352

do.body346.do.end357_crit_edge:                   ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end357

do.end352:                                        ; preds = %do.body346
  call void @__sanitizer_cov_trace_pc() #9
  %call354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #11
  br label %do.end357

do.end357:                                        ; preds = %do.end352, %do.body346.do.end357_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %56 = load i32, ptr @arcnet_debug, align 4
  %and358 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  %spec.select1114 = select i1 %tobool359.not, i32 %rem291, i32 0
  br label %out

if.end362:                                        ; preds = %do.end330
  %57 = ptrtoint ptr %p.01169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p.01169, align 4
  %call363 = call ptr @ioremap(i32 noundef %58, i32 noundef 2048) #7
  %tobool364.not = icmp eq ptr %call363, null
  br i1 %tobool364.not, label %do.body366, label %if.end394

do.body366:                                       ; preds = %if.end362
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %59 = load i32, ptr @arcnet_debug, align 4
  %and367 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %do.body366.do.body378_crit_edge, label %do.end372

do.body366.do.body378_crit_edge:                  ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body378

do.end372:                                        ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #9
  %call374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #11
  br label %do.body378

do.body378:                                       ; preds = %do.end372, %do.body366.do.body378_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %60 = load i32, ptr @arcnet_debug, align 4
  %and379 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %tobool380.not = icmp eq i32 %and379, 0
  br i1 %tobool380.not, label %do.body378.do.end389_crit_edge, label %do.end384

do.body378.do.end389_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end389

do.end384:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  %call386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #11
  br label %do.end389

do.end389:                                        ; preds = %do.end384, %do.body378.do.end389_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %61 = load i32, ptr @arcnet_debug, align 4
  %and390 = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  %spec.select1115 = select i1 %tobool391.not, i32 %rem291, i32 0
  br label %out1

if.end394:                                        ; preds = %if.end362
  %62 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call363) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %62)
  %cmp401.not = icmp eq i8 %62, -47
  br i1 %cmp401.not, label %do.body440, label %do.body404

do.body404:                                       ; preds = %if.end394
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %63 = load i32, ptr @arcnet_debug, align 4
  %and405 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and405)
  %tobool406.not = icmp eq i32 %and405, 0
  br i1 %tobool406.not, label %do.body404.do.body423_crit_edge, label %do.end410

do.body404.do.body423_crit_edge:                  ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body423

do.end410:                                        ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #9
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call363) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !272
  %conv418 = zext i8 %64 to i32
  %call419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv418, i32 noundef 209) #11
  br label %do.body423

do.body423:                                       ; preds = %do.end410, %do.body404.do.body423_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %65 = load i32, ptr @arcnet_debug, align 4
  %and424 = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and424)
  %tobool425.not = icmp eq i32 %and424, 0
  br i1 %tobool425.not, label %do.body423.do.end434_crit_edge, label %do.end429

do.body423.do.end434_crit_edge:                   ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end434

do.end429:                                        ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #9
  %call431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %do.end434

do.end434:                                        ; preds = %do.end429, %do.body423.do.end434_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %66 = load i32, ptr @arcnet_debug, align 4
  %and435 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %tobool436.not = icmp eq i32 %and435, 0
  %spec.select1116 = select i1 %tobool436.not, i32 %rem291, i32 0
  br label %out2

do.body440:                                       ; preds = %if.end394
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !273
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call363, i8 66) #7, !srcloc !274
  %67 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call363) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %67)
  %cmp451.not = icmp eq i8 %67, 66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %68 = load i32, ptr @arcnet_debug, align 4
  %and480 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and480)
  %tobool481.not = icmp eq i32 %and480, 0
  br i1 %cmp451.not, label %do.body479, label %do.body454

do.body454:                                       ; preds = %do.body440
  br i1 %tobool481.not, label %do.body454.do.body466_crit_edge, label %do.end460

do.body454.do.body466_crit_edge:                  ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body466

do.end460:                                        ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #9
  %call462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #11
  br label %do.body466

do.body466:                                       ; preds = %do.end460, %do.body454.do.body466_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %69 = load i32, ptr @arcnet_debug, align 4
  %and467 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and467)
  %tobool468.not = icmp eq i32 %and467, 0
  br i1 %tobool468.not, label %do.body466.out2_crit_edge, label %do.end472

do.body466.out2_crit_edge:                        ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #9
  br label %out2

do.end472:                                        ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #9
  %call474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %out2

do.body479:                                       ; preds = %do.body440
  br i1 %tobool481.not, label %do.body479.do.body491_crit_edge, label %do.end485

do.body479.do.body491_crit_edge:                  ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body491

do.end485:                                        ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #9
  %call487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body491

do.body491:                                       ; preds = %do.end485, %do.body479.do.body491_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %70 = load i32, ptr @arcnet_debug, align 4
  %and492 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and492)
  %tobool493.not = icmp eq i32 %and492, 0
  br i1 %tobool493.not, label %do.body491.do.end502_crit_edge, label %do.end497

do.body491.do.end502_crit_edge:                   ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end502

do.end497:                                        ; preds = %do.body491
  call void @__sanitizer_cov_trace_pc() #9
  %call499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #11
  br label %do.end502

do.end502:                                        ; preds = %do.end497, %do.body491.do.end502_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %71 = load i32, ptr @arcnet_debug, align 4
  %and503 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and503)
  %tobool504.not = icmp eq i32 %and503, 0
  %spec.select1117 = select i1 %tobool504.not, i32 %rem291, i32 0
  %arrayidx507 = getelementptr ptr, ptr %call7.i.i1122, i32 %index.01165
  %72 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call363, ptr %arrayidx507, align 4
  br label %cleanup

out2:                                             ; preds = %do.end472, %do.body466.out2_crit_edge, %do.end434
  %numprint.7 = phi i32 [ %rem291, %do.end472 ], [ %rem291, %do.body466.out2_crit_edge ], [ %spec.select1116, %do.end434 ]
  call void @iounmap(ptr noundef nonnull %call363) #7
  br label %out1

out1:                                             ; preds = %out2, %do.end389
  %numprint.8 = phi i32 [ %numprint.7, %out2 ], [ %spec.select1115, %do.end389 ]
  %73 = ptrtoint ptr %p.01169 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %p.01169, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %74, i32 noundef 2048) #7
  br label %out

out:                                              ; preds = %out1, %do.end357
  %numprint.9 = phi i32 [ %numprint.8, %out1 ], [ %spec.select1114, %do.end357 ]
  %dec508 = add nsw i32 %numshmems.21173, -1
  %arrayidx509 = getelementptr i32, ptr %call7.i.i, i32 %dec508
  %75 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx509, align 4
  %incdec.ptr510 = getelementptr i32, ptr %p.01169, i32 -1
  %77 = ptrtoint ptr %p.01169 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %p.01169, align 4
  %dec511 = add i32 %index.01165, -1
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end502
  %index.1 = phi i32 [ %dec511, %out ], [ %index.01165, %do.end502 ]
  %p.1 = phi ptr [ %incdec.ptr510, %out ], [ %p.01169, %do.end502 ]
  %numshmems.3 = phi i32 [ %dec508, %out ], [ %numshmems.21173, %do.end502 ]
  %numprint.10 = phi i32 [ %numprint.9, %out ], [ %spec.select1117, %do.end502 ]
  %incdec.ptr513 = getelementptr i32, ptr %p.1, i32 1
  %inc514 = add i32 %index.1, 1
  %cmp287 = icmp slt i32 %inc514, %numshmems.3
  br i1 %cmp287, label %cleanup.for.body289_crit_edge, label %do.body516

cleanup.for.body289_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body289

do.body516:                                       ; preds = %cleanup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %78 = load i32, ptr @arcnet_debug, align 4
  %and517 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and517)
  %tobool518.not = icmp eq i32 %and517, 0
  br i1 %tobool518.not, label %do.body516.do.end527_crit_edge, label %do.end522

do.body516.do.end527_crit_edge:                   ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end527

do.end522:                                        ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #9
  %call524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.end527

do.end527:                                        ; preds = %do.end522, %do.body516.do.end527_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numshmems.3)
  %tobool528.not = icmp eq i32 %numshmems.3, 0
  br i1 %tobool528.not, label %do.body530, label %for.cond554.preheader

for.cond554.preheader:                            ; preds = %do.end527
  %add.ptr555 = getelementptr i32, ptr %call7.i.i, i32 %numshmems.3
  %cmp5561179 = icmp ult ptr %call7.i.i, %add.ptr555
  br i1 %cmp5561179, label %for.cond554.preheader.for.body558_crit_edge, label %for.cond554.preheader.do.body603_crit_edge

for.cond554.preheader.do.body603_crit_edge:       ; preds = %for.cond554.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body603

for.cond554.preheader.for.body558_crit_edge:      ; preds = %for.cond554.preheader
  br label %for.body558

do.body530:                                       ; preds = %do.end527
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %79 = load i32, ptr @arcnet_debug, align 4
  %and531 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and531)
  %tobool532.not = icmp eq i32 %and531, 0
  br i1 %tobool532.not, label %do.body530.do.end541_crit_edge, label %do.end536

do.body530.do.end541_crit_edge:                   ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end541

do.end536:                                        ; preds = %do.body530
  call void @__sanitizer_cov_trace_pc() #9
  %call538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #11
  br label %do.end541

do.end541:                                        ; preds = %do.end536, %do.body530.do.end541_crit_edge
  br i1 %cmp2241158, label %do.end541.for.body548_crit_edge, label %do.end541.for.end551_crit_edge

do.end541.for.end551_crit_edge:                   ; preds = %do.end541
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end551

do.end541.for.body548_crit_edge:                  ; preds = %do.end541
  br label %for.body548

for.body548:                                      ; preds = %for.body548.for.body548_crit_edge, %do.end541.for.body548_crit_edge
  %port.31198 = phi ptr [ %incdec.ptr550, %for.body548.for.body548_crit_edge ], [ %ports, %do.end541.for.body548_crit_edge ]
  %80 = ptrtoint ptr %port.31198 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port.31198, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %81, i32 noundef 16) #7
  %incdec.ptr550 = getelementptr i32, ptr %port.31198, i32 1
  %cmp546 = icmp ult ptr %incdec.ptr550, %add.ptr
  br i1 %cmp546, label %for.body548.for.body548_crit_edge, label %for.body548.for.end551_crit_edge

for.body548.for.end551_crit_edge:                 ; preds = %for.body548
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end551

for.body548.for.body548_crit_edge:                ; preds = %for.body548
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body548

for.end551:                                       ; preds = %for.body548.for.end551_crit_edge, %do.end541.for.end551_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1122) #7
  br label %cleanup960

for.body558:                                      ; preds = %for.inc600.for.body558_crit_edge, %for.cond554.preheader.for.body558_crit_edge
  %numprint.111182 = phi i32 [ %rem560, %for.inc600.for.body558_crit_edge ], [ -1, %for.cond554.preheader.for.body558_crit_edge ]
  %p.21180 = phi ptr [ %incdec.ptr601, %for.inc600.for.body558_crit_edge ], [ %call7.i.i, %for.cond554.preheader.for.body558_crit_edge ]
  %inc559 = add nsw i32 %numprint.111182, 1
  %rem560 = srem i32 %inc559, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem560)
  %tobool561.not = icmp eq i32 %rem560, 0
  br i1 %tobool561.not, label %do.body563, label %for.body558.do.body588_crit_edge

for.body558.do.body588_crit_edge:                 ; preds = %for.body558
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body588

do.body563:                                       ; preds = %for.body558
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %82 = load i32, ptr @arcnet_debug, align 4
  %and564 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and564)
  %tobool565.not = icmp eq i32 %and564, 0
  br i1 %tobool565.not, label %do.body563.do.body575_crit_edge, label %do.end569

do.body563.do.body575_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body575

do.end569:                                        ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #9
  %call571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body575

do.body575:                                       ; preds = %do.end569, %do.body563.do.body575_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %83 = load i32, ptr @arcnet_debug, align 4
  %and576 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and576)
  %tobool577.not = icmp eq i32 %and576, 0
  br i1 %tobool577.not, label %do.body575.do.body588_crit_edge, label %do.end581

do.body575.do.body588_crit_edge:                  ; preds = %do.body575
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body588

do.end581:                                        ; preds = %do.body575
  call void @__sanitizer_cov_trace_pc() #9
  %call583 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #11
  br label %do.body588

do.body588:                                       ; preds = %do.end581, %do.body575.do.body588_crit_edge, %for.body558.do.body588_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %84 = load i32, ptr @arcnet_debug, align 4
  %and589 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and589)
  %tobool590.not = icmp eq i32 %and589, 0
  br i1 %tobool590.not, label %do.body588.for.inc600_crit_edge, label %do.end594

do.body588.for.inc600_crit_edge:                  ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc600

do.end594:                                        ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %p.21180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %p.21180, align 4
  %call596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %86) #11
  br label %for.inc600

for.inc600:                                       ; preds = %do.end594, %do.body588.for.inc600_crit_edge
  %incdec.ptr601 = getelementptr i32, ptr %p.21180, i32 1
  %cmp556 = icmp ult ptr %incdec.ptr601, %add.ptr555
  br i1 %cmp556, label %for.inc600.for.body558_crit_edge, label %for.inc600.do.body603_crit_edge

for.inc600.do.body603_crit_edge:                  ; preds = %for.inc600
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body603

for.inc600.for.body558_crit_edge:                 ; preds = %for.inc600
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body558

do.body603:                                       ; preds = %for.inc600.do.body603_crit_edge, %for.cond554.preheader.do.body603_crit_edge
  %p.2.lcssa = phi ptr [ %call7.i.i, %for.cond554.preheader.do.body603_crit_edge ], [ %incdec.ptr601, %for.inc600.do.body603_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %87 = load i32, ptr @arcnet_debug, align 4
  %and604 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and604)
  %tobool605.not = icmp eq i32 %and604, 0
  br i1 %tobool605.not, label %do.body603.do.end614_crit_edge, label %do.end609

do.body603.do.end614_crit_edge:                   ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end614

do.end609:                                        ; preds = %do.body603
  call void @__sanitizer_cov_trace_pc() #9
  %call611 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.end614

do.end614:                                        ; preds = %do.end609, %do.body603.do.end614_crit_edge
  br i1 %cmp2241158, label %do.end614.for.body621_crit_edge, label %do.end614.for.end936_crit_edge

do.end614.for.end936_crit_edge:                   ; preds = %do.end614
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end936

do.end614.for.body621_crit_edge:                  ; preds = %do.end614
  br label %for.body621

for.body621:                                      ; preds = %cleanup931.for.body621_crit_edge, %do.end614.for.body621_crit_edge
  %numprint.121193 = phi i32 [ %numprint.20, %cleanup931.for.body621_crit_edge ], [ -1, %do.end614.for.body621_crit_edge ]
  %numports.41191 = phi i32 [ %numports.5, %cleanup931.for.body621_crit_edge ], [ %numports.3, %do.end614.for.body621_crit_edge ]
  %numshmems.41190 = phi i32 [ %numshmems.8, %cleanup931.for.body621_crit_edge ], [ %numshmems.3, %do.end614.for.body621_crit_edge ]
  %inc622 = add nsw i32 %numprint.121193, 1
  %rem623 = srem i32 %inc622, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem623)
  %tobool624.not = icmp eq i32 %rem623, 0
  br i1 %tobool624.not, label %do.body626, label %for.body621.do.body651_crit_edge

for.body621.do.body651_crit_edge:                 ; preds = %for.body621
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body651

do.body626:                                       ; preds = %for.body621
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %88 = load i32, ptr @arcnet_debug, align 4
  %and627 = and i32 %88, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and627)
  %tobool628.not = icmp eq i32 %and627, 0
  br i1 %tobool628.not, label %do.body626.do.body638_crit_edge, label %do.end632

do.body626.do.body638_crit_edge:                  ; preds = %do.body626
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body638

do.end632:                                        ; preds = %do.body626
  call void @__sanitizer_cov_trace_pc() #9
  %call634 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.body638

do.body638:                                       ; preds = %do.end632, %do.body626.do.body638_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %89 = load i32, ptr @arcnet_debug, align 4
  %and639 = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and639)
  %tobool640.not = icmp eq i32 %and639, 0
  br i1 %tobool640.not, label %do.body638.do.body651_crit_edge, label %do.end644

do.body638.do.body651_crit_edge:                  ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body651

do.end644:                                        ; preds = %do.body638
  call void @__sanitizer_cov_trace_pc() #9
  %call646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  br label %do.body651

do.body651:                                       ; preds = %do.end644, %do.body638.do.body651_crit_edge, %for.body621.do.body651_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %90 = load i32, ptr @arcnet_debug, align 4
  %and652 = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and652)
  %tobool653.not = icmp eq i32 %and652, 0
  br i1 %tobool653.not, label %do.body651.do.end662_crit_edge, label %do.end657

do.body651.do.end662_crit_edge:                   ; preds = %do.body651
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end662

do.end657:                                        ; preds = %do.body651
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ports, align 4
  %call659 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %92) #11
  br label %do.end662

do.end662:                                        ; preds = %do.end657, %do.body651.do.end662_crit_edge
  %93 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ports, align 4
  %and665 = and i32 %94, 1048575
  %add666 = or i32 %and665, -18874368
  %95 = inttoptr i32 %add666 to ptr
  %96 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !276
  %conv670 = zext i8 %96 to i32
  %and671 = and i32 %conv670, 157
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %and671)
  %cmp672.not = icmp eq i32 %and671, 149
  br i1 %cmp672.not, label %do.body707, label %do.body675

do.body675:                                       ; preds = %do.end662
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %97 = load i32, ptr @arcnet_debug, align 4
  %and676 = and i32 %97, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and676)
  %tobool677.not = icmp eq i32 %and676, 0
  br i1 %tobool677.not, label %do.body675.do.body687_crit_edge, label %do.end681

do.body675.do.body687_crit_edge:                  ; preds = %do.body675
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body687

do.end681:                                        ; preds = %do.body675
  call void @__sanitizer_cov_trace_pc() #9
  %call683 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv670) #11
  br label %do.body687

do.body687:                                       ; preds = %do.end681, %do.body675.do.body687_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %98 = load i32, ptr @arcnet_debug, align 4
  %and688 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and688)
  %tobool689.not = icmp eq i32 %and688, 0
  br i1 %tobool689.not, label %do.body687.do.end698_crit_edge, label %do.end693

do.body687.do.end698_crit_edge:                   ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end698

do.end693:                                        ; preds = %do.body687
  call void @__sanitizer_cov_trace_pc() #9
  %call695 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  br label %do.end698

do.end698:                                        ; preds = %do.end693, %do.body687.do.end698_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %99 = load i32, ptr @arcnet_debug, align 4
  %and699 = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and699)
  %tobool700.not = icmp eq i32 %and699, 0
  %spec.select1118 = select i1 %tobool700.not, i32 %rem623, i32 0
  %100 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ports, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %101, i32 noundef 16) #7
  %dec703 = add i32 %numports.41191, -1
  %arrayidx704 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec703
  %102 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx704, align 4
  %104 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %ports, align 4
  br label %cleanup931

do.body707:                                       ; preds = %do.end662
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !277
  call void @arm_heavy_mb() #7
  %add710 = add i32 %94, 1
  %and711 = and i32 %add710, 1048575
  %add712 = or i32 %and711, -18874368
  %105 = inttoptr i32 %add712 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 30) #7, !srcloc !274
  %106 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !278
  %conv721 = zext i8 %106 to i32
  %and722 = and i32 %conv721, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and722)
  %tobool723.not = icmp eq i32 %and722, 0
  br i1 %tobool723.not, label %if.end756, label %do.body725

do.body725:                                       ; preds = %do.body707
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %107 = load i32, ptr @arcnet_debug, align 4
  %and726 = and i32 %107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and726)
  %tobool727.not = icmp eq i32 %and726, 0
  br i1 %tobool727.not, label %do.body725.do.body737_crit_edge, label %do.end731

do.body725.do.body737_crit_edge:                  ; preds = %do.body725
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body737

do.end731:                                        ; preds = %do.body725
  call void @__sanitizer_cov_trace_pc() #9
  %call733 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %conv721) #11
  br label %do.body737

do.body737:                                       ; preds = %do.end731, %do.body725.do.body737_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %108 = load i32, ptr @arcnet_debug, align 4
  %and738 = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and738)
  %tobool739.not = icmp eq i32 %and738, 0
  br i1 %tobool739.not, label %do.body737.do.end748_crit_edge, label %do.end743

do.body737.do.end748_crit_edge:                   ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end748

do.end743:                                        ; preds = %do.body737
  call void @__sanitizer_cov_trace_pc() #9
  %call745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  br label %do.end748

do.end748:                                        ; preds = %do.end743, %do.body737.do.end748_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %109 = load i32, ptr @arcnet_debug, align 4
  %and749 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and749)
  %tobool750.not = icmp eq i32 %and749, 0
  %spec.select1119 = select i1 %tobool750.not, i32 %rem623, i32 0
  %110 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ports, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %111, i32 noundef 16) #7
  %dec753 = add i32 %numports.41191, -1
  %arrayidx754 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec753
  %112 = ptrtoint ptr %arrayidx754 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx754, align 4
  %114 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %ports, align 4
  br label %cleanup931

if.end756:                                        ; preds = %do.body707
  %115 = load i32, ptr @irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool757.not = icmp eq i32 %115, 0
  br i1 %tobool757.not, label %if.then758, label %if.end756.do.body812_crit_edge

if.end756.do.body812_crit_edge:                   ; preds = %if.end756
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body812

if.then758:                                       ; preds = %if.end756
  %call759 = call i32 @probe_irq_on() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !279
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 -128) #7, !srcloc !274
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !280
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 0) #7, !srcloc !274
  %call774 = call i32 @probe_irq_off(i32 noundef %call759) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call774)
  %cmp775 = icmp slt i32 %call774, 1
  br i1 %cmp775, label %do.body778, label %if.then758.do.body812_crit_edge

if.then758.do.body812_crit_edge:                  ; preds = %if.then758
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body812

do.body778:                                       ; preds = %if.then758
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %117 = load i32, ptr @arcnet_debug, align 4
  %and779 = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and779)
  %tobool780.not = icmp eq i32 %and779, 0
  br i1 %tobool780.not, label %do.body778.do.body790_crit_edge, label %do.end784

do.body778.do.body790_crit_edge:                  ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body790

do.end784:                                        ; preds = %do.body778
  call void @__sanitizer_cov_trace_pc() #9
  %call786 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call774) #11
  br label %do.body790

do.body790:                                       ; preds = %do.end784, %do.body778.do.body790_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %118 = load i32, ptr @arcnet_debug, align 4
  %and791 = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and791)
  %tobool792.not = icmp eq i32 %and791, 0
  br i1 %tobool792.not, label %do.body790.do.end801_crit_edge, label %do.end796

do.body790.do.end801_crit_edge:                   ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end801

do.end796:                                        ; preds = %do.body790
  call void @__sanitizer_cov_trace_pc() #9
  %call798 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  br label %do.end801

do.end801:                                        ; preds = %do.end796, %do.body790.do.end801_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %119 = load i32, ptr @arcnet_debug, align 4
  %and802 = and i32 %119, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and802)
  %tobool803.not = icmp eq i32 %and802, 0
  %spec.select1120 = select i1 %tobool803.not, i32 %rem623, i32 0
  %120 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ports, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %121, i32 noundef 16) #7
  %dec806 = add i32 %numports.41191, -1
  %arrayidx807 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec806
  %122 = ptrtoint ptr %arrayidx807 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx807, align 4
  %124 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %ports, align 4
  br label %cleanup931

do.body812:                                       ; preds = %if.then758.do.body812_crit_edge, %if.end756.do.body812_crit_edge
  %airq.0 = phi i32 [ %call774, %if.then758.do.body812_crit_edge ], [ %115, %if.end756.do.body812_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %125 = load i32, ptr @arcnet_debug, align 4
  %and813 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and813)
  %tobool814.not = icmp eq i32 %and813, 0
  br i1 %tobool814.not, label %do.body812.do.end823_crit_edge, label %do.end818

do.body812.do.end823_crit_edge:                   ; preds = %do.body812
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end823

do.end818:                                        ; preds = %do.body812
  call void @__sanitizer_cov_trace_pc() #9
  %call820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %airq.0) #11
  br label %do.end823

do.end823:                                        ; preds = %do.end818, %do.body812.do.end823_crit_edge
  %add825 = add i32 %94, 8
  %and826 = and i32 %add825, 1048575
  %add827 = or i32 %and826, -18874368
  %126 = inttoptr i32 %add827 to ptr
  %127 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %126) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !281
  br label %while.body835

for.cond837.preheader:                            ; preds = %while.body835
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numshmems.41190)
  %cmp8381186 = icmp sgt i32 %numshmems.41190, 0
  br i1 %cmp8381186, label %for.cond837.preheader.for.body840_crit_edge, label %for.cond837.preheader.if.then905_crit_edge

for.cond837.preheader.if.then905_crit_edge:       ; preds = %for.cond837.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then905

for.cond837.preheader.for.body840_crit_edge:      ; preds = %for.cond837.preheader
  br label %for.body840

while.body835:                                    ; preds = %while.body835.while.body835_crit_edge, %do.end823
  %__ms831.01184 = phi i32 [ 300, %do.end823 ], [ %dec833, %while.body835.while.body835_crit_edge ]
  %dec833 = add nsw i32 %__ms831.01184, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %128(i32 noundef 214748000) #7
  %tobool834.not = icmp eq i32 %dec833, 0
  br i1 %tobool834.not, label %for.cond837.preheader, label %while.body835.while.body835_crit_edge

while.body835.while.body835_crit_edge:            ; preds = %while.body835
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body835

for.body840:                                      ; preds = %for.inc901.for.body840_crit_edge, %for.cond837.preheader.for.body840_crit_edge
  %index.21187 = phi i32 [ %inc902, %for.inc901.for.body840_crit_edge ], [ 0, %for.cond837.preheader.for.body840_crit_edge ]
  %arrayidx841 = getelementptr i32, ptr %call7.i.i, i32 %index.21187
  %129 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx841, align 4
  %arrayidx843 = getelementptr ptr, ptr %call7.i.i1122, i32 %index.21187
  %131 = ptrtoint ptr %arrayidx843 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx843, align 4
  %133 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %132) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %133)
  %cmp851 = icmp eq i8 %133, -47
  br i1 %cmp851, label %do.body854, label %do.body877

do.body854:                                       ; preds = %for.body840
  %arrayidx841.le = getelementptr i32, ptr %call7.i.i, i32 %index.21187
  %arrayidx843.le = getelementptr ptr, ptr %call7.i.i1122, i32 %index.21187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %134 = load i32, ptr @arcnet_debug, align 4
  %and855 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and855)
  %tobool856.not = icmp eq i32 %and855, 0
  br i1 %tobool856.not, label %do.body854.if.end924_crit_edge, label %do.end860

do.body854.if.end924_crit_edge:                   ; preds = %do.body854
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end924

do.end860:                                        ; preds = %do.body854
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %p.2.lcssa to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %p.2.lcssa, align 4
  %call862 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %136) #11
  br label %if.end924

do.body877:                                       ; preds = %for.body840
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %137 = load i32, ptr @arcnet_debug, align 4
  %and878 = and i32 %137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and878)
  %tobool879.not = icmp eq i32 %and878, 0
  br i1 %tobool879.not, label %do.body877.for.inc901_crit_edge, label %do.end883

do.body877.for.inc901_crit_edge:                  ; preds = %do.body877
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc901

do.end883:                                        ; preds = %do.body877
  call void @__sanitizer_cov_trace_pc() #9
  %138 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %132) #7, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !283
  %conv891 = zext i8 %138 to i32
  %call892 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv891) #11
  br label %for.inc901

for.inc901:                                       ; preds = %do.end883, %do.body877.for.inc901_crit_edge
  %inc902 = add nuw nsw i32 %index.21187, 1
  %exitcond1204.not = icmp eq i32 %inc902, %numshmems.41190
  br i1 %exitcond1204.not, label %for.inc901.if.then905_crit_edge, label %for.inc901.for.body840_crit_edge

for.inc901.for.body840_crit_edge:                 ; preds = %for.inc901
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body840

for.inc901.if.then905_crit_edge:                  ; preds = %for.inc901
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then905

if.then905:                                       ; preds = %for.inc901.if.then905_crit_edge, %for.cond837.preheader.if.then905_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %139 = load i32, ptr @arcnet_debug, align 4
  %and906 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and906)
  %tobool907.not = icmp eq i32 %and906, 0
  br i1 %tobool907.not, label %if.then905.if.end914_crit_edge, label %do.end911

if.then905.if.end914_crit_edge:                   ; preds = %if.then905
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end914

do.end911:                                        ; preds = %if.then905
  call void @__sanitizer_cov_trace_pc() #9
  %call913 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #11
  br label %if.end914

if.end914:                                        ; preds = %do.end911, %if.then905.if.end914_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %140 = load i32, ptr @arcnet_debug, align 4
  %and915 = and i32 %140, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and915)
  %tobool916.not = icmp eq i32 %and915, 0
  br i1 %tobool916.not, label %if.end914.if.then926_crit_edge, label %do.end920

if.end914.if.then926_crit_edge:                   ; preds = %if.end914
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then926

do.end920:                                        ; preds = %if.end914
  call void @__sanitizer_cov_trace_pc() #9
  %call922 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  br label %if.then926

if.end924:                                        ; preds = %do.end860, %do.body854.if.end924_crit_edge
  %141 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ports, align 4
  %call866 = call fastcc i32 @com90xx_found(i32 noundef %142, i32 noundef %airq.0, i32 noundef %130, ptr noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call866)
  %cmp867.not = icmp eq i32 %call866, 0
  %dec871 = add nsw i32 %numshmems.41190, -1
  %arrayidx872 = getelementptr i32, ptr %call7.i.i, i32 %dec871
  %143 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx872, align 4
  %145 = ptrtoint ptr %arrayidx841.le to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %arrayidx841.le, align 4
  %arrayidx874 = getelementptr ptr, ptr %call7.i.i1122, i32 %dec871
  %146 = ptrtoint ptr %arrayidx874 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx874, align 4
  %148 = ptrtoint ptr %arrayidx843.le to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %arrayidx843.le, align 4
  br i1 %cmp867.not, label %if.end924.if.end927_crit_edge, label %if.end924.if.then926_crit_edge

if.end924.if.then926_crit_edge:                   ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then926

if.end924.if.end927_crit_edge:                    ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end927

if.then926:                                       ; preds = %if.end924.if.then926_crit_edge, %do.end920, %if.end914.if.then926_crit_edge
  %numprint.191147 = phi i32 [ -1, %if.end924.if.then926_crit_edge ], [ %rem623, %if.end914.if.then926_crit_edge ], [ 0, %do.end920 ]
  %numshmems.711391145 = phi i32 [ %dec871, %if.end924.if.then926_crit_edge ], [ %numshmems.41190, %if.end914.if.then926_crit_edge ], [ %numshmems.41190, %do.end920 ]
  %149 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ports, align 4
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %150, i32 noundef 16) #7
  br label %if.end927

if.end927:                                        ; preds = %if.then926, %if.end924.if.end927_crit_edge
  %numprint.191146 = phi i32 [ %numprint.191147, %if.then926 ], [ -1, %if.end924.if.end927_crit_edge ]
  %numshmems.711391144 = phi i32 [ %numshmems.711391145, %if.then926 ], [ %dec871, %if.end924.if.end927_crit_edge ]
  %dec928 = add i32 %numports.41191, -1
  %arrayidx929 = getelementptr [32 x i32], ptr %ports, i32 0, i32 %dec928
  %151 = ptrtoint ptr %arrayidx929 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx929, align 4
  %153 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ports, align 4
  br label %cleanup931

cleanup931:                                       ; preds = %if.end927, %do.end801, %do.end748, %do.end698
  %numshmems.8 = phi i32 [ %numshmems.41190, %do.end698 ], [ %numshmems.41190, %do.end748 ], [ %numshmems.711391144, %if.end927 ], [ %numshmems.41190, %do.end801 ]
  %numports.5 = phi i32 [ %dec703, %do.end698 ], [ %dec753, %do.end748 ], [ %dec928, %if.end927 ], [ %dec806, %do.end801 ]
  %numprint.20 = phi i32 [ %spec.select1118, %do.end698 ], [ %spec.select1119, %do.end748 ], [ %numprint.191146, %if.end927 ], [ %spec.select1120, %do.end801 ]
  %add.ptr618 = getelementptr i32, ptr %ports, i32 %numports.5
  %cmp619 = icmp ult ptr %ports, %add.ptr618
  br i1 %cmp619, label %cleanup931.for.body621_crit_edge, label %cleanup931.for.end936_crit_edge

cleanup931.for.end936_crit_edge:                  ; preds = %cleanup931
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end936

cleanup931.for.body621_crit_edge:                 ; preds = %cleanup931
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body621

for.end936:                                       ; preds = %cleanup931.for.end936_crit_edge, %do.end614.for.end936_crit_edge
  %numshmems.4.lcssa = phi i32 [ %numshmems.3, %do.end614.for.end936_crit_edge ], [ %numshmems.8, %cleanup931.for.end936_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %154 = load i32, ptr @arcnet_debug, align 4
  %and937 = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and937)
  %tobool938.not = icmp eq i32 %and937, 0
  br i1 %tobool938.not, label %for.end936.if.end945_crit_edge, label %do.end942

for.end936.if.end945_crit_edge:                   ; preds = %for.end936
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end945

do.end942:                                        ; preds = %for.end936
  call void @__sanitizer_cov_trace_pc() #9
  %call944 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %if.end945

if.end945:                                        ; preds = %do.end942, %for.end936.if.end945_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numshmems.4.lcssa)
  %cmp9471195 = icmp sgt i32 %numshmems.4.lcssa, 0
  br i1 %cmp9471195, label %if.end945.do.body950_crit_edge, label %if.end945.for.end959_crit_edge

if.end945.for.end959_crit_edge:                   ; preds = %if.end945
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end959

if.end945.do.body950_crit_edge:                   ; preds = %if.end945
  br label %do.body950

do.body950:                                       ; preds = %do.body950.do.body950_crit_edge, %if.end945.do.body950_crit_edge
  %index.31196 = phi i32 [ %inc958, %do.body950.do.body950_crit_edge ], [ 0, %if.end945.do.body950_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !284
  call void @arm_heavy_mb() #7
  %arrayidx953 = getelementptr ptr, ptr %call7.i.i1122, i32 %index.31196
  %155 = ptrtoint ptr %arrayidx953 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx953, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %156, i8 -47) #7, !srcloc !274
  call void @iounmap(ptr noundef %156) #7
  %arrayidx956 = getelementptr i32, ptr %call7.i.i, i32 %index.31196
  %157 = ptrtoint ptr %arrayidx956 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx956, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %158, i32 noundef 2048) #7
  %inc958 = add nuw nsw i32 %index.31196, 1
  %exitcond1205.not = icmp eq i32 %inc958, %numshmems.4.lcssa
  br i1 %exitcond1205.not, label %do.body950.for.end959_crit_edge, label %do.body950.do.body950_crit_edge

do.body950.do.body950_crit_edge:                  ; preds = %do.body950
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body950

do.body950.for.end959_crit_edge:                  ; preds = %do.body950
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end959

for.end959:                                       ; preds = %do.body950.for.end959_crit_edge, %if.end945.for.end959_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @kfree(ptr noundef nonnull %call7.i.i1122) #7
  br label %cleanup960

cleanup960:                                       ; preds = %for.end959, %for.end551, %do.end219, %if.then13, %entry.cleanup960_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ports) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @com90xx_found(i32 noundef %ioaddr, i32 noundef %airq, i32 noundef %shmem, ptr noundef %p) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_arcdev(ptr noundef nonnull @device) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %0 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  tail call void @iounmap(ptr noundef %p) #7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %shmem, i32 noundef 2048) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %p) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !285
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %1)
  %cmp = icmp eq i8 %1, -47
  br i1 %cmp, label %land.lhs.true, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end7
  %sub = add i32 %shmem, -2048
  %call13 = tail call fastcc i32 @check_mirror(i32 noundef %sub, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true16:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub17 = add i32 %shmem, -4096
  %call18 = tail call fastcc i32 @check_mirror(i32 noundef %sub17, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 1
  %spec.select = select i1 %cmp19, i32 4096, i32 2048
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16, %land.lhs.true.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %mirror_size.0 = phi i32 [ 2048, %land.lhs.true.if.end22_crit_edge ], [ 2048, %if.end7.if.end22_crit_edge ], [ %spec.select, %land.lhs.true16 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end22
  %shmem.pn = phi i32 [ %shmem, %if.end22 ], [ %first_mirror.0, %while.cond.while.cond_crit_edge ]
  %first_mirror.0 = sub i32 %shmem.pn, %mirror_size.0
  %call24 = tail call fastcc i32 @check_mirror(i32 noundef %first_mirror.0, i32 noundef %mirror_size.0) #10
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add28 = add i32 %mirror_size.0, %shmem
  br label %while.cond29

while.cond29:                                     ; preds = %while.cond29.while.cond29_crit_edge, %while.end
  %last_mirror.0 = phi i32 [ %add28, %while.end ], [ %add34, %while.cond29.while.cond29_crit_edge ]
  %call30 = tail call fastcc i32 @check_mirror(i32 noundef %last_mirror.0, i32 noundef %mirror_size.0) #10
  %cmp31 = icmp eq i32 %call30, 1
  %add34 = add i32 %last_mirror.0, %mirror_size.0
  br i1 %cmp31, label %while.cond29.while.cond29_crit_edge, label %while.end35

while.cond29.while.cond29_crit_edge:              ; preds = %while.cond29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond29

while.end35:                                      ; preds = %while.cond29
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shmem.pn, ptr %mem_start, align 4
  %sub36 = sub nsw i32 2047, %mirror_size.0
  %sub38 = add i32 %sub36, %last_mirror.0
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub38, ptr %mem_end, align 8
  tail call void @iounmap(ptr noundef %p) #7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %shmem, i32 noundef 2048) #7
  %4 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_start, align 4
  %6 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_end, align 8
  %sub42 = sub i32 1, %5
  %add43 = add i32 %sub42, %7
  %call44 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add43, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %while.end35.err_free_dev_crit_edge, label %if.end47

while.end35.err_free_dev_crit_edge:               ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_dev

if.end47:                                         ; preds = %while.end35
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %airq, ptr noundef nonnull @arcnet_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %if.end58, label %do.body51

do.body51:                                        ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %8 = load i32, ptr @arcnet_debug, align 4
  %and52 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.err_release_mem_crit_edge, label %if.then54

do.body51.err_release_mem_crit_edge:              ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_mem

if.then54:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.129, i32 noundef %airq) #11
  br label %err_release_mem

if.end58:                                         ; preds = %if.end47
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %airq, ptr %irq, align 4
  %card_name = getelementptr i8, ptr %call, i32 2596
  %10 = ptrtoint ptr %card_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.130, ptr %card_name, align 4
  %hw = getelementptr i8, ptr %call, i32 4956
  %command = getelementptr i8, ptr %call, i32 4960
  %11 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @com90xx_command, ptr %command, align 4
  %status = getelementptr i8, ptr %call, i32 4964
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @com90xx_status, ptr %status, align 4
  %intmask = getelementptr i8, ptr %call, i32 4968
  %13 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @com90xx_setmask, ptr %intmask, align 4
  %reset = getelementptr i8, ptr %call, i32 4972
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @com90xx_reset, ptr %reset, align 4
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hw, align 4
  %copy_to_card = getelementptr i8, ptr %call, i32 4992
  %16 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @com90xx_copy_to_card, ptr %copy_to_card, align 4
  %copy_from_card = getelementptr i8, ptr %call, i32 4996
  %17 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @com90xx_copy_from_card, ptr %copy_from_card, align 4
  %18 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_start, align 4
  %20 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_end, align 8
  %sub68 = sub i32 1, %19
  %add69 = add i32 %sub68, %21
  %call70 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %add69) #7
  %mem_start71 = getelementptr i8, ptr %call, i32 5000
  %22 = ptrtoint ptr %mem_start71 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call70, ptr %mem_start71, align 4
  %tobool73.not = icmp eq ptr %call70, null
  br i1 %tobool73.not, label %do.body75, label %if.end82

do.body75:                                        ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %23 = load i32, ptr @arcnet_debug, align 4
  %and76 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body75.err_free_irq_crit_edge, label %if.then78

do.body75.err_free_irq_crit_edge:                 ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_irq

if.then78:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.131) #11
  br label %err_free_irq

if.end82:                                         ; preds = %if.end58
  %add.ptr86 = getelementptr i8, ptr %call70, i32 1
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !286
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %25 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %26 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ioaddr, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %29 = load i32, ptr @arcnet_debug, align 4
  %and91 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end82.do.end104_crit_edge, label %if.then93

if.end82.do.end104_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end104

if.then93:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv94 = zext i8 %33 to i32
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %36 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mem_start, align 4
  %38 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_end, align 8
  %sub100 = sub i32 1, %37
  %add101 = add i32 %sub100, %39
  %div = udiv i32 %add101, %mirror_size.0
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.132, i32 noundef %conv94, i32 noundef %ioaddr, i32 noundef %35, i32 noundef %37, i32 noundef %div, i32 noundef %mirror_size.0) #11
  br label %do.end104

do.end104:                                        ; preds = %if.then93, %if.end82.do.end104_crit_edge
  %call105 = call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %err_unmap

if.end108:                                        ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  %40 = load i32, ptr @numcards, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr @numcards, align 4
  %arrayidx109 = getelementptr [16 x ptr], ptr @cards, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call, ptr %arrayidx109, align 4
  br label %cleanup

err_unmap:                                        ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %mem_start71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem_start71, align 4
  call void @iounmap(ptr noundef %43) #7
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_unmap, %if.then78, %do.body75.err_free_irq_crit_edge
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call112 = call ptr @free_irq(i32 noundef %45, ptr noundef nonnull %call) #7
  br label %err_release_mem

err_release_mem:                                  ; preds = %err_free_irq, %if.then54, %do.body51.err_release_mem_crit_edge
  %46 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mem_start, align 4
  %48 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mem_end, align 8
  %sub116 = sub i32 1, %47
  %add117 = add i32 %sub116, %49
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %47, i32 noundef %add117) #7
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_release_mem, %while.end35.err_free_dev_crit_edge
  call void @free_arcdev(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %if.end108, %do.end6
  %retval.0 = phi i32 [ -5, %err_free_dev ], [ 0, %if.end108 ], [ -12, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_arcdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_mirror(i32 noundef %addr, i32 noundef %size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %addr, i32 noundef %size, ptr noundef nonnull @.str.13, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ioremap(i32 noundef %addr, i32 noundef %size) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call1) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %0)
  %cmp = icmp eq i8 %0, -47
  %. = zext i1 %cmp to i32
  tail call void @iounmap(ptr noundef nonnull %call1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  %res.1 = phi i32 [ %., %if.then3 ], [ -1, %if.end.if.end9_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %addr, i32 noundef %size) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %if.end9 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90xx_command(ptr nocapture noundef readonly %dev, i32 noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !288
  tail call void @arm_heavy_mb() #7
  %conv1 = trunc i32 %cmd to i8
  %sext = shl i32 %1, 16
  %conv2 = ashr exact i32 %sext, 16
  %add = add nsw i32 %conv2, 1
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv1) #7, !srcloc !274
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com90xx_status(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %sext = shl i32 %1, 16
  %conv1 = ashr exact i32 %sext, 16
  %and = and i32 %conv1, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !289
  %conv4 = zext i8 %3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90xx_setmask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !290
  tail call void @arm_heavy_mb() #7
  %conv1 = trunc i32 %mask to i8
  %sext = shl i32 %1, 16
  %conv2 = ashr exact i32 %sext, 16
  %and = and i32 %conv2, 1048575
  %add3 = or i32 %and, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv1) #7, !srcloc !274
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com90xx_reset(ptr noundef %dev, i32 noundef %really_reset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %2 = load i32, ptr @arcnet_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sext77 = shl i32 %1, 16
  %conv1 = ashr exact i32 %sext77, 16
  %and2 = and i32 %conv1, 1048575
  %add3 = or i32 %and2, -18874368
  %3 = inttoptr i32 %add3 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !291
  %conv6 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.133, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %really_reset)
  %tobool7.not = icmp eq i32 %really_reset, 0
  %.pre = shl i32 %1, 16
  %.pre79 = ashr exact i32 %.pre, 16
  br i1 %tobool7.not, label %do.end.do.body19_crit_edge, label %if.then8

do.end.do.body19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then8:                                         ; preds = %do.end
  %add11 = add nsw i32 %.pre79, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %5 = inttoptr i32 %add13 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !292
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then8
  %__ms.078 = phi i32 [ 300, %if.then8 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.078, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %while.body.do.body19_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.do.body19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %while.body.do.body19_crit_edge, %do.end.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !293
  tail call void @arm_heavy_mb() #7
  %add23 = add nsw i32 %.pre79, 1
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %8 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 14) #7, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !294
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 22) #7, !srcloc !274
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %9 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mem_start, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #7, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %11)
  %cmp.not = icmp eq i8 %11, -47
  br i1 %cmp.not, label %do.body53, label %if.then41

if.then41:                                        ; preds = %do.body19
  br i1 %tobool7.not, label %if.then41.cleanup_crit_edge, label %do.body44

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body44:                                        ; preds = %if.then41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %12 = load i32, ptr @arcnet_debug, align 4
  %and45 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %if.then47

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.134) #11
  br label %cleanup

do.body53:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !296
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 13) #7, !srcloc !274
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.then47, %do.body44.cleanup_crit_edge, %if.then41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body53 ], [ 1, %do.body44.cleanup_crit_edge ], [ 1, %if.then47 ], [ 1, %if.then41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90xx_copy_to_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %mul = shl i32 %bufnum, 9
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %offset
  tail call void @mmiocpy(ptr noundef %add.ptr1, ptr noundef %buf, i32 noundef %count) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com90xx_copy_from_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_start = getelementptr i8, ptr %dev, i32 5000
  %0 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_start, align 4
  %mul = shl i32 %bufnum, 9
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %offset
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr1, i32 noundef %count) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !220, !222, !223, !224, !225, !227, !229, !231, !233, !235, !237, !239, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !256, !257}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @__param_io, !1, !"__param_io", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/com90xx.c", i32 91, i32 1}
!2 = !{ptr @__UNIQUE_ID_iotype337, !1, !"__UNIQUE_ID_iotype337", i1 false, i1 false}
!3 = !{ptr @__param_irq, !4, !"__param_irq", i1 false, i1 false}
!4 = !{!"../drivers/net/arcnet/com90xx.c", i32 92, i32 1}
!5 = !{ptr @__UNIQUE_ID_irqtype338, !4, !"__UNIQUE_ID_irqtype338", i1 false, i1 false}
!6 = !{ptr @__param_shmem, !7, !"__param_shmem", i1 false, i1 false}
!7 = !{!"../drivers/net/arcnet/com90xx.c", i32 93, i32 1}
!8 = !{ptr @__UNIQUE_ID_shmemtype339, !7, !"__UNIQUE_ID_shmemtype339", i1 false, i1 false}
!9 = !{ptr @__param_device, !10, !"__param_device", i1 false, i1 false}
!10 = !{!"../drivers/net/arcnet/com90xx.c", i32 94, i32 1}
!11 = !{ptr @__UNIQUE_ID_devicetype340, !10, !"__UNIQUE_ID_devicetype340", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file348, !13, !"__UNIQUE_ID_file348", i1 false, i1 false}
!13 = !{!"../drivers/net/arcnet/com90xx.c", i32 648, i32 1}
!14 = !{ptr @__UNIQUE_ID_license349, !13, !"__UNIQUE_ID_license349", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_com90xx__350_680_com90xx_init6, !16, !"__initcall__kmod_com90xx__350_680_com90xx_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/arcnet/com90xx.c", i32 680, i32 1}
!17 = !{ptr @__exitcall_com90xx_exit, !18, !"__exitcall_com90xx_exit", i1 false, i1 false}
!18 = !{!"../drivers/net/arcnet/com90xx.c", i32 681, i32 1}
!19 = !{ptr @__setup_com90xx_setup, !20, !"__setup_com90xx_setup", i1 false, i1 false}
!20 = !{!"../drivers/net/arcnet/com90xx.c", i32 714, i32 1}
!21 = !{ptr @cards, !22, !"cards", i1 false, i1 false}
!22 = !{!"../drivers/net/arcnet/com90xx.c", i32 70, i32 27}
!23 = !{ptr @numcards, !24, !"numcards", i1 false, i1 false}
!24 = !{!"../drivers/net/arcnet/com90xx.c", i32 71, i32 12}
!25 = !{ptr @io, !26, !"io", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/com90xx.c", i32 86, i32 12}
!27 = !{ptr @irq, !28, !"irq", i1 false, i1 false}
!28 = !{!"../drivers/net/arcnet/com90xx.c", i32 87, i32 12}
!29 = !{ptr @shmem, !30, !"shmem", i1 false, i1 false}
!30 = !{!"../drivers/net/arcnet/com90xx.c", i32 88, i32 12}
!31 = !{ptr @__param_str_io, !1, !"__param_str_io", i1 false, i1 false}
!32 = !{ptr @__param_str_irq, !4, !"__param_str_irq", i1 false, i1 false}
!33 = !{ptr @__param_str_shmem, !7, !"__param_str_shmem", i1 false, i1 false}
!34 = !{ptr @__param_str_device, !10, !"__param_str_device", i1 false, i1 false}
!35 = !{ptr @__param_string_device, !10, !"__param_string_device", i1 false, i1 false}
!36 = !{ptr @device, !37, !"device", i1 false, i1 false}
!37 = !{!"../drivers/net/arcnet/com90xx.c", i32 89, i32 13}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/arcnet/com90xx.c", i32 122, i32 3}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @com90xx_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @com90xx_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/arcnet/com90xx.c", i32 145, i32 4}
!47 = !{ptr @com90xx_probe._entry.4, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @com90xx_probe._entry_ptr.6, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/arcnet/com90xx.c", i32 146, i32 4}
!51 = !{ptr @com90xx_probe._entry.7, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @com90xx_probe._entry_ptr.9, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/arcnet/com90xx.c", i32 148, i32 3}
!55 = !{ptr @com90xx_probe._entry.10, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @com90xx_probe._entry_ptr.12, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/arcnet/com90xx.c", i32 152, i32 8}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/arcnet/com90xx.c", i32 154, i32 4}
!61 = !{ptr @com90xx_probe._entry.14, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @com90xx_probe._entry_ptr.16, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @com90xx_probe._entry.17, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/arcnet/com90xx.c", i32 155, i32 4}
!65 = !{ptr @com90xx_probe._entry_ptr.18, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/arcnet/com90xx.c", i32 162, i32 4}
!68 = !{ptr @com90xx_probe._entry.19, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @com90xx_probe._entry_ptr.21, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @com90xx_probe._entry.22, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/net/arcnet/com90xx.c", i32 163, i32 4}
!72 = !{ptr @com90xx_probe._entry_ptr.23, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @com90xx_probe._entry.24, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/net/arcnet/com90xx.c", i32 173, i32 3}
!75 = !{ptr @com90xx_probe._entry_ptr.25, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @com90xx_probe._entry.26, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/arcnet/com90xx.c", i32 174, i32 3}
!78 = !{ptr @com90xx_probe._entry_ptr.27, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @com90xx_probe._entry.28, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/net/arcnet/com90xx.c", i32 178, i32 2}
!81 = !{ptr @com90xx_probe._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/arcnet/com90xx.c", i32 181, i32 3}
!84 = !{ptr @com90xx_probe._entry.30, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @com90xx_probe._entry_ptr.32, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @com90xx_probe._entry.33, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/net/arcnet/com90xx.c", i32 195, i32 4}
!88 = !{ptr @com90xx_probe._entry_ptr.34, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/arcnet/com90xx.c", i32 196, i32 4}
!91 = !{ptr @com90xx_probe._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @com90xx_probe._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @com90xx_probe._entry.38, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/arcnet/com90xx.c", i32 198, i32 3}
!95 = !{ptr @com90xx_probe._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @com90xx_probe._entry.40, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/net/arcnet/com90xx.c", i32 200, i32 2}
!98 = !{ptr @com90xx_probe._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @com90xx_probe._entry.42, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/net/arcnet/com90xx.c", i32 213, i32 4}
!101 = !{ptr @com90xx_probe._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/arcnet/com90xx.c", i32 214, i32 4}
!104 = !{ptr @com90xx_probe._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @com90xx_probe._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/arcnet/com90xx.c", i32 216, i32 3}
!108 = !{ptr @com90xx_probe._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @com90xx_probe._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/arcnet/com90xx.c", i32 219, i32 4}
!112 = !{ptr @com90xx_probe._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @com90xx_probe._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/arcnet/com90xx.c", i32 220, i32 4}
!116 = !{ptr @com90xx_probe._entry.53, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @com90xx_probe._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/arcnet/com90xx.c", i32 227, i32 4}
!120 = !{ptr @com90xx_probe._entry.56, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @com90xx_probe._entry_ptr.58, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @com90xx_probe._entry.59, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/arcnet/com90xx.c", i32 228, i32 4}
!124 = !{ptr @com90xx_probe._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/arcnet/com90xx.c", i32 234, i32 4}
!127 = !{ptr @com90xx_probe._entry.61, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @com90xx_probe._entry_ptr.63, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @com90xx_probe._entry.64, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/net/arcnet/com90xx.c", i32 237, i32 4}
!131 = !{ptr @com90xx_probe._entry_ptr.65, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/arcnet/com90xx.c", i32 249, i32 4}
!134 = !{ptr @com90xx_probe._entry.66, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @com90xx_probe._entry_ptr.68, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @com90xx_probe._entry.69, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/net/arcnet/com90xx.c", i32 250, i32 4}
!138 = !{ptr @com90xx_probe._entry_ptr.70, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @com90xx_probe._entry.71, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/net/arcnet/com90xx.c", i32 253, i32 3}
!141 = !{ptr @com90xx_probe._entry_ptr.72, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @com90xx_probe._entry.73, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/net/arcnet/com90xx.c", i32 254, i32 3}
!144 = !{ptr @com90xx_probe._entry_ptr.74, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @com90xx_probe._entry.75, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/net/arcnet/com90xx.c", i32 267, i32 2}
!147 = !{ptr @com90xx_probe._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/arcnet/com90xx.c", i32 270, i32 3}
!150 = !{ptr @com90xx_probe._entry.77, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @com90xx_probe._entry_ptr.79, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @com90xx_probe._entry.80, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/net/arcnet/com90xx.c", i32 285, i32 4}
!154 = !{ptr @com90xx_probe._entry_ptr.81, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/arcnet/com90xx.c", i32 286, i32 4}
!157 = !{ptr @com90xx_probe._entry.82, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @com90xx_probe._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @com90xx_probe._entry.85, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/net/arcnet/com90xx.c", i32 288, i32 3}
!161 = !{ptr @com90xx_probe._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @com90xx_probe._entry.87, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/arcnet/com90xx.c", i32 290, i32 2}
!164 = !{ptr @com90xx_probe._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @com90xx_probe._entry.89, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/net/arcnet/com90xx.c", i32 306, i32 4}
!167 = !{ptr @com90xx_probe._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.92, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/arcnet/com90xx.c", i32 307, i32 4}
!170 = !{ptr @com90xx_probe._entry.91, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @com90xx_probe._entry_ptr.93, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @com90xx_probe._entry.94, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/arcnet/com90xx.c", i32 309, i32 3}
!174 = !{ptr @com90xx_probe._entry_ptr.95, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/arcnet/com90xx.c", i32 316, i32 4}
!177 = !{ptr @com90xx_probe._entry.96, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @com90xx_probe._entry_ptr.98, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @com90xx_probe._entry.99, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/net/arcnet/com90xx.c", i32 317, i32 4}
!181 = !{ptr @com90xx_probe._entry_ptr.100, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/arcnet/com90xx.c", i32 328, i32 4}
!184 = !{ptr @com90xx_probe._entry.101, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @com90xx_probe._entry_ptr.103, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @com90xx_probe._entry.104, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/net/arcnet/com90xx.c", i32 330, i32 4}
!188 = !{ptr @com90xx_probe._entry_ptr.105, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.107, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/arcnet/com90xx.c", i32 352, i32 5}
!191 = !{ptr @com90xx_probe._entry.106, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @com90xx_probe._entry_ptr.108, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @com90xx_probe._entry.109, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/net/arcnet/com90xx.c", i32 353, i32 5}
!195 = !{ptr @com90xx_probe._entry_ptr.110, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.112, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/arcnet/com90xx.c", i32 364, i32 3}
!198 = !{ptr @com90xx_probe._entry.111, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @com90xx_probe._entry_ptr.113, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/arcnet/com90xx.c", i32 392, i32 5}
!202 = !{ptr @com90xx_probe._entry.114, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @com90xx_probe._entry_ptr.116, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.118, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/arcnet/com90xx.c", i32 405, i32 5}
!206 = !{ptr @com90xx_probe._entry.117, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @com90xx_probe._entry_ptr.119, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.121, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/arcnet/com90xx.c", i32 412, i32 5}
!210 = !{ptr @com90xx_probe._entry.120, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @com90xx_probe._entry_ptr.122, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @com90xx_probe._entry.123, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/net/arcnet/com90xx.c", i32 414, i32 5}
!214 = !{ptr @com90xx_probe._entry_ptr.124, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @com90xx_probe._entry.125, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/net/arcnet/com90xx.c", i32 424, i32 3}
!217 = !{ptr @com90xx_probe._entry_ptr.126, !216, !"_entry_ptr", i1 false, i1 false}
!218 = distinct !{null, !219, !"com90xx_skip_probe", i1 false, i1 false}
!219 = !{!"../drivers/net/arcnet/com90xx.c", i32 82, i32 12}
!220 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/arcnet/com90xx.c", i32 471, i32 3}
!222 = !{ptr @.str.128, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @com90xx_found._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @com90xx_found._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/arcnet/com90xx.c", i32 512, i32 3}
!227 = !{ptr @.str.130, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/arcnet/com90xx.c", i32 518, i32 18}
!229 = !{ptr @.str.131, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/arcnet/com90xx.c", i32 529, i32 3}
!231 = !{ptr @.str.132, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/arcnet/com90xx.c", i32 539, i32 2}
!233 = !{ptr @.str.133, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/arcnet/com90xx.c", i32 595, i32 2}
!235 = !{ptr @.str.134, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/arcnet/com90xx.c", i32 616, i32 4}
!237 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/arcnet/com90xx.c", i32 636, i32 2}
!239 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!241 = distinct !{null, !238, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!242 = distinct !{null, !238, !"<string literal>", i1 false, i1 false}
!243 = distinct !{null, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/arcnet/com90xx.c", i32 645, i32 2}
!245 = distinct !{null, !244, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!246 = distinct !{null, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @__setup_str_com90xx_setup, !20, !"__setup_str_com90xx_setup", i1 false, i1 false}
!248 = !{ptr @.str.141, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/arcnet/com90xx.c", i32 690, i32 3}
!250 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @com90xx_setup._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @com90xx_setup._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.144, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/arcnet/com90xx.c", i32 696, i32 3}
!255 = !{ptr @com90xx_setup._entry.143, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @com90xx_setup._entry_ptr.145, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/arcnet/com90xx.c", i32 709, i32 36}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{i64 4633360}
!269 = !{i64 2155946112}
!270 = !{i64 2155949586}
!271 = !{i64 2155974192}
!272 = !{i64 2155976286}
!273 = !{i64 2155978087}
!274 = !{i64 4632965}
!275 = !{i64 2155978404}
!276 = !{i64 2155998497}
!277 = !{i64 2156002034}
!278 = !{i64 2156002518}
!279 = !{i64 2156006130}
!280 = !{i64 2156007076}
!281 = !{i64 2156012222}
!282 = !{i64 2156013820}
!283 = !{i64 2156017259}
!284 = !{i64 2156021861}
!285 = !{i64 2156024942}
!286 = !{i64 2156030978}
!287 = !{i64 2156022569}
!288 = !{i64 2156035502}
!289 = !{i64 2156035986}
!290 = !{i64 2156036271}
!291 = !{i64 2156037665}
!292 = !{i64 2156040785}
!293 = !{i64 2156042428}
!294 = !{i64 2156042868}
!295 = !{i64 2156043290}
!296 = !{i64 2156046416}
