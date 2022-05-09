; ModuleID = '/llk/IR_all_yes/drivers/dma/pl330.c_pt.bc'
source_filename = "../drivers/dma/pl330.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pl330_dmac = type { %struct.dma_device, %struct.list_head, %struct.spinlock, i32, ptr, %struct.pl330_config, %struct.spinlock, [32 x i32], i32, ptr, ptr, ptr, %struct.tasklet_struct, %struct._pl330_tbd, i32, %struct.list_head, i32, ptr, i32, ptr, ptr }
%struct.pl330_config = type { i32, i32, i32, i32, i8, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct._pl330_tbd = type { i8, i8, i8 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.dma_pl330_chan = type { %struct.tasklet_struct, %struct.dma_chan, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, %struct.dma_slave_config, i8, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.pl330_thread = type { i8, i32, i8, ptr, [2 x %struct._pl330_req], i32, i32 }
%struct._pl330_req = type { i32, ptr, ptr }
%struct.dma_pl330_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, %struct.pl330_xfer, %struct.pl330_reqcfg, i32, i32, i8, ptr, i32, i8, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.pl330_xfer = type { i32, i32, i32 }
%struct.pl330_reqcfg = type { i8, i8, i8, i8, i8, i32, i32, i32, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }
%struct._xfer_spec = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_pl330__293_3263_pl330_driver_init6 = internal global ptr @pl330_driver_init, section ".initcall6.init", align 4
@pl330_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl330_pm, ptr null, ptr null }, ptr @pl330_probe, ptr @pl330_remove, ptr null, ptr @pl330_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl330_driver_exit = internal global ptr @pl330_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"pl330.author=Jaswinder Singh <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [44 x i8] c"pl330.description=API Driver for PL330 DMAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [29 x i8] c"pl330.file=drivers/dma/pl330\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [18 x i8] c"pl330.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-pl330\00", [22 x i8] zeroinitializer }, align 32
@pl330_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl330_suspend, ptr @pl330_resume, ptr @pl330_suspend, ptr @pl330_resume, ptr @pl330_suspend, ptr @pl330_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pl330_ids = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 267056, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get reset!\0A\00", [42 x i8] zeroinitializer }, align 32
@pl330_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3038, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't deassert the device from reset!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl330_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/dma/pl330.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr = internal global ptr @pl330_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma-ocp\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get OCP reset!\0A\00", [38 x i8] zeroinitializer }, align 32
@pl330_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 3050, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't deassert the device from OCP reset!\0A\00", [50 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.12 = internal global ptr @pl330_probe._entry.10, section ".printk_index", align 4
@pl330_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pl330->pool_lock\00", [46 x i8] zeroinitializer }, align 32
@pl330_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 3081, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to allocate desc\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.17 = internal global ptr @pl330_probe._entry.14, section ".printk_index", align 4
@pl330_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pch->lock\00", [21 x i8] zeroinitializer }, align 32
@pl330_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 3138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to register DMAC\0A\00", [39 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.22 = internal global ptr @pl330_probe._entry.20, section ".printk_index", align 4
@pl330_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 3147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"unable to register DMA to the generic DT DMA helpers\0A\00", [42 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.25 = internal global ptr @pl330_probe._entry.23, section ".printk_index", align 4
@pl330_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 3157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to set the seg size\0A\00", [36 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.28 = internal global ptr @pl330_probe._entry.26, section ".printk_index", align 4
@pl330_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 3162, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Loaded driver for PL330 DMAC-%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.32 = internal global ptr @pl330_probe._entry.29, section ".printk_index", align 4
@pl330_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.4, ptr @.str.5, i32 3166, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\09DBUFF-%ux%ubytes Num_Chans-%u Num_Peri-%u Num_Events-%u\0A\00", [38 x i8] zeroinitializer }, align 32
@pl330_probe._entry_ptr.35 = internal global ptr @pl330_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arm,pl330-broken-no-flushp\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm,pl330-periph-burst\00", [41 x i8] zeroinitializer }, align 32
@pl330_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 1660, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reset Channel-%d\09 CS-%x FTC-%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pl330_update\00", [19 x i8] zeroinitializer }, align 32
@pl330_update._entry_ptr = internal global ptr @pl330_update._entry, section ".printk_index", align 4
@pl330_update._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 1673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:%d Unexpected!\0A\00", [45 x i8] zeroinitializer }, align 32
@pl330_update._entry_ptr.42 = internal global ptr @pl330_update._entry.40, section ".printk_index", align 4
@_execute_DBGINSN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 892, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMAC halted!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_execute_DBGINSN\00", [47 x i8] zeroinitializer }, align 32
@_execute_DBGINSN._entry_ptr = internal global ptr @_execute_DBGINSN._entry, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 1035, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:%d Recipe for ABORT!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_trigger\00", [23 x i8] zeroinitializer }, align 32
@_trigger._entry_ptr = internal global ptr @_trigger._entry, section ".printk_index", align 4
@pl330_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PERIPH_ID 0x%x !\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl330_add\00", [22 x i8] zeroinitializer }, align 32
@pl330_add._entry_ptr = internal global ptr @pl330_add._entry, section ".printk_index", align 4
@pl330_add._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 1957, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d Can't work without events!\0A\00", [62 x i8] zeroinitializer }, align 32
@pl330_add._entry_ptr.51 = internal global ptr @pl330_add._entry.49, section ".printk_index", align 4
@pl330_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pl330->lock\00", [19 x i8] zeroinitializer }, align 32
@pl330_add._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.5, i32 1976, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to create channels for DMAC\0A\00", [60 x i8] zeroinitializer }, align 32
@pl330_add._entry_ptr.55 = internal global ptr @pl330_add._entry.53, section ".printk_index", align 4
@dmac_alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 1923, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d Can't allocate memory!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmac_alloc_resources\00", [43 x i8] zeroinitializer }, align 32
@dmac_alloc_resources._entry_ptr = internal global ptr @dmac_alloc_resources._entry, section ".printk_index", align 4
@dmac_alloc_resources._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 1930, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d Can't to create channels for DMAC!\0A\00", [54 x i8] zeroinitializer }, align 32
@dmac_alloc_resources._entry_ptr.60 = internal global ptr @dmac_alloc_resources._entry.58, section ".printk_index", align 4
@fill_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 2057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s:%d Bad Desc(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fill_queue\00", [21 x i8] zeroinitializer }, align 32
@fill_queue._entry_ptr = internal global ptr @fill_queue._entry, section ".printk_index", align 4
@pl330_submit_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1495, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pl330_submit_req\00", [47 x i8] zeroinitializer }, align 32
@pl330_submit_req._entry_ptr = internal global ptr @pl330_submit_req._entry, section ".printk_index", align 4
@pl330_submit_req._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 1504, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d Invalid peripheral(%u)!\0A\00", [33 x i8] zeroinitializer }, align 32
@pl330_submit_req._entry_ptr.67 = internal global ptr @pl330_submit_req._entry.65, section ".printk_index", align 4
@pl330_submit_req._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.5, i32 1533, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d Try increasing mcbufsz (%i/%i)\0A\00", [58 x i8] zeroinitializer }, align 32
@pl330_submit_req._entry_ptr.70 = internal global ptr @pl330_submit_req._entry.68, section ".printk_index", align 4
@__pl330_prep_dma_memcpy._entry = internal constant %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 2631, ptr @.str.6, ptr @.str.7 }, align 1
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d Unable to fetch desc\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__pl330_prep_dma_memcpy\00", [40 x i8] zeroinitializer }, align 32
@__pl330_prep_dma_memcpy._entry_ptr = internal global ptr @__pl330_prep_dma_memcpy._entry, section ".printk_index", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@__const.pl330_get_desc.lock = private unnamed_addr constant { { { %struct.arch_spinlock_t, i32, i32, ptr, { ptr, [2 x ptr], ptr, i8, i8, i8, [1 x i8], i32, i32 } } } } { { { %struct.arch_spinlock_t, i32, i32, ptr, { ptr, [2 x ptr], ptr, i8, i8, i8, [1 x i8], i32, i32 } } } { { %struct.arch_spinlock_t, i32, i32, ptr, { ptr, [2 x ptr], ptr, i8, i8, i8, [1 x i8], i32, i32 } } { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), { ptr, [2 x ptr], ptr, i8, i8, i8, [1 x i8], i32, i32 } { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 3, i8 0, [1 x i8] zeroinitializer, i32 0, i32 0 } } } }, align 4
@pl330_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 2685, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d Invalid dma direction\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl330_prep_dma_cyclic\00", [42 x i8] zeroinitializer }, align 32
@pl330_prep_dma_cyclic._entry_ptr = internal global ptr @pl330_prep_dma_cyclic._entry, section ".printk_index", align 4
@pl330_prep_dma_cyclic._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.75, ptr @.str.5, i32 2700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pl330_prep_dma_cyclic._entry_ptr.77 = internal global ptr @pl330_prep_dma_cyclic._entry.76, section ".printk_index", align 4
@pl330_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.78, ptr @.str.5, i32 2862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pl330_prep_slave_sg\00", [44 x i8] zeroinitializer }, align 32
@pl330_prep_slave_sg._entry_ptr = internal global ptr @pl330_prep_slave_sg._entry, section ".printk_index", align 4
@pl330_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pl330_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PL330 physical channels:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"THREAD:\09\09CHANNEL:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"--------\09-----\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d\09\09\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"--\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table._setup_req = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [9 x i64] [i64 7, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 15]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 8, i64 9, i64 14, i64 15]
@__sancov_gen_cov_switch_values.90 = internal global [9 x i64] [i64 7, i64 32, i64 5, i64 6, i64 7, i64 8, i64 9, i64 14, i64 15]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"pl330_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3252, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3255, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"pl330_pm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2990, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"pl330_ids\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3242, i32 29 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3032, i32 60 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3034, i32 58 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3038, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3043, i32 64 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3046, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3050, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3076, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3081, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3103, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3138, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3146, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3157, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3161, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 3163, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 508, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 512, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1657, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1672, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 892, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1034, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1947, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1956, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1961, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1976, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1922, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1929, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2056, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1494, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1502, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1532, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2630, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2592, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2684, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2699, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2860, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"pl330_debugfs_fops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2946, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2920, i32 14 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2921, i32 14 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2922, i32 14 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2936, i32 17 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2938, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [23 x i8] c"../drivers/dma/pl330.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 2940, i32 18 }
@___asan_gen_.360 = private unnamed_addr constant [24 x i8] c"switch.table._setup_req\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_pl330_driver_exit, ptr @__initcall__kmod_pl330__293_3263_pl330_driver_init6, ptr @__pl330_prep_dma_memcpy._entry, ptr @__pl330_prep_dma_memcpy._entry_ptr, ptr @_execute_DBGINSN._entry, ptr @_execute_DBGINSN._entry_ptr, ptr @_trigger._entry, ptr @_trigger._entry_ptr, ptr @dmac_alloc_resources._entry, ptr @dmac_alloc_resources._entry.58, ptr @dmac_alloc_resources._entry_ptr, ptr @dmac_alloc_resources._entry_ptr.60, ptr @fill_queue._entry, ptr @fill_queue._entry_ptr, ptr @pl330_add._entry, ptr @pl330_add._entry.49, ptr @pl330_add._entry.53, ptr @pl330_add._entry_ptr, ptr @pl330_add._entry_ptr.51, ptr @pl330_add._entry_ptr.55, ptr @pl330_driver_exit, ptr @pl330_prep_dma_cyclic._entry, ptr @pl330_prep_dma_cyclic._entry.76, ptr @pl330_prep_dma_cyclic._entry_ptr, ptr @pl330_prep_dma_cyclic._entry_ptr.77, ptr @pl330_prep_slave_sg._entry, ptr @pl330_prep_slave_sg._entry_ptr, ptr @pl330_probe._entry, ptr @pl330_probe._entry.10, ptr @pl330_probe._entry.14, ptr @pl330_probe._entry.20, ptr @pl330_probe._entry.23, ptr @pl330_probe._entry.26, ptr @pl330_probe._entry.29, ptr @pl330_probe._entry.33, ptr @pl330_probe._entry_ptr, ptr @pl330_probe._entry_ptr.12, ptr @pl330_probe._entry_ptr.17, ptr @pl330_probe._entry_ptr.22, ptr @pl330_probe._entry_ptr.25, ptr @pl330_probe._entry_ptr.28, ptr @pl330_probe._entry_ptr.32, ptr @pl330_probe._entry_ptr.35, ptr @pl330_submit_req._entry, ptr @pl330_submit_req._entry.65, ptr @pl330_submit_req._entry.68, ptr @pl330_submit_req._entry_ptr, ptr @pl330_submit_req._entry_ptr.67, ptr @pl330_submit_req._entry_ptr.70, ptr @pl330_update._entry, ptr @pl330_update._entry.40, ptr @pl330_update._entry_ptr, ptr @pl330_update._entry_ptr.42, ptr @pl330_driver, ptr @.str, ptr @pl330_pm, ptr @pl330_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @pl330_probe.__key, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @pl330_probe.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @pl330_add.__key, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @pl330_debugfs_fops, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @switch.table._setup_req], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_update._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_execute_DBGINSN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_add._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_add._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmac_alloc_resources._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_submit_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_submit_req._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_submit_req._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_prep_dma_cyclic._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl330_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._setup_req to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl330_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl330_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl330_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %adev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %adev, i64 noundef 4294967295) #10
  %call.i399 = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 696, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i399, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 15
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adev, ptr %dev8, align 4
  %mcbufsz = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 3
  %3 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mcbufsz, align 4
  %quirks = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 18
  %call.i400 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i400, null
  br i1 %tobool.i.not, label %if.end6.for.inc_crit_edge, label %if.then10

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %quirks, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end6.for.inc_crit_edge
  %call.i400.1 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef null) #10
  %tobool.i.not.1 = icmp eq ptr %call.i400.1, null
  br i1 %tobool.i.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %or.1 = or i32 %7, 2
  store i32 %or.1, ptr %quirks, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %res14 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res14) #10
  %base = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %base, align 4
  %cmp.i401 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i401, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %for.inc.1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i399, ptr %driver_data.i, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %adev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %rstc = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 19
  %11 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %rstc, align 4
  %cmp.i402 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i402, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call.i.i to i32
  %call32 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %adev, i32 noundef %12, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.else:                                          ; preds = %if.end22
  %call34 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end39, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end39:                                         ; preds = %if.else
  %call.i.i403 = tail call ptr @__devm_reset_control_get(ptr noundef %adev, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %rstc_ocp = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 20
  %13 = ptrtoint ptr %rstc_ocp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i403, ptr %rstc_ocp, align 4
  %cmp.i404 = icmp ugt ptr %call.i.i403, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i404, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call.i.i403 to i32
  %call48 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %adev, i32 noundef %14, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.else49:                                        ; preds = %if.end39
  %call51 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i403) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond60.preheader, label %do.end56

for.cond60.preheader:                             ; preds = %if.else49
  %init_name.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 3
  br label %for.body62

do.end56:                                         ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.11) #13
  br label %cleanup

for.cond60:                                       ; preds = %dev_name.exit
  %inc77 = add nuw nsw i32 %i.1428, 1
  %exitcond.not = icmp eq i32 %inc77, 9
  br i1 %exitcond.not, label %for.cond60.for.end78_crit_edge, label %for.cond60.for.body62_crit_edge

for.cond60.for.body62_crit_edge:                  ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body62

for.cond60.for.end78_crit_edge:                   ; preds = %for.cond60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

for.body62:                                       ; preds = %for.cond60.for.body62_crit_edge, %for.cond60.preheader
  %i.1428 = phi i32 [ 0, %for.cond60.preheader ], [ %inc77, %for.cond60.for.body62_crit_edge ]
  %arrayidx64 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 %i.1428
  %15 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool65.not = icmp eq i32 %16, 0
  br i1 %tobool65.not, label %for.body62.for.end78_crit_edge, label %if.then66

for.body62.for.end78_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78

if.then66:                                        ; preds = %for.body62
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then66.dev_name.exit_crit_edge

if.then66.dev_name.exit_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then66.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %if.then66.dev_name.exit_crit_edge ]
  %call.i405 = tail call i32 @devm_request_threaded_irq(ptr noundef %adev, i32 noundef %16, ptr noundef nonnull @pl330_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %call.i399) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i405)
  %tobool71.not = icmp eq i32 %call.i405, 0
  br i1 %tobool71.not, label %for.cond60, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end78:                                        ; preds = %for.body62.for.end78_crit_edge, %for.cond60.for.end78_crit_edge
  %pcfg79 = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 5
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %21 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %periphid, align 8
  %23 = ptrtoint ptr %pcfg79 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %pcfg79, align 4
  %call80 = tail call fastcc i32 @pl330_add(ptr noundef nonnull %call.i399)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %for.end78.cleanup_crit_edge

for.end78.cleanup_crit_edge:                      ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %for.end78
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 1
  %24 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %desc_pool, ptr %desc_pool, align 4
  %prev.i = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %desc_pool, ptr %prev.i, align 4
  %pool_lock = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %pool_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @pl330_probe.__key, i16 noundef signext 3) #10
  %call90 = tail call fastcc i32 @add_desc(ptr noundef %desc_pool, ptr noundef %pool_lock, i32 noundef 3264, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end95, label %if.end83.if.end97_crit_edge

if.end83.if.end97_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

do.end95:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %adev, ptr noundef nonnull @.str.15) #13
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end83.if.end97_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 3
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i406 = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i406 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %channels, ptr %prev.i406, align 4
  %num_peri = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %num_peri to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %num_peri, align 4
  %bf.lshr = lshr i32 %bf.load, 1
  %bf.clear = and i32 %bf.lshr, 63
  %bf.lshr100 = lshr i32 %bf.load, 7
  %bf.clear101 = and i32 %bf.lshr100, 15
  %29 = tail call i32 @llvm.umax.i32(i32 %bf.clear, i32 %bf.clear101)
  %num_peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 16
  %30 = ptrtoint ptr %num_peripherals to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_peripherals, align 4
  %31 = mul nuw nsw i32 %29, 236
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  %peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 17
  %32 = ptrtoint ptr %peripherals to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i, ptr %peripherals, align 4
  %tobool105.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool105.not, label %if.end97.probe_err2_crit_edge, label %for.cond108.preheader

if.end97.probe_err2_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_err2

for.cond108.preheader:                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp109429.not = icmp eq i32 %29, 0
  br i1 %cmp109429.not, label %for.cond108.preheader.for.end124_crit_edge, label %for.cond108.preheader.for.body110_crit_edge

for.cond108.preheader.for.body110_crit_edge:      ; preds = %for.cond108.preheader
  br label %for.body110

for.cond108.preheader.for.end124_crit_edge:       ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end124

for.body110:                                      ; preds = %list_add_tail.exit.for.body110_crit_edge, %for.cond108.preheader.for.body110_crit_edge
  %i.2430 = phi i32 [ %inc123, %list_add_tail.exit.for.body110_crit_edge ], [ 0, %for.cond108.preheader.for.body110_crit_edge ]
  %33 = ptrtoint ptr %peripherals to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %peripherals, align 4
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %chan = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 1
  %private = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 1, i32 14
  %37 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %private, align 4
  %submitted_list = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 2
  %38 = ptrtoint ptr %submitted_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %submitted_list, ptr %submitted_list, align 4
  %prev.i407 = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i407 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %submitted_list, ptr %prev.i407, align 4
  %work_list = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 3
  %40 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i408 = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 3, i32 1
  %41 = ptrtoint ptr %prev.i408 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %work_list, ptr %prev.i408, align 4
  %completed_list = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 4
  %42 = ptrtoint ptr %completed_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %completed_list, ptr %completed_list, align 4
  %prev.i409 = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 4, i32 1
  %43 = ptrtoint ptr %prev.i409 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %completed_list, ptr %prev.i409, align 4
  %lock = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @pl330_probe.__key.18, i16 noundef signext 3) #10
  %thread = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 7
  %44 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %thread, align 4
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i399, ptr %chan, align 4
  %dmac = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 5
  %46 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i399, ptr %dmac, align 4
  %dir = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 12
  %47 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %dir, align 4
  %device_node = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 1, i32 8
  %48 = ptrtoint ptr %prev.i406 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i406, align 4
  %call.i.i411 = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %49, ptr noundef %channels) #10
  br i1 %call.i.i411, label %if.end.i.i412, label %for.body110.list_add_tail.exit_crit_edge

for.body110.list_add_tail.exit_crit_edge:         ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i412:                                    ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %prev.i406 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %device_node, ptr %prev.i406, align 4
  %51 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr %struct.dma_pl330_chan, ptr %34, i32 %i.2430, i32 1, i32 8, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %device_node, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i412, %for.body110.list_add_tail.exit_crit_edge
  %inc123 = add nuw nsw i32 %i.2430, 1
  %exitcond439.not = icmp eq i32 %inc123, %29
  br i1 %exitcond439.not, label %list_add_tail.exit.for.end124_crit_edge, label %list_add_tail.exit.for.body110_crit_edge

list_add_tail.exit.for.body110_crit_edge:         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body110

list_add_tail.exit.for.end124_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end124

for.end124:                                       ; preds = %list_add_tail.exit.for.end124_crit_edge, %for.cond108.preheader.for.end124_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %54 = ptrtoint ptr %num_peri to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load126 = load i32, ptr %num_peri, align 4
  %55 = and i32 %bf.load126, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool129.not = icmp eq i32 %55, 0
  br i1 %tobool129.not, label %for.end124.if.end134_crit_edge, label %if.then130

for.end124.if.end134_crit_edge:                   ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then130:                                       ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %for.end124.if.end134_crit_edge
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 27
  %56 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pl330_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 29
  %57 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @pl330_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 30
  %58 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @pl330_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 40
  %59 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @pl330_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 49
  %60 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @pl330_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 39
  %61 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pl330_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 44
  %62 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pl330_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 45
  %63 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @pl330_pause, ptr %device_pause, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 47
  %64 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @pl330_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 50
  %65 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @pl330_issue_pending, ptr %device_issue_pending, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 19
  %66 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 279, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 20
  %67 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 279, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 21
  %68 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 26
  %69 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %residue_granularity, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i399, i32 0, i32 23
  %70 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16, ptr %max_burst, align 4
  %call135 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i399) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end142, label %do.end140

do.end140:                                        ; preds = %if.end134
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.21) #13
  %71 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channels, align 4
  %cmp211.not434 = icmp eq ptr %72, %channels
  br i1 %cmp211.not434, label %do.end140.probe_err2_crit_edge, label %do.end140.for.body212_crit_edge

do.end140.for.body212_crit_edge:                  ; preds = %do.end140
  br label %for.body212

do.end140.probe_err2_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_err2

if.end142:                                        ; preds = %if.end134
  %73 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node, align 8
  %tobool145.not = icmp eq ptr %74, null
  br i1 %tobool145.not, label %if.end142.if.end157_crit_edge, label %if.then146

if.end142.if.end157_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then146:                                       ; preds = %if.end142
  %call149 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %74, ptr noundef nonnull @of_dma_pl330_xlate, ptr noundef nonnull %call.i399) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then146.if.end157_crit_edge, label %do.end154

if.then146.if.end157_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.end154:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.24) #13
  br label %if.end157

if.end157:                                        ; preds = %do.end154, %if.then146.if.end157_crit_edge, %if.end142.if.end157_crit_edge
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 22
  %75 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i413 = icmp eq ptr %76, null
  br i1 %tobool.not.i413, label %do.end164, label %dma_set_max_seg_size.exit.thread

dma_set_max_seg_size.exit.thread:                 ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1900800, ptr %76, align 4
  br label %if.end166

do.end164:                                        ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.27) #13
  br label %if.end166

if.end166:                                        ; preds = %do.end164, %dma_set_max_seg_size.exit.thread
  tail call fastcc void @init_pl330_debugfs(ptr noundef nonnull %call.i399)
  %78 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %periphid, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.30, i32 noundef %79) #13
  %80 = ptrtoint ptr %num_peri to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load176 = load i32, ptr %num_peri, align 4
  %bf.lshr177 = lshr i32 %bf.load176, 11
  %bf.clear178 = and i32 %bf.lshr177, 2047
  %div397 = lshr i32 %bf.load176, 25
  %bf.lshr183 = lshr i32 %bf.load176, 7
  %bf.clear184 = and i32 %bf.lshr183, 15
  %bf.lshr187 = lshr i32 %bf.load176, 1
  %bf.clear188 = and i32 %bf.lshr187, 63
  %num_events = getelementptr inbounds %struct.pl330_dmac, ptr %call.i399, i32 0, i32 5, i32 4
  %81 = ptrtoint ptr %num_events to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load189 = load i8, ptr %num_events, align 4
  %bf.lshr190 = lshr i8 %bf.load189, 2
  %bf.cast = zext i8 %bf.lshr190 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.34, i32 noundef %bf.clear178, i32 noundef %div397, i32 noundef %bf.clear184, i32 noundef %bf.clear188, i32 noundef %bf.cast) #13
  tail call void @pm_runtime_irq_safe(ptr noundef %adev) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %adev, i1 noundef zeroext true) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %adev, i32 noundef 20) #10
  %call.i416 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 12, i32 22
  %82 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store volatile i64 %call.i416, ptr %last_busy.i, align 8
  %call.i417 = tail call i32 @__pm_runtime_suspend(ptr noundef %adev, i32 noundef 13) #10
  br label %cleanup

for.body212:                                      ; preds = %for.inc222.for.body212_crit_edge, %do.end140.for.body212_crit_edge
  %.pn.in435 = phi ptr [ %.pn437, %for.inc222.for.body212_crit_edge ], [ %72, %do.end140.for.body212_crit_edge ]
  %83 = ptrtoint ptr %.pn.in435 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn437 = load ptr, ptr %.pn.in435, align 4
  %chan207438 = getelementptr i8, ptr %.pn.in435, i32 -32
  %call.i.i418 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in435) #10
  br i1 %call.i.i418, label %if.end.i.i419, label %for.body212.list_del.exit_crit_edge

for.body212.list_del.exit_crit_edge:              ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i419:                                    ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in435, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i, align 4
  %86 = ptrtoint ptr %.pn.in435 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %.pn.in435, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i419, %for.body212.list_del.exit_crit_edge
  %90 = ptrtoint ptr %.pn.in435 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in435, align 4
  %prev.i420 = getelementptr inbounds %struct.list_head, ptr %.pn.in435, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i420 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i420, align 4
  %thread215 = getelementptr i8, ptr %.pn.in435, i32 104
  %92 = ptrtoint ptr %thread215 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %thread215, align 4
  %tobool216.not = icmp eq ptr %93, null
  br i1 %tobool216.not, label %list_del.exit.for.inc222_crit_edge, label %if.then217

list_del.exit.for.inc222_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc222

if.then217:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call219 = tail call i32 @pl330_terminate_all(ptr noundef %chan207438)
  tail call void @pl330_free_chan_resources(ptr noundef %chan207438)
  br label %for.inc222

for.inc222:                                       ; preds = %if.then217, %list_del.exit.for.inc222_crit_edge
  %cmp211.not = icmp eq ptr %.pn437, %channels
  br i1 %cmp211.not, label %for.inc222.probe_err2_crit_edge, label %for.inc222.for.body212_crit_edge

for.inc222.for.body212_crit_edge:                 ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body212

for.inc222.probe_err2_crit_edge:                  ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_err2

probe_err2:                                       ; preds = %for.inc222.probe_err2_crit_edge, %do.end140.probe_err2_crit_edge, %if.end97.probe_err2_crit_edge
  %ret.0 = phi i32 [ -12, %if.end97.probe_err2_crit_edge ], [ %call135, %do.end140.probe_err2_crit_edge ], [ %call135, %for.inc222.probe_err2_crit_edge ]
  tail call fastcc void @pl330_del(ptr noundef nonnull %call.i399)
  %94 = ptrtoint ptr %rstc_ocp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rstc_ocp, align 4
  %tobool231.not = icmp eq ptr %95, null
  br i1 %tobool231.not, label %probe_err2.if.end235_crit_edge, label %if.then232

probe_err2.if.end235_crit_edge:                   ; preds = %probe_err2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

if.then232:                                       ; preds = %probe_err2
  call void @__sanitizer_cov_trace_pc() #12
  %call234 = tail call i32 @reset_control_assert(ptr noundef nonnull %95) #10
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %probe_err2.if.end235_crit_edge
  %96 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rstc, align 4
  %tobool237.not = icmp eq ptr %97, null
  br i1 %tobool237.not, label %if.end235.cleanup_crit_edge, label %if.then238

if.end235.cleanup_crit_edge:                      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then238:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  %call240 = tail call i32 @reset_control_assert(ptr noundef nonnull %97) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then238, %if.end235.cleanup_crit_edge, %if.end166, %for.end78.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end56, %if.then44, %do.end, %if.then28, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then19 ], [ %call32, %if.then28 ], [ %call34, %do.end ], [ %call48, %if.then44 ], [ %call51, %do.end56 ], [ 0, %if.end166 ], [ -12, %if.end.cleanup_crit_edge ], [ %call80, %for.end78.cleanup_crit_edge ], [ %ret.0, %if.then238 ], [ %ret.0, %if.end235.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i405, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl330_remove(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !180
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_dma_controller_free(ptr noundef nonnull %6) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %8, ptr noundef %1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not.1 = icmp eq i32 %10, 0
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %10, ptr noundef %1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.2 = icmp eq i32 %12, 0
  br i1 %tobool6.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then7.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %12, ptr noundef %1) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.3 = icmp eq i32 %14, 0
  br i1 %tobool6.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then7.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then7.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %14, ptr noundef %1) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then7.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.4 = icmp eq i32 %16, 0
  br i1 %tobool6.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then7.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then7.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %16, ptr noundef %1) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then7.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not.5 = icmp eq i32 %18, 0
  br i1 %tobool6.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then7.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then7.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %18, ptr noundef %1) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then7.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.6 = icmp eq i32 %20, 0
  br i1 %tobool6.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then7.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then7.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %20, ptr noundef %1) #10
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then7.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not.7 = icmp eq i32 %22, 0
  br i1 %tobool6.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then7.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then7.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %22, ptr noundef %1) #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then7.7, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not.8 = icmp eq i32 %24, 0
  br i1 %tobool6.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then7.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8

if.then7.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %adev, i32 noundef %24, ptr noundef %1) #10
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then7.8, %for.inc.7.for.inc.8_crit_edge
  tail call void @dma_async_device_unregister(ptr noundef %1) #10
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channels, align 4
  %cmp21.not78 = icmp eq ptr %26, %channels
  br i1 %cmp21.not78, label %for.inc.8.for.end38_crit_edge, label %for.inc.8.for.body22_crit_edge

for.inc.8.for.body22_crit_edge:                   ; preds = %for.inc.8
  br label %for.body22

for.inc.8.for.end38_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body22:                                       ; preds = %for.inc31.for.body22_crit_edge, %for.inc.8.for.body22_crit_edge
  %.pn.in79 = phi ptr [ %.pn81, %for.inc31.for.body22_crit_edge ], [ %26, %for.inc.8.for.body22_crit_edge ]
  %27 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn81 = load ptr, ptr %.pn.in79, align 4
  %chan1782 = getelementptr i8, ptr %.pn.in79, i32 -32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in79) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body22.list_del.exit_crit_edge

for.body22.list_del.exit_crit_edge:               ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in79, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in79, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body22.list_del.exit_crit_edge
  %34 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in79, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in79, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %thread = getelementptr i8, ptr %.pn.in79, i32 104
  %36 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %thread, align 4
  %tobool25.not = icmp eq ptr %37, null
  br i1 %tobool25.not, label %list_del.exit.for.inc31_crit_edge, label %if.then26

list_del.exit.for.inc31_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc31

if.then26:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call i32 @pl330_terminate_all(ptr noundef %chan1782)
  tail call void @pl330_free_chan_resources(ptr noundef %chan1782)
  br label %for.inc31

for.inc31:                                        ; preds = %if.then26, %list_del.exit.for.inc31_crit_edge
  %cmp21.not = icmp eq ptr %.pn81, %channels
  br i1 %cmp21.not, label %for.inc31.for.end38_crit_edge, label %for.inc31.for.body22_crit_edge

for.inc31.for.body22_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body22

for.inc31.for.end38_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.end38:                                        ; preds = %for.inc31.for.end38_crit_edge, %for.inc.8.for.end38_crit_edge
  tail call fastcc void @pl330_del(ptr noundef %1)
  %rstc_ocp = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 20
  %38 = ptrtoint ptr %rstc_ocp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rstc_ocp, align 4
  %tobool39.not = icmp eq ptr %39, null
  br i1 %tobool39.not, label %for.end38.if.end43_crit_edge, label %if.then40

for.end38.if.end43_crit_edge:                     ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @reset_control_assert(ptr noundef nonnull %39) #10
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.end38.if.end43_crit_edge
  %rstc = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rstc, align 4
  %tobool44.not = icmp eq ptr %41, null
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 @reset_control_assert(ptr noundef nonnull %41) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #10
  %pclk.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk.i, align 8
  tail call void @clk_unprepare(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pclk.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk.i, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %lock.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %3 = lshr i32 %2, 24
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %6 = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %6, align 1
  %add.ptr12.i = getelementptr i8, ptr %1, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !181
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %num_chan.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %num_chan.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 7
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %notmask.i = shl nsw i32 -1, %bf.clear.i
  %sub.i = xor i32 %notmask.i, -1
  %and16.i = and i32 %9, %sub.i
  %dmac_tbd17.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 13
  %reset_chan.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 13, i32 2
  %11 = ptrtoint ptr %reset_chan.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reset_chan.i, align 2
  %13 = trunc i32 %and16.i to i8
  %conv19.i = or i8 %12, %13
  store i8 %conv19.i, ptr %reset_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool20.not.i = icmp eq i32 %and16.i, 0
  %14 = and i32 %bf.load.i, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp27238.not.i = icmp eq i32 %14, 0
  %or.cond = select i1 %tobool20.not.i, i1 true, i1 %cmp27238.not.i
  br i1 %or.cond, label %entry.if.end51.i_crit_edge, label %while.body.lr.ph.i

entry.if.end51.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

while.body.lr.ph.i:                               ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %data, i32 0, i32 15
  %channels.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.0239.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end50.i.while.body.i_crit_edge ]
  %shl29.i = shl nuw i32 1, %i.0239.i
  %and30.i = and i32 %shl29.i, %and16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %while.body.i.if.end50.i_crit_edge, label %do.end35.i

while.body.i.if.end50.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

do.end35.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %mul.i = shl i32 %i.0239.i, 3
  %add.i = add nuw nsw i32 %mul.i, 256
  %add.ptr38.i = getelementptr i8, ptr %1, i32 %add.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #10, !srcloc !181
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %mul44.i = shl i32 %i.0239.i, 2
  %add45.i = add nuw nsw i32 %mul44.i, 64
  %add.ptr46.i = getelementptr i8, ptr %1, i32 %add45.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #10, !srcloc !181
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.38, i32 noundef %i.0239.i, i32 noundef %18, i32 noundef %20) #13
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels.i, align 4
  %arrayidx.i = getelementptr %struct.pl330_thread, ptr %22, i32 %i.0239.i
  tail call fastcc void @_stop(ptr noundef %arrayidx.i) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end35.i, %while.body.i.if.end50.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0239.i, 1
  %23 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load24.i = load i32, ptr %num_chan.i, align 4
  %bf.lshr25.i = lshr i32 %bf.load24.i, 7
  %bf.clear26.i = and i32 %bf.lshr25.i, 15
  %cmp27.i = icmp ult i32 %inc.i, %bf.clear26.i
  br i1 %cmp27.i, label %if.end50.i.while.body.i_crit_edge, label %if.end50.i.if.end51.i_crit_edge

if.end50.i.if.end51.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end51.i:                                       ; preds = %if.end50.i.if.end51.i_crit_edge, %entry.if.end51.i_crit_edge
  %add.ptr54.i = getelementptr i8, ptr %1, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #10, !srcloc !181
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  %num_events.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load59.i = load i8, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load59.i)
  %cmp61.i = icmp sgt i8 %bf.load59.i, -1
  br i1 %cmp61.i, label %land.lhs.true.i, label %if.end51.i.for.body.lr.ph.i_crit_edge

if.end51.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

land.lhs.true.i:                                  ; preds = %if.end51.i
  %bf.lshr60.i = lshr i8 %bf.load59.i, 2
  %bf.cast.i = zext i8 %bf.lshr60.i to i32
  %notmask228.i = shl nsw i32 -1, %bf.cast.i
  %and70.i = and i32 %notmask228.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.end79.i, label %if.then72.i

if.then72.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dmac_tbd17.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %dmac_tbd17.i, align 4
  %dev78.i = getelementptr inbounds %struct.dma_device, ptr %data, i32 0, i32 15
  %28 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev78.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 1673) #13
  br label %updt_exit.i

if.end79.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load59.i)
  %cmp85244.not.i = icmp ult i8 %bf.load59.i, 4
  br i1 %cmp85244.not.i, label %if.end79.i.while.cond124.preheader.i_crit_edge, label %if.end79.i.for.body.lr.ph.i_crit_edge

if.end79.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

if.end79.i.while.cond124.preheader.i_crit_edge:   ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond124.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end79.i.for.body.lr.ph.i_crit_edge, %if.end51.i.for.body.lr.ph.i_crit_edge
  %add.ptr93.i = getelementptr i8, ptr %1, i32 32
  %add.ptr105.i = getelementptr i8, ptr %1, i32 44
  %channels108.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 10
  %req_done.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 15
  %prev.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 15, i32 1
  br label %for.body.i

while.cond124.preheader.i:                        ; preds = %for.inc.i.while.cond124.preheader.i_crit_edge, %if.end79.i.while.cond124.preheader.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end79.i.while.cond124.preheader.i_crit_edge ], [ %ret.1.i, %for.inc.i.while.cond124.preheader.i_crit_edge ]
  %req_done125.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 15
  %30 = ptrtoint ptr %req_done125.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %req_done125.i, align 4
  %cmp.i.not248.i = icmp eq ptr %31, %req_done125.i
  br i1 %cmp.i.not248.i, label %while.cond124.preheader.i.updt_exit.i_crit_edge, label %while.cond124.preheader.i.while.body128.i_crit_edge

while.cond124.preheader.i.while.body128.i_crit_edge: ; preds = %while.cond124.preheader.i
  br label %while.body128.i

while.cond124.preheader.i.updt_exit.i_crit_edge:  ; preds = %while.cond124.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %updt_exit.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ev.0246.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc123.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.0245.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %shl87.i = shl nuw i32 1, %ev.0246.i
  %and88.i = and i32 %shl87.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then90.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then90.i:                                      ; preds = %for.body.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #10, !srcloc !181
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %and98.i = and i32 %33, %shl87.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %if.then90.i.if.end106.i_crit_edge, label %do.body101.i

if.then90.i.if.end106.i_crit_edge:                ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106.i

do.body101.i:                                     ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl87.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %34) #10, !srcloc !189
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.body101.i, %if.then90.i.if.end106.i_crit_edge
  %arrayidx107.i = getelementptr %struct.pl330_dmac, ptr %data, i32 0, i32 7, i32 %ev.0246.i
  %35 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx107.i, align 4
  %37 = ptrtoint ptr %channels108.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channels108.i, align 4
  %req_running.i = getelementptr %struct.pl330_thread, ptr %38, i32 %36, i32 6
  %39 = ptrtoint ptr %req_running.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %req_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp110.i = icmp eq i32 %40, -1
  br i1 %cmp110.i, label %if.end106.i.for.inc.i_crit_edge, label %if.end113.i

if.end106.i.for.inc.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end113.i:                                      ; preds = %if.end106.i
  %arrayidx109.i = getelementptr %struct.pl330_thread, ptr %38, i32 %36
  %desc.i = getelementptr %struct.pl330_thread, ptr %38, i32 %36, i32 4, i32 %40, i32 2
  %41 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc.i, align 4
  store ptr null, ptr %desc.i, align 4
  %43 = ptrtoint ptr %req_running.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %req_running.i, align 4
  tail call fastcc void @_start(ptr noundef %arrayidx109.i) #10
  %rqd.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %42, i32 0, i32 10
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rqd.i, ptr noundef %45, ptr noundef %req_done.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end113.i.for.inc.i_crit_edge

if.end113.i.for.inc.i_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rqd.i, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %rqd.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %req_done.i, ptr %rqd.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %42, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %rqd.i, ptr %45, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.end113.i.for.inc.i_crit_edge, %if.end106.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0245.i, %for.body.i.for.inc.i_crit_edge ], [ 1, %if.end106.i.for.inc.i_crit_edge ], [ 1, %if.end113.i.for.inc.i_crit_edge ], [ 1, %if.end.i.i.i ]
  %inc123.i = add nuw nsw i32 %ev.0246.i, 1
  %50 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load82.i = load i8, ptr %num_events.i, align 4
  %bf.lshr83.i = lshr i8 %bf.load82.i, 2
  %bf.cast84.i = zext i8 %bf.lshr83.i to i32
  %cmp85.i = icmp ult i32 %inc123.i, %bf.cast84.i
  br i1 %cmp85.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.while.cond124.preheader.i_crit_edge

for.inc.i.while.cond124.preheader.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond124.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.body128.i:                                  ; preds = %dma_pl330_rqcb.exit.i.while.body128.i_crit_edge, %while.cond124.preheader.i.while.body128.i_crit_edge
  %51 = phi ptr [ %64, %dma_pl330_rqcb.exit.i.while.body128.i_crit_edge ], [ %31, %while.cond124.preheader.i.while.body128.i_crit_edge ]
  %flags.0249.i = phi i32 [ %call143.i, %dma_pl330_rqcb.exit.i.while.body128.i_crit_edge ], [ %call2.i, %while.cond124.preheader.i.while.body128.i_crit_edge ]
  %add.ptr131.i = getelementptr i8, ptr %51, i32 -168
  %call.i.i229.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %51) #10
  br i1 %call.i.i229.i, label %if.end.i.i230.i, label %while.body128.i.list_del.exit.i_crit_edge

while.body128.i.list_del.exit.i_crit_edge:        ; preds = %while.body128.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i230.i:                                  ; preds = %while.body128.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i230.i, %while.body128.i.list_del.exit.i_crit_edge
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  %prev.i231.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i231.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i231.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.0249.i) #10
  %tobool.not.i.i = icmp eq ptr %add.ptr131.i, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.dma_pl330_rqcb.exit.i_crit_edge, label %if.end.i.i

list_del.exit.i.dma_pl330_rqcb.exit.i_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit.i

if.end.i.i:                                       ; preds = %list_del.exit.i
  %pchan.i.i = getelementptr i8, ptr %51, i32 -12
  %60 = ptrtoint ptr %pchan.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pchan.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.dma_pl330_rqcb.exit.i_crit_edge, label %do.body4.i.i

if.end.i.i.dma_pl330_rqcb.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit.i

do.body4.i.i:                                     ; preds = %if.end.i.i
  %lock.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %61, i32 0, i32 6
  %call5.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %status.i.i = getelementptr i8, ptr %51, i32 -24
  %62 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %status.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call5.i.i) #10
  %state.i.i.i = getelementptr inbounds %struct.tasklet_struct, ptr %61, i32 0, i32 1
  %call.i.i232.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i232.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i232.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body4.i.i.dma_pl330_rqcb.exit.i_crit_edge

do.body4.i.i.dma_pl330_rqcb.exit.i_crit_edge:     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit.i

if.then.i.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull %61) #10
  br label %dma_pl330_rqcb.exit.i

dma_pl330_rqcb.exit.i:                            ; preds = %if.then.i.i.i, %do.body4.i.i.dma_pl330_rqcb.exit.i_crit_edge, %if.end.i.i.dma_pl330_rqcb.exit.i_crit_edge, %list_del.exit.i.dma_pl330_rqcb.exit.i_crit_edge
  %call143.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %63 = ptrtoint ptr %req_done125.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %req_done125.i, align 4
  %cmp.i.not.i = icmp eq ptr %64, %req_done125.i
  br i1 %cmp.i.not.i, label %dma_pl330_rqcb.exit.i.updt_exit.i_crit_edge, label %dma_pl330_rqcb.exit.i.while.body128.i_crit_edge

dma_pl330_rqcb.exit.i.while.body128.i_crit_edge:  ; preds = %dma_pl330_rqcb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body128.i

dma_pl330_rqcb.exit.i.updt_exit.i_crit_edge:      ; preds = %dma_pl330_rqcb.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %updt_exit.i

updt_exit.i:                                      ; preds = %dma_pl330_rqcb.exit.i.updt_exit.i_crit_edge, %while.cond124.preheader.i.updt_exit.i_crit_edge, %if.then72.i
  %ret.2.i = phi i32 [ 1, %if.then72.i ], [ %ret.0.lcssa.i, %while.cond124.preheader.i.updt_exit.i_crit_edge ], [ %ret.0.lcssa.i, %dma_pl330_rqcb.exit.i.updt_exit.i_crit_edge ]
  %flags.1.i = phi i32 [ %call2.i, %if.then72.i ], [ %call2.i, %while.cond124.preheader.i.updt_exit.i_crit_edge ], [ %call143.i, %dma_pl330_rqcb.exit.i.updt_exit.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.1.i) #10
  %65 = ptrtoint ptr %dmac_tbd17.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dmac_tbd17.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool152.not.i = icmp eq i8 %66, 0
  br i1 %tobool152.not.i, label %lor.lhs.false.i, label %updt_exit.i.if.then163.i_crit_edge

updt_exit.i.if.then163.i_crit_edge:               ; preds = %updt_exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then163.i

lor.lhs.false.i:                                  ; preds = %updt_exit.i
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %6, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool156.not.i = icmp eq i8 %68, 0
  br i1 %tobool156.not.i, label %lor.lhs.false158.i, label %lor.lhs.false.i.if.then163.i_crit_edge

lor.lhs.false.i.if.then163.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then163.i

lor.lhs.false158.i:                               ; preds = %lor.lhs.false.i
  %69 = ptrtoint ptr %reset_chan.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %reset_chan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool162.not.i = icmp eq i8 %70, 0
  br i1 %tobool162.not.i, label %pl330_update.exit, label %lor.lhs.false158.i.if.then163.i_crit_edge

lor.lhs.false158.i.if.then163.i_crit_edge:        ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then163.i

if.then163.i:                                     ; preds = %lor.lhs.false158.i.if.then163.i_crit_edge, %lor.lhs.false.i.if.then163.i_crit_edge, %updt_exit.i.if.then163.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 12, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i233.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i233.i, label %if.then.i.i, label %if.then163.i.pl330_update.exit.thread_crit_edge

if.then163.i.pl330_update.exit.thread_crit_edge:  ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_update.exit.thread

if.then.i.i:                                      ; preds = %if.then163.i
  call void @__sanitizer_cov_trace_pc() #12
  %tasks.i = getelementptr inbounds %struct.pl330_dmac, ptr %data, i32 0, i32 12
  tail call void @__tasklet_schedule(ptr noundef %tasks.i) #10
  br label %pl330_update.exit.thread

pl330_update.exit:                                ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool.not = icmp ne i32 %ret.2.i, 0
  %spec.select = zext i1 %tobool.not to i32
  br label %pl330_update.exit.thread

pl330_update.exit.thread:                         ; preds = %pl330_update.exit, %if.then.i.i, %if.then163.i.pl330_update.exit.thread_crit_edge
  %71 = phi i32 [ 1, %if.then163.i.pl330_update.exit.thread_crit_edge ], [ 1, %if.then.i.i ], [ %spec.select, %pl330_update.exit ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl330_add(ptr noundef %pl330) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcfg = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5
  %0 = ptrtoint ptr %pcfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcfg, align 4
  %and = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 267056, i32 %and)
  %cmp.not = icmp eq i32 %and, 267056
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %pl330, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3604
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !181
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %and.i = and i32 %7, 7
  %data_bus_width.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %data_bus_width.i, align 4
  %bf.shl.i = shl i32 33554432, %and.i
  %bf.clear.i = and i32 %bf.load.i, 4194303
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %data_bus_width.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !181
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  %11 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load11.i = load i32, ptr %data_bus_width.i, align 4
  %12 = lshr i32 %10, 9
  %add.i = and i32 %12, 2095104
  %bf.shl13.i = add nuw nsw i32 %add.i, 2048
  %bf.clear14.i = and i32 %bf.load11.i, -4192257
  %bf.set15.i = or i32 %bf.shl13.i, %bf.clear14.i
  store i32 %bf.set15.i, ptr %data_bus_width.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %5, i32 3584
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %14 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load26.i = load i32, ptr %data_bus_width.i, align 4
  %15 = lshr i32 %13, 21
  %add24.i = and i32 %15, 896
  %bf.shl28.i = add nuw nsw i32 %add24.i, 128
  %bf.clear29.i = and i32 %bf.load26.i, -1921
  %bf.set30.i = or i32 %bf.clear29.i, %bf.shl28.i
  store i32 %bf.set30.i, ptr %data_bus_width.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !181
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %and37.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool.not.i = icmp eq i32 %and37.i, 0
  %18 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load56.i = load i32, ptr %data_bus_width.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = lshr i32 %17, 11
  %add40.i = and i32 %19, 62
  %bf.shl44.i = add nuw nsw i32 %add40.i, 2
  %bf.clear45.i = and i32 %bf.load56.i, -127
  %bf.set46.i = or i32 %bf.shl44.i, %bf.clear45.i
  %20 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.set46.i, ptr %data_bus_width.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %5, i32 3600
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #10, !srcloc !181
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %peri_ns.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %peri_ns.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %peri_ns.i, align 4
  br label %read_dmac_config.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear57.i = and i32 %bf.load56.i, -127
  %24 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.clear57.i, ptr %data_bus_width.i, align 4
  br label %read_dmac_config.exit

read_dmac_config.exit:                            ; preds = %if.else.i, %if.then.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %mode71.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %mode71.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode71.i, align 4
  %and72.i = and i32 %27, -2
  %28 = lshr i32 %25, 26
  %.lobit.i = and i32 %28, 1
  %and72.sink.i = or i32 %and72.i, %.lobit.i
  store i32 %and72.sink.i, ptr %mode71.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  %num_events.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 4
  %30 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load84.i = load i8, ptr %num_events.i, align 4
  %sh.diff.i = lshr i32 %29, 7
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %31 = and i8 %tr.sh.diff.i, 124
  %bf.shl86.i = add nuw i8 %31, 4
  %bf.clear87.i = and i8 %bf.load84.i, 3
  %bf.set88.i = or i8 %bf.shl86.i, %bf.clear87.i
  store i8 %bf.set88.i, ptr %num_events.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %5, i32 3596
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91.i) #10, !srcloc !181
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %irq_ns.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 5
  %34 = ptrtoint ptr %irq_ns.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %irq_ns.i, align 4
  %35 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load)
  %cmp4 = icmp ult i8 %bf.load, 4
  br i1 %cmp4, label %do.end8, label %do.body12

do.end8:                                          ; preds = %read_dmac_config.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.dma_device, ptr %pl330, i32 0, i32 15
  %36 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 1957) #13
  br label %cleanup

do.body12:                                        ; preds = %read_dmac_config.exit
  %lock = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @pl330_add.__key, i16 noundef signext 3) #10
  %req_done = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 15
  %38 = ptrtoint ptr %req_done to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %req_done, ptr %req_done, align 4
  %prev.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 15, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %req_done, ptr %prev.i, align 4
  %mcbufsz = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 3
  %40 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mcbufsz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.then15, label %do.body12.if.end17_crit_edge

do.body12.if.end17_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 512, ptr %mcbufsz, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body12.if.end17_crit_edge
  %43 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load2058 = load i8, ptr %num_events.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load2058)
  %cmp2361.not = icmp ult i8 %bf.load2058, 4
  br i1 %cmp2361.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pl330_dmac, ptr %pl330, i32 0, i32 7, i32 %i.062
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %45 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load20 = load i8, ptr %num_events.i, align 4
  %bf.lshr21 = lshr i8 %bf.load20, 2
  %bf.cast22 = zext i8 %bf.lshr21 to i32
  %cmp23 = icmp ult i32 %inc, %bf.cast22
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %46 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i52 = load i32, ptr %data_bus_width.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i52, 7
  %bf.clear.i53 = and i32 %bf.lshr.i, 15
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %pl330, i32 0, i32 15
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mcbufsz, align 4
  %mul.i = mul i32 %bf.clear.i53, %50
  %mcode_bus.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %48, i32 noundef %mul.i, ptr noundef %mcode_bus.i, i32 noundef 3264, i32 noundef 512) #10
  %mcode_cpu.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 9
  %51 = ptrtoint ptr %mcode_cpu.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %mcode_cpu.i, align 4
  %tobool.not.i54 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i54, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 1923) #13
  br label %do.end29

if.end.i:                                         ; preds = %for.end
  %54 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load.i.i = load i32, ptr %data_bus_width.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 7
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 15
  %55 = mul nuw nsw i32 %bf.clear.i.i, 48
  %56 = add nuw nsw i32 %55, 48
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #14
  %channels.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 10
  %57 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i.i.i, ptr %channels.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end9.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i)
  %cmp34.not.i.i = icmp eq i32 %bf.clear.i.i, 0
  br i1 %cmp34.not.i.i, label %for.cond.preheader.i.i.if.end32_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end32_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %58 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channels.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i
  %conv.i.i = trunc i32 %i.035.i.i to i8
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 4
  %dmac.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 3
  %61 = ptrtoint ptr %dmac.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %pl330, ptr %dmac.i.i, align 4
  %62 = ptrtoint ptr %mcode_cpu.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mcode_cpu.i, align 4
  %64 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mcbufsz, align 4
  %mul.i.i.i = mul i32 %65, %i.035.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 %mul.i.i.i
  %req.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4
  %mc_cpu.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4, i32 0, i32 1
  %66 = ptrtoint ptr %mc_cpu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i.i.i, ptr %mc_cpu.i.i.i, align 4
  %67 = ptrtoint ptr %mcode_bus.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mcode_bus.i, align 4
  %69 = load i32, ptr %mcbufsz, align 4
  %mul4.i.i.i = mul i32 %69, %i.035.i.i
  %add.i.i.i = add i32 %mul4.i.i.i, %68
  %70 = ptrtoint ptr %req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.i.i.i, ptr %req.i.i.i, align 4
  %desc.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %desc.i.i.i, align 4
  %72 = load i32, ptr %mcbufsz, align 4
  %div45.i.i.i = lshr i32 %72, 1
  %add.ptr13.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %div45.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4, i32 1
  %mc_cpu16.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4, i32 1, i32 1
  %73 = ptrtoint ptr %mc_cpu16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr13.i.i.i, ptr %mc_cpu16.i.i.i, align 4
  %74 = load i32, ptr %mcbufsz, align 4
  %div2146.i.i.i = lshr i32 %74, 1
  %add22.i.i.i = add i32 %div2146.i.i.i, %add.i.i.i
  %75 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add22.i.i.i, ptr %arrayidx15.i.i.i, align 4
  %desc28.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 4, i32 1, i32 2
  %76 = ptrtoint ptr %desc28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %desc28.i.i.i, align 4
  %req_running.i.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 6
  %77 = ptrtoint ptr %req_running.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %req_running.i.i.i, align 4
  %free.i.i = getelementptr %struct.pl330_thread, ptr %59, i32 %i.035.i.i, i32 2
  %78 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %free.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %bf.clear.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end32_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.if.end32_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 1930) #13
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  %83 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mcbufsz, align 4
  %mul15.i = mul i32 %84, %bf.clear.i53
  %85 = ptrtoint ptr %mcode_cpu.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mcode_cpu.i, align 4
  %87 = ptrtoint ptr %mcode_bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mcode_bus.i, align 4
  tail call void @dma_free_attrs(ptr noundef %82, i32 noundef %mul15.i, ptr noundef %86, i32 noundef %88, i32 noundef 512) #10
  br label %do.end29

do.end29:                                         ; preds = %do.end9.i, %do.end.i
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end32:                                         ; preds = %for.body.i.i.if.end32_crit_edge, %for.cond.preheader.i.i.if.end32_crit_edge
  %91 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %channels.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.pl330_thread, ptr %92, i32 %bf.clear.i.i
  %conv5.i.i = trunc i32 %bf.clear.i.i to i8
  %93 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv5.i.i, ptr %arrayidx4.i.i, align 4
  %dmac7.i.i = getelementptr %struct.pl330_thread, ptr %92, i32 %bf.clear.i.i, i32 3
  %94 = ptrtoint ptr %dmac7.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %pl330, ptr %dmac7.i.i, align 4
  %free8.i.i = getelementptr %struct.pl330_thread, ptr %92, i32 %bf.clear.i.i, i32 2
  %95 = ptrtoint ptr %free8.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %free8.i.i, align 4
  %manager.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 11
  %96 = ptrtoint ptr %manager.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx4.i.i, ptr %manager.i.i, align 4
  %tasks = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 12
  tail call void @tasklet_setup(ptr noundef %tasks, ptr noundef nonnull @pl330_dotask) #10
  %state = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 14
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end29, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -12, %do.end29 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_desc(ptr noundef %pool, ptr noundef %lock, i32 noundef %flg, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 176) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !199

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %or.i = or i32 %flg, 256
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #14
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %do.body1

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %if.end7.i.i
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp626.not = icmp eq i32 %count, 0
  br i1 %cmp626.not, label %do.body1.for.end_crit_edge, label %for.body.lr.ph

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pool, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dma_pl330_desc, ptr %call8.i.i, i32 %i.027
  %swap.i = getelementptr %struct.dma_pl330_desc, ptr %call8.i.i, i32 %i.027, i32 3, i32 7
  %3 = ptrtoint ptr %swap.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %swap.i, align 8
  %scctl.i = getelementptr %struct.dma_pl330_desc, ptr %call8.i.i, i32 %i.027, i32 3, i32 6
  %4 = ptrtoint ptr %scctl.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %scctl.i, align 4
  %dcctl.i = getelementptr %struct.dma_pl330_desc, ptr %call8.i.i, i32 %i.027, i32 3, i32 5
  %5 = ptrtoint ptr %dcctl.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dcctl.i, align 16
  %tx_submit.i = getelementptr %struct.dma_pl330_desc, ptr %call8.i.i, i32 %i.027, i32 1, i32 4
  %6 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pl330_tx_submit, ptr %tx_submit.i, align 8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %arrayidx, align 16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %10, ptr noundef %pool) #10
  br i1 %call.i.i, label %if.end.i.i19, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i19:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %prev.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pool, ptr %arrayidx, align 16
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i19, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ 0, %if.end7.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %lock = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %completed_cookie.i, align 4
  %cyclic = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 14
  %4 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cyclic, align 4
  %state.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %entry.pl330_request_channel.exit.thread_crit_edge, label %if.end.i

entry.pl330_request_channel.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_request_channel.exit.thread

if.end.i:                                         ; preds = %entry
  %num_chan.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %num_chan.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 7
  %bf.clear.i = and i32 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %cmp143.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %cmp143.not.i, label %if.end.i.pl330_request_channel.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.i.pl330_request_channel.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_request_channel.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %channels.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 10
  %irq_ns.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end14.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels.i, align 4
  %free.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 2
  %10 = ptrtoint ptr %free.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %free.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i21 = icmp eq i8 %11, 0
  br i1 %tobool.not.i21, label %for.body.i.if.end14.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dmac.i.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 3
  %12 = ptrtoint ptr %dmac.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmac.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.then3.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then3.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %irq_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_ns.i.i, align 4
  %shl.i.i = shl nuw i32 1, %i.044.i
  %and.i33.i = and i32 %17, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %tobool.i34.not.i = icmp eq i32 %and.i33.i, 0
  br i1 %tobool.i34.not.i, label %lor.lhs.false.i.if.end14.i_crit_edge, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3.i

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %land.lhs.true.i.if.then3.i_crit_edge
  %num_events.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %13, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %num_events.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i = load i8, ptr %num_events.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load.i.i)
  %cmp13.not.i.i = icmp ult i8 %bf.load.i.i, 4
  br i1 %cmp13.not.i.i, label %if.then3.i._alloc_event.exit.thread.i_crit_edge, label %for.body.preheader.i.i

if.then3.i._alloc_event.exit.thread.i_crit_edge:  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_alloc_event.exit.thread.i

for.body.preheader.i.i:                           ; preds = %if.then3.i
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 2
  %umax.i.i = zext i8 %bf.lshr.i.i to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %ev.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.pl330_dmac, ptr %13, i32 0, i32 7, i32 %ev.014.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp1.i.i = icmp eq i32 %20, -1
  br i1 %cmp1.i.i, label %pl330_request_channel.exit, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %ev.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i._alloc_event.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i._alloc_event.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_alloc_event.exit.thread.i

_alloc_event.exit.thread.i:                       ; preds = %for.inc.i.i._alloc_event.exit.thread.i_crit_edge, %if.then3.i._alloc_event.exit.thread.i_crit_edge
  %ev37.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 1
  %21 = ptrtoint ptr %ev37.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %ev37.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %_alloc_event.exit.thread.i, %lor.lhs.false.i.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %bf.clear.i
  br i1 %exitcond.not.i, label %if.end14.i.pl330_request_channel.exit.thread_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end14.i.pl330_request_channel.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_request_channel.exit.thread

pl330_request_channel.exit.thread:                ; preds = %if.end14.i.pl330_request_channel.exit.thread_crit_edge, %if.end.i.pl330_request_channel.exit.thread_crit_edge, %entry.pl330_request_channel.exit.thread_crit_edge
  %thread24 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %22 = ptrtoint ptr %thread24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %thread24, align 4
  br label %cleanup

pl330_request_channel.exit:                       ; preds = %for.body.i.i
  %arrayidx.le.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i
  %23 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.le.i, align 4
  %conv.i.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i.i, ptr %arrayidx.i.i, align 4
  %ev.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 1
  %26 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ev.014.i.i, ptr %ev.i, align 4
  %27 = ptrtoint ptr %free.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %free.i, align 4
  %lstenq.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 5
  %28 = ptrtoint ptr %lstenq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %lstenq.i, align 4
  %desc.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %desc.i, align 4
  %desc12.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 4, i32 1, i32 2
  %30 = ptrtoint ptr %desc12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %desc12.i, align 4
  %req_running.i = getelementptr %struct.pl330_thread, ptr %9, i32 %i.044.i, i32 6
  %31 = ptrtoint ptr %req_running.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %req_running.i, align 4
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %32 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.le.i, ptr %thread, align 4
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %pl330_request_channel.exit.cleanup_crit_edge, label %if.end

pl330_request_channel.exit.cleanup_crit_edge:     ; preds = %pl330_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pl330_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tasklet_setup(ptr noundef %retval.0.i, ptr noundef nonnull @pl330_tasklet) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pl330_request_channel.exit.cleanup_crit_edge, %pl330_request_channel.exit.thread
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %pl330_request_channel.exit.thread ], [ -12, %pl330_request_channel.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl330_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  tail call void @tasklet_kill(ptr noundef %retval.0.i) #10
  %2 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmac, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %lock = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 4
  tail call fastcc void @pl330_release_channel(ptr noundef %7)
  %8 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %thread, align 4
  %cyclic = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 14
  %9 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cyclic, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %work_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmac, align 4
  %13 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not.i = icmp eq ptr %14, %work_list
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %12, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.pl330_dmac, ptr %12, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %desc_pool, ptr %18, align 4
  store ptr %18, ptr %prev.i, align 4
  %22 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %work_list, ptr %work_list, align 4
  store ptr %work_list, ptr %prev2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  %23 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmac, align 4
  %dev13 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev13, align 4
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i29, ptr %last_busy.i, align 8
  %28 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmac, align 4
  %dev16 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev16, align 4
  %call.i30 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #10
  %dir.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 12
  %32 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 3
  br i1 %cmp.not.i, label %if.end.pl330_unprep_slave_fifo.exit_crit_edge, label %if.then.i31

if.end.pl330_unprep_slave_fifo.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_unprep_slave_fifo.exit

if.then.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %fifo_dma.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 11
  %38 = ptrtoint ptr %fifo_dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fifo_dma.i, align 4
  %burst_sz.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %40 = ptrtoint ptr %burst_sz.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %burst_sz.i, align 4
  %shl.i = shl nuw i32 1, %41
  tail call void @dma_unmap_resource(ptr noundef %37, i32 noundef %39, i32 noundef %shl.i, i32 noundef %33, i32 noundef 0) #10
  br label %pl330_unprep_slave_fifo.exit

pl330_unprep_slave_fifo.exit:                     ; preds = %if.then.i31, %if.end.pl330_unprep_slave_fifo.exit_crit_edge
  %42 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %dir.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl330_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !199

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %call.i = tail call fastcc ptr @pl330_get_desc(ptr noundef nonnull %retval.0.i) #10
  %tobool.not.i85 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i85, label %__pl330_prep_dma_memcpy.exit.thread, label %if.end8

__pl330_prep_dma_memcpy.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmac, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 2631) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %px.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 2
  %bytes.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %len, ptr %bytes.i.i, align 4
  %dst_addr.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %dst_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dst, ptr %dst_addr.i.i, align 4
  %8 = ptrtoint ptr %px.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %src, ptr %px.i, align 4
  %rqcfg = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %rqcfg to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %rqcfg, align 4
  %bf.set12 = or i8 %bf.load, -64
  store i8 %bf.set12, ptr %rqcfg, align 4
  %rqtype = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %rqtype to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rqtype, align 4
  %data_bus_width = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %data_bus_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load13 = load i32, ptr %data_bus_width, align 4
  %div84 = lshr i32 %bf.load13, 25
  %or = or i32 %src, %dst
  %or14 = or i32 %or, %len
  %sub87 = add nsw i32 %div84, -1
  %and88 = and i32 %sub87, %or14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool15.not89 = icmp eq i32 %and88, 0
  br i1 %tobool15.not89, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end8.while.body_crit_edge
  %burst.090 = phi i32 [ %div16, %while.body.while.body_crit_edge ], [ %div84, %if.end8.while.body_crit_edge ]
  %div16 = sdiv i32 %burst.090, 2
  %sub = add nsw i32 %div16, -1
  %and = and i32 %sub, %or14
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end8.while.end_crit_edge
  %burst.0.lcssa = phi i32 [ %div84, %if.end8.while.end_crit_edge ], [ %div16, %while.body.while.end_crit_edge ]
  %brst_size = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %brst_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load18 = load i8, ptr %brst_size, align 4
  %bf.clear19 = and i8 %bf.load18, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %burst.0.lcssa)
  %cmp.not91 = icmp eq i32 %burst.0.lcssa, 1
  br i1 %cmp.not91, label %while.end.while.end35_crit_edge, label %while.end.while.body26_crit_edge

while.end.while.body26_crit_edge:                 ; preds = %while.end
  br label %while.body26

while.end.while.end35_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end35

while.body26:                                     ; preds = %while.body26.while.body26_crit_edge, %while.end.while.body26_crit_edge
  %storemerge92 = phi i8 [ %bf.set34, %while.body26.while.body26_crit_edge ], [ %bf.clear19, %while.end.while.body26_crit_edge ]
  %inc = add i8 %storemerge92, 1
  %bf.value = and i8 %inc, 7
  %bf.clear33 = and i8 %storemerge92, -8
  %bf.set34 = or i8 %bf.value, %bf.clear33
  %bf.cast = zext i8 %bf.value to i32
  %shl = shl nuw nsw i32 1, %bf.cast
  %cmp.not = icmp eq i32 %burst.0.lcssa, %shl
  br i1 %cmp.not, label %while.body26.while.end35_crit_edge, label %while.body26.while.body26_crit_edge

while.body26.while.body26_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body26

while.body26.while.end35_crit_edge:               ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end35

while.end35:                                      ; preds = %while.body26.while.end35_crit_edge, %while.end.while.end35_crit_edge
  %storemerge.lcssa = phi i8 [ %bf.clear19, %while.end.while.end35_crit_edge ], [ %bf.set34, %while.body26.while.end35_crit_edge ]
  %bf.clear25.lcssa = phi i8 [ 0, %while.end.while.end35_crit_edge ], [ %bf.value, %while.body26.while.end35_crit_edge ]
  %bf.cast.lcssa = phi i32 [ 0, %while.end.while.end35_crit_edge ], [ %bf.cast, %while.body26.while.end35_crit_edge ]
  %13 = ptrtoint ptr %brst_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %storemerge.lcssa, ptr %brst_size, align 4
  %pchan.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pchan.i, align 4
  %dmac.i86 = getelementptr inbounds %struct.dma_pl330_chan, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dmac.i86 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmac.i86, align 4
  %data_bus_width.i = getelementptr inbounds %struct.pl330_dmac, ptr %17, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %data_bus_width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %data_bus_width.i, align 4
  %div1.i = lshr i32 %bf.load.i, 25
  %bf.lshr3.i = lshr i32 %bf.load.i, 11
  %19 = trunc i32 %bf.lshr3.i to i16
  %div8.lhs.trunc.i = and i16 %19, 2047
  %20 = trunc i32 %bf.load.i to i16
  %21 = lshr i16 %20, 7
  %div8.rhs.trunc.i = and i16 %21, 15
  %div82.i = udiv i16 %div8.lhs.trunc.i, %div8.rhs.trunc.i
  %div8.zext.i = zext i16 %div82.i to i32
  %mul.i = mul nuw nsw i32 %div1.i, %div8.zext.i
  %shr.i = lshr i32 %mul.i, %bf.cast.lcssa
  %22 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 16) #10
  %23 = trunc i32 %22 to i8
  %bf.shl = shl nuw i8 %23, 3
  %bf.set41 = or i8 %bf.shl, %bf.clear25.lcssa
  %24 = ptrtoint ptr %brst_size to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set41, ptr %brst_size, align 4
  %mul = shl nsw i32 %burst.0.lcssa, 3
  %25 = ptrtoint ptr %data_bus_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load45 = load i32, ptr %data_bus_width, align 4
  %bf.lshr46 = lshr i32 %bf.load45, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %bf.lshr46)
  %cmp47 = icmp slt i32 %mul, %bf.lshr46
  br i1 %cmp47, label %if.then48, label %while.end35.if.end54_crit_edge

while.end35.if.end54_crit_edge:                   ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then48:                                        ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set53 = or i8 %bf.clear25.lcssa, 8
  %26 = ptrtoint ptr %brst_size to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set53, ptr %brst_size, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %while.end35.if.end54_crit_edge
  %bytes_requested = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %len, ptr %bytes_requested, align 4
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 1
  %flags55 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %flags, ptr %flags55, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %__pl330_prep_dma_memcpy.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %txd, %if.end54 ], [ null, %entry.cleanup_crit_edge ], [ null, %__pl330_prep_dma_memcpy.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl330_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %div = udiv i32 %len, %period_len
  %2 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %len, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup73_crit_edge

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

if.end:                                           ; preds = %entry
  %3 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 2685) #13
  br label %cleanup73

if.end4:                                          ; preds = %if.end
  %dir.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 12
  %7 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 3
  br i1 %cmp.not.i.i, label %if.end4.pl330_unprep_slave_fifo.exit.i_crit_edge, label %if.then.i.i

if.end4.pl330_unprep_slave_fifo.exit.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_unprep_slave_fifo.exit.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  %fifo_dma.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 11
  %13 = ptrtoint ptr %fifo_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_dma.i.i, align 4
  %burst_sz.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %15 = ptrtoint ptr %burst_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %burst_sz.i.i, align 4
  %shl.i.i = shl nuw i32 1, %16
  tail call void @dma_unmap_resource(ptr noundef %12, i32 noundef %14, i32 noundef %shl.i.i, i32 noundef %8, i32 noundef 0) #10
  br label %pl330_unprep_slave_fifo.exit.i

pl330_unprep_slave_fifo.exit.i:                   ; preds = %if.then.i.i, %if.end4.pl330_unprep_slave_fifo.exit.i_crit_edge
  %17 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %dir.i.i, align 4
  %18 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then10.i
  ]

pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge: ; preds = %pl330_unprep_slave_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_config_write.exit

if.then.i:                                        ; preds = %pl330_unprep_slave_fifo.exit.i
  %dst_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i126 = icmp eq i32 %20, 0
  br i1 %tobool.not.i126, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %fifo_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fifo_addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %dst_addr_width.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 4
  %22 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #10, !range !200
  %burst_sz.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %25 = ptrtoint ptr %burst_sz.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %burst_sz.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %dst_maxburst.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 6
  br label %if.end27.sink.split.i

if.then10.i:                                      ; preds = %pl330_unprep_slave_fifo.exit.i
  %src_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 1
  %26 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not.i = icmp eq i32 %27, 0
  br i1 %tobool11.not.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then12.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_addr14.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 10
  %28 = ptrtoint ptr %fifo_addr14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fifo_addr14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end15.i_crit_edge
  %src_addr_width.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 3
  %29 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not.i = icmp eq i32 %30, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then17.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call i32 @llvm.cttz.i32(i32 %30, i1 true) #10, !range !200
  %burst_sz20.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %32 = ptrtoint ptr %burst_sz20.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %burst_sz20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end21.i_crit_edge
  %src_maxburst.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 5
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.end21.i, %if.end7.i
  %src_maxburst.sink.i = phi ptr [ %src_maxburst.i, %if.end21.i ], [ %dst_maxburst.i, %if.end7.i ]
  %33 = ptrtoint ptr %src_maxburst.sink.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_maxburst.sink.i, align 4
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 1) #10
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 16) #10
  %burst_len25.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 9
  %37 = ptrtoint ptr %burst_len25.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %burst_len25.i, align 4
  br label %pl330_config_write.exit

pl330_config_write.exit:                          ; preds = %if.end27.sink.split.i, %pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge
  %call6 = tail call fastcc zeroext i1 @pl330_prep_slave_fifo(ptr noundef %retval.0.i, i32 noundef %direction)
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %len)
  %cmp9132.not = icmp ule i32 %period_len, %len
  %38 = and i1 %call6, %cmp9132.not
  br i1 %38, label %for.body.lr.ph, label %pl330_config_write.exit.cleanup73_crit_edge

pl330_config_write.exit.cleanup73_crit_edge:      ; preds = %pl330_config_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

for.body.lr.ph:                                   ; preds = %pl330_config_write.exit
  %fifo_dma52 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 11
  %burst_sz = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %burst_len = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 9
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %for.body.lr.ph
  %dma_addr.addr.0137 = phi i32 [ %dma_addr, %for.body.lr.ph ], [ %add, %if.end67.for.body_crit_edge ]
  %src.0136 = phi i32 [ -1, %for.body.lr.ph ], [ %src.1, %if.end67.for.body_crit_edge ]
  %dst.0135 = phi i32 [ -1, %for.body.lr.ph ], [ %dst.1, %if.end67.for.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end67.for.body_crit_edge ]
  %first.0133 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %if.end67.for.body_crit_edge ]
  %call10 = tail call fastcc ptr @pl330_get_desc(ptr noundef %retval.0.i)
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.then11, label %if.end38

if.then11:                                        ; preds = %for.body
  %39 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmac, align 4
  %dev17 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.75, i32 noundef 2700) #13
  %tobool18.not = icmp eq ptr %first.0133, null
  br i1 %tobool18.not, label %if.then11.cleanup73_crit_edge, label %do.body22

if.then11.cleanup73_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

do.body22:                                        ; preds = %if.then11
  %pool_lock = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 2
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #10
  %43 = ptrtoint ptr %first.0133 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %first.0133, align 4
  %cmp.i.not139 = icmp eq ptr %44, %first.0133
  br i1 %cmp.i.not139, label %do.body22.while.end_crit_edge, label %while.body.lr.ph

do.body22.while.end_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body22
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1
  %prev.i2.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %45 = phi ptr [ %44, %while.body.lr.ph ], [ %59, %list_move_tail.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %52 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %45, ptr noundef %53, ptr noundef %desc_pool) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %45, ptr %prev.i2.i, align 4
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %desc_pool, ptr %45, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %45, ptr %53, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %58 = ptrtoint ptr %first.0133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %first.0133, align 4
  %cmp.i.not = icmp eq ptr %59, %first.0133
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %do.body22.while.end_crit_edge
  %desc_pool36 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1
  tail call fastcc void @list_move_tail(ptr noundef nonnull %first.0133, ptr noundef %desc_pool36)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call25) #10
  br label %cleanup73

if.end38:                                         ; preds = %for.body
  %60 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %direction, label %if.end38.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb43
  ]

if.end38.sw.epilog_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %rqcfg = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 3
  %61 = ptrtoint ptr %rqcfg to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %rqcfg, align 4
  %bf.set = and i8 %bf.load, 63
  %bf.clear41 = or i8 %bf.set, 64
  store i8 %bf.clear41, ptr %rqcfg, align 4
  %62 = ptrtoint ptr %fifo_dma52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifo_dma52, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %rqcfg44 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 3
  %64 = ptrtoint ptr %rqcfg44 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load45 = load i8, ptr %rqcfg44, align 4
  %bf.clear50 = and i8 %bf.load45, 63
  %bf.set51 = or i8 %bf.clear50, -128
  store i8 %bf.set51, ptr %rqcfg44, align 4
  %65 = ptrtoint ptr %fifo_dma52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fifo_dma52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb, %if.end38.sw.epilog_crit_edge
  %dst.1 = phi i32 [ %dst.0135, %if.end38.sw.epilog_crit_edge ], [ %dma_addr.addr.0137, %sw.bb43 ], [ %63, %sw.bb ]
  %src.1 = phi i32 [ %src.0136, %if.end38.sw.epilog_crit_edge ], [ %66, %sw.bb43 ], [ %dma_addr.addr.0137, %sw.bb ]
  %rqtype = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 8
  %67 = ptrtoint ptr %rqtype to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %direction, ptr %rqtype, align 4
  %68 = ptrtoint ptr %burst_sz to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %burst_sz, align 4
  %brst_size = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 3, i32 4
  %70 = trunc i32 %69 to i8
  %71 = ptrtoint ptr %brst_size to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load54 = load i8, ptr %brst_size, align 4
  %bf.value = and i8 %70, 7
  %bf.clear55 = and i8 %bf.load54, -8
  %bf.set56 = or i8 %bf.clear55, %bf.value
  store i8 %bf.set56, ptr %brst_size, align 4
  %72 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %burst_len, align 4
  %74 = trunc i32 %73 to i8
  %bf.shl = shl i8 %74, 3
  %bf.set61 = or i8 %bf.shl, %bf.value
  store i8 %bf.set61, ptr %brst_size, align 4
  %bytes_requested = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 5
  %75 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %period_len, ptr %bytes_requested, align 4
  %px = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2
  %bytes.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2, i32 2
  %76 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %period_len, ptr %bytes.i, align 4
  %dst_addr.i127 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2, i32 1
  %77 = ptrtoint ptr %dst_addr.i127 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %dst.1, ptr %dst_addr.i127, align 4
  %78 = ptrtoint ptr %px to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %src.1, ptr %px, align 4
  %tobool63.not = icmp eq ptr %first.0133, null
  br i1 %tobool63.not, label %sw.epilog.if.end67_crit_edge, label %if.else

sw.epilog.if.end67_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.else:                                          ; preds = %sw.epilog
  %prev.i = getelementptr inbounds %struct.list_head, ptr %first.0133, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i, align 4
  %call.i.i128 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call10, ptr noundef %80, ptr noundef nonnull %first.0133) #10
  br i1 %call.i.i128, label %if.end.i.i129, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end.i.i129:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call10, ptr %prev.i, align 4
  %82 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %first.0133, ptr %call10, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call10, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call10, ptr %80, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end.i.i129, %if.else.if.end67_crit_edge, %sw.epilog.if.end67_crit_edge
  %first.1 = phi ptr [ %call10, %sw.epilog.if.end67_crit_edge ], [ %first.0133, %if.else.if.end67_crit_edge ], [ %first.0133, %if.end.i.i129 ]
  %add = add i32 %dma_addr.addr.0137, %period_len
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end70, label %if.end67.for.body_crit_edge

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end70:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %cyclic = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 14
  %85 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %cyclic, align 4
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 1
  %flags71 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %flags, ptr %flags71, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end70, %while.end, %if.then11.cleanup73_crit_edge, %pl330_config_write.exit.cleanup73_crit_edge, %do.end, %entry.cleanup73_crit_edge
  %retval.1 = phi ptr [ %txd, %if.end70 ], [ null, %do.end ], [ null, %entry.cleanup73_crit_edge ], [ null, %pl330_config_write.exit.cleanup73_crit_edge ], [ null, %if.then11.cleanup73_crit_edge ], [ null, %while.end ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !201
  %tobool.not.i134 = icmp eq ptr %txstate, null
  br i1 %tobool.not.i134, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.dma_cookie_status.exit.thread_crit_edge

if.then.i.i.dma_cookie_status.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit.thread

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.dma_cookie_status.exit.thread_crit_edge

if.else.i.i.dma_cookie_status.exit.thread_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit.thread

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  br i1 %tobool.not.i134, label %dma_cookie_status.exit.cleanup_crit_edge, label %dma_cookie_status.exit.dma_set_residue.exit_crit_edge

dma_cookie_status.exit.dma_set_residue.exit_crit_edge: ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

dma_cookie_status.exit.cleanup_crit_edge:         ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

dma_cookie_status.exit.thread:                    ; preds = %if.else.i.i.dma_cookie_status.exit.thread_crit_edge, %if.then.i.i.dma_cookie_status.exit.thread_crit_edge
  br i1 %tobool.not.i134, label %dma_cookie_status.exit.thread.cleanup_crit_edge, label %do.body4

dma_cookie_status.exit.thread.cleanup_crit_edge:  ; preds = %dma_cookie_status.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %dma_cookie_status.exit.thread
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread, align 4
  %dmac = getelementptr inbounds %struct.pl330_thread, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmac, align 4
  %lock10 = getelementptr inbounds %struct.pl330_dmac, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock10) #10
  %12 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %thread, align 4
  %req_running = getelementptr inbounds %struct.pl330_thread, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %req_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp12.not = icmp eq i32 %15, -1
  br i1 %cmp12.not, label %do.body4.if.end19_crit_edge, label %if.then14

do.body4.if.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %desc18 = getelementptr %struct.pl330_thread, ptr %13, i32 0, i32 4, i32 %15, i32 2
  %16 = ptrtoint ptr %desc18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.body4.if.end19_crit_edge
  %running.0 = phi ptr [ %17, %if.then14 ], [ null, %do.body4.if.end19_crit_edge ]
  %lstenq = getelementptr inbounds %struct.pl330_thread, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %lstenq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lstenq, align 4
  %desc24 = getelementptr %struct.pl330_thread, ptr %13, i32 0, i32 4, i32 %19, i32 2
  %20 = ptrtoint ptr %desc24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc24, align 4
  %work_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %desc.0149 = load ptr, ptr %work_list, align 4
  %cmp27.not150 = icmp eq ptr %desc.0149, %work_list
  br i1 %cmp27.not150, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %tobool32.not = icmp ne ptr %running.0, null
  %dmac.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %rqcfg.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %running.0, i32 0, i32 3
  %px.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %running.0, i32 0, i32 2
  %dst_addr.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %running.0, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end81.for.body_crit_edge, %for.body.lr.ph
  %desc.0152 = phi ptr [ %desc.0149, %for.body.lr.ph ], [ %desc.0, %if.end81.for.body_crit_edge ]
  %residual.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %if.end81.for.body_crit_edge ]
  %status = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 4
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp29 = icmp eq i32 %24, 3
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %bytes_requested = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 5
  %25 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes_requested, align 4
  br label %if.end51

if.else:                                          ; preds = %for.body
  %cmp33 = icmp eq ptr %desc.0152, %running.0
  %or.cond = select i1 %tobool32.not, i1 %cmp33, i1 false
  br i1 %or.cond, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else
  %27 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %thread, align 4
  %29 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmac.i, align 4
  %dmac1.i = getelementptr inbounds %struct.pl330_thread, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %dmac1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dmac1.i, align 4
  %base.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 15
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #10
  %37 = ptrtoint ptr %rqcfg.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %rqcfg.i, align 4
  %38 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i135 = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %28, align 4
  %conv7.i = zext i8 %40 to i32
  %mul8.i = shl nuw nsw i32 %conv7.i, 5
  br i1 %tobool.not.i135, label %if.else.i, label %if.then.i137

if.then.i137:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add nuw nsw i32 %mul8.i, 1024
  %add.ptr.i136 = getelementptr i8, ptr %34, i32 %add.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #10, !srcloc !181
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  br label %pl330_get_current_xferred_count.exit

if.else.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %add9.i = add nuw nsw i32 %mul8.i, 1028
  %add.ptr10.i = getelementptr i8, ptr %34, i32 %add9.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !181
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  br label %pl330_get_current_xferred_count.exit

pl330_get_current_xferred_count.exit:             ; preds = %if.else.i, %if.then.i137
  %addr.0.in.i = phi ptr [ %px.i, %if.then.i137 ], [ %dst_addr.i, %if.else.i ]
  %val.0.i = phi i32 [ %42, %if.then.i137 ], [ %44, %if.else.i ]
  %45 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %addr.0.i = load i32, ptr %addr.0.in.i, align 4
  %46 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dmac.i, align 4
  %dev17.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev17.i, align 4
  %call.i37.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 12, i32 22
  %50 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %call.i37.i, ptr %last_busy.i.i, align 8
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %call.i38.i = tail call i32 @__pm_runtime_suspend(ptr noundef %52, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool21.not.i = icmp eq i32 %val.0.i, 0
  %sub.i = sub i32 %val.0.i, %addr.0.i
  %retval.0.i138 = select i1 %tobool21.not.i, i32 0, i32 %sub.i
  br label %if.end51

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp39 = icmp ne i32 %24, 2
  %cmp42 = icmp eq ptr %desc.0152, %21
  %or.cond133 = select i1 %cmp39, i1 true, i1 %cmp42
  br i1 %or.cond133, label %if.else37.if.end51_crit_edge, label %if.else45

if.else37.if.end51_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.else45:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %bytes_requested46 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 5
  %53 = ptrtoint ptr %bytes_requested46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes_requested46, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else45, %if.else37.if.end51_crit_edge, %pl330_get_current_xferred_count.exit, %if.then31
  %transferred.0 = phi i32 [ %26, %if.then31 ], [ %retval.0.i138, %pl330_get_current_xferred_count.exit ], [ %54, %if.else45 ], [ 0, %if.else37.if.end51_crit_edge ]
  %bytes_requested52 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 5
  %55 = ptrtoint ptr %bytes_requested52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes_requested52, align 4
  %sub = sub i32 %56, %transferred.0
  %add = add i32 %sub, %residual.0151
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 1
  %57 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %cookie)
  %cmp54 = icmp eq i32 %58, %cookie
  br i1 %cmp54, label %if.then56, label %if.end81

if.then56:                                        ; preds = %if.end51
  %status.le = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 4
  %59 = ptrtoint ptr %status.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status.le, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %60, label %do.end67 [
    i32 3, label %if.then56.for.end_crit_edge
    i32 1, label %if.then56.sw.bb58_crit_edge
    i32 2, label %if.then56.sw.bb58_crit_edge163
  ]

if.then56.sw.bb58_crit_edge163:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58

if.then56.sw.bb58_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb58

if.then56.for.end_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sw.bb58:                                          ; preds = %if.then56.sw.bb58_crit_edge, %if.then56.sw.bb58_crit_edge163
  br label %for.end

do.end67:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2450, i32 noundef 9, ptr noundef null) #10
  br label %for.end

if.end81:                                         ; preds = %if.end51
  %last = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0152, i32 0, i32 6
  %62 = ptrtoint ptr %last to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %last, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool82.not = icmp eq i8 %63, 0
  %spec.select = select i1 %tobool82.not, i32 %add, i32 0
  %64 = ptrtoint ptr %desc.0152 to i32
  call void @__asan_load4_noabort(i32 %64)
  %desc.0 = load ptr, ptr %desc.0152, align 4
  %cmp27.not = icmp eq ptr %desc.0, %work_list
  br i1 %cmp27.not, label %if.end81.for.end_crit_edge, label %if.end81.for.body_crit_edge

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end81.for.end_crit_edge, %do.end67, %sw.bb58, %if.then56.for.end_crit_edge, %if.end19.for.end_crit_edge
  %residual.2 = phi i32 [ %add, %do.end67 ], [ %add, %sw.bb58 ], [ %add, %if.then56.for.end_crit_edge ], [ 0, %if.end19.for.end_crit_edge ], [ %spec.select, %if.end81.for.end_crit_edge ]
  %ret.0 = phi i32 [ 1, %do.end67 ], [ 1, %sw.bb58 ], [ 0, %if.then56.for.end_crit_edge ], [ 1, %if.end19.for.end_crit_edge ], [ 1, %if.end81.for.end_crit_edge ]
  %65 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %thread, align 4
  %dmac91 = getelementptr inbounds %struct.pl330_thread, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %dmac91 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dmac91, align 4
  %lock92 = getelementptr inbounds %struct.pl330_dmac, ptr %68, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lock92) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.end, %dma_cookie_status.exit.dma_set_residue.exit_crit_edge
  %residual.3 = phi i32 [ %residual.2, %for.end ], [ 0, %dma_cookie_status.exit.dma_set_residue.exit_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %for.end ], [ 0, %dma_cookie_status.exit.dma_set_residue.exit_crit_edge ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %69 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %residual.3, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %dma_cookie_status.exit.thread.cleanup_crit_edge, %dma_cookie_status.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %dma_set_residue.exit ], [ 0, %dma_cookie_status.exit.cleanup_crit_edge ], [ 1, %dma_cookie_status.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pl330_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flg, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %tobool.not = icmp eq ptr %retval.0.i, null
  %tobool1.not = icmp eq ptr %sgl, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool2.not = icmp eq i32 %sg_len, 0
  %or.cond93 = or i1 %tobool2.not, %or.cond
  br i1 %or.cond93, label %entry.cleanup_crit_edge, label %if.end, !prof !204

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dir.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 12
  %0 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 3
  br i1 %cmp.not.i.i, label %if.end.pl330_unprep_slave_fifo.exit.i_crit_edge, label %if.then.i.i

if.end.pl330_unprep_slave_fifo.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_unprep_slave_fifo.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %fifo_dma.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 11
  %6 = ptrtoint ptr %fifo_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_dma.i.i, align 4
  %burst_sz.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %8 = ptrtoint ptr %burst_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %burst_sz.i.i, align 4
  %shl.i.i = shl nuw i32 1, %9
  tail call void @dma_unmap_resource(ptr noundef %5, i32 noundef %7, i32 noundef %shl.i.i, i32 noundef %1, i32 noundef 0) #10
  br label %pl330_unprep_slave_fifo.exit.i

pl330_unprep_slave_fifo.exit.i:                   ; preds = %if.then.i.i, %if.end.pl330_unprep_slave_fifo.exit.i_crit_edge
  %10 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %dir.i.i, align 4
  %11 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %direction, label %pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then10.i
  ]

pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge: ; preds = %pl330_unprep_slave_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_config_write.exit

if.then.i:                                        ; preds = %pl330_unprep_slave_fifo.exit.i
  %dst_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 2
  %12 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i94 = icmp eq i32 %13, 0
  br i1 %tobool.not.i94, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 10
  %14 = ptrtoint ptr %fifo_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %fifo_addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %dst_addr_width.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 4
  %15 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true) #10, !range !200
  %burst_sz.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %18 = ptrtoint ptr %burst_sz.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %burst_sz.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %dst_maxburst.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 6
  br label %if.end27.sink.split.i

if.then10.i:                                      ; preds = %pl330_unprep_slave_fifo.exit.i
  %src_addr.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.i = icmp eq i32 %20, 0
  br i1 %tobool11.not.i, label %if.then10.i.if.end15.i_crit_edge, label %if.then12.i

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_addr14.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %fifo_addr14.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fifo_addr14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then10.i.if.end15.i_crit_edge
  %src_addr_width.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 3
  %22 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not.i = icmp eq i32 %23, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end21.i_crit_edge, label %if.then17.i

if.end15.i.if.end21.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #10, !range !200
  %burst_sz20.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %25 = ptrtoint ptr %burst_sz20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %burst_sz20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end21.i_crit_edge
  %src_maxburst.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13, i32 5
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.end21.i, %if.end7.i
  %src_maxburst.sink.i = phi ptr [ %src_maxburst.i, %if.end21.i ], [ %dst_maxburst.i, %if.end7.i ]
  %26 = ptrtoint ptr %src_maxburst.sink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_maxburst.sink.i, align 4
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 1) #10
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 16) #10
  %burst_len25.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 9
  %30 = ptrtoint ptr %burst_len25.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %burst_len25.i, align 4
  br label %pl330_config_write.exit

pl330_config_write.exit:                          ; preds = %if.end27.sink.split.i, %pl330_unprep_slave_fifo.exit.i.pl330_config_write.exit_crit_edge
  %call7 = tail call fastcc zeroext i1 @pl330_prep_slave_fifo(ptr noundef nonnull %retval.0.i, i32 noundef %direction)
  br i1 %call7, label %for.body.lr.ph, label %pl330_config_write.exit.cleanup_crit_edge

pl330_config_write.exit.cleanup_crit_edge:        ; preds = %pl330_config_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %pl330_config_write.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp19 = icmp eq i32 %direction, 1
  %fifo_dma36 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 11
  %burst_sz = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 8
  %burst_len = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %sg.0104 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call50, %if.end38.for.body_crit_edge ]
  %first.0103 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %if.end38.for.body_crit_edge ]
  %call10 = tail call fastcc ptr @pl330_get_desc(ptr noundef %retval.0.i)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %31 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dmac, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.78, i32 noundef 2862) #13
  %tobool.not.i95 = icmp eq ptr %first.0103, null
  br i1 %tobool.not.i95, label %if.then12.cleanup_crit_edge, label %do.body1.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i:                                       ; preds = %if.then12
  %pool_lock.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock.i) #10
  %35 = ptrtoint ptr %first.0103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %first.0103, align 4
  %cmp.i.not30.i = icmp eq ptr %36, %first.0103
  br i1 %cmp.i.not30.i, label %do.body1.i.while.end.i_crit_edge, label %while.body.lr.ph.i

do.body1.i.while.end.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.body1.i
  %desc_pool.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 1
  %prev.i2.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 1, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %list_move_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %37 = phi ptr [ %36, %while.body.lr.ph.i ], [ %51, %list_move_tail.exit.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.__list_del_entry.exit.i.i_crit_edge

while.body.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %while.body.i.__list_del_entry.exit.i.i_crit_edge
  %44 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %37, ptr noundef %45, ptr noundef %desc_pool.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %prev.i2.i.i, align 4
  %47 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %desc_pool.i, ptr %37, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %37, ptr %45, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %50 = ptrtoint ptr %first.0103 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %first.0103, align 4
  %cmp.i.not.i = icmp eq ptr %51, %first.0103
  br i1 %cmp.i.not.i, label %list_move_tail.exit.i.while.end.i_crit_edge, label %list_move_tail.exit.i.while.body.i_crit_edge

list_move_tail.exit.i.while.body.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_move_tail.exit.i.while.end.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %list_move_tail.exit.i.while.end.i_crit_edge, %do.body1.i.while.end.i_crit_edge
  %desc_pool11.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 1
  %call.i.i20.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %first.0103) #10
  br i1 %call.i.i20.i, label %if.end.i.i23.i, label %while.end.i.__list_del_entry.exit.i26.i_crit_edge

while.end.i.__list_del_entry.exit.i26.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i26.i

if.end.i.i23.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i21.i = getelementptr inbounds %struct.list_head, ptr %first.0103, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i21.i, align 4
  %54 = ptrtoint ptr %first.0103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %first.0103, align 4
  %prev1.i.i.i22.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i22.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %__list_del_entry.exit.i26.i

__list_del_entry.exit.i26.i:                      ; preds = %if.end.i.i23.i, %while.end.i.__list_del_entry.exit.i26.i_crit_edge
  %prev.i2.i24.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i2.i24.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i2.i24.i, align 4
  %call.i.i.i25.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %first.0103, ptr noundef %59, ptr noundef %desc_pool11.i) #10
  br i1 %call.i.i.i25.i, label %if.end.i.i.i28.i, label %__list_del_entry.exit.i26.i.list_move_tail.exit29.i_crit_edge

__list_del_entry.exit.i26.i.list_move_tail.exit29.i_crit_edge: ; preds = %__list_del_entry.exit.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit29.i

if.end.i.i.i28.i:                                 ; preds = %__list_del_entry.exit.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %prev.i2.i24.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %first.0103, ptr %prev.i2.i24.i, align 4
  %61 = ptrtoint ptr %first.0103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %desc_pool11.i, ptr %first.0103, align 4
  %prev3.i.i.i27.i = getelementptr inbounds %struct.list_head, ptr %first.0103, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i27.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %first.0103, ptr %59, align 4
  br label %list_move_tail.exit29.i

list_move_tail.exit29.i:                          ; preds = %if.end.i.i.i28.i, %__list_del_entry.exit.i26.i.list_move_tail.exit29.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock.i, i32 noundef %call2.i) #10
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %tobool15.not = icmp eq ptr %first.0103, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.else

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else:                                          ; preds = %if.end14
  %prev.i = getelementptr inbounds %struct.list_head, ptr %first.0103, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call10, ptr noundef %65, ptr noundef nonnull %first.0103) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call10, ptr %prev.i, align 4
  %67 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %first.0103, ptr %call10, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call10, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %call10, ptr %65, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i, %if.else.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %first.1 = phi ptr [ %call10, %if.end14.if.end18_crit_edge ], [ %first.0103, %if.else.if.end18_crit_edge ], [ %first.0103, %if.end.i.i ]
  %rqcfg = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 3
  %70 = ptrtoint ptr %rqcfg to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load = load i8, ptr %rqcfg, align 4
  %bf.set = and i8 %bf.load, 63
  br i1 %cmp19, label %if.then20, label %if.else25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear23 = or i8 %bf.set, 64
  %71 = ptrtoint ptr %rqcfg to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %bf.clear23, ptr %rqcfg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 3
  br label %if.end38

if.else25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set33 = or i8 %bf.set, -128
  %72 = ptrtoint ptr %rqcfg to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %bf.set33, ptr %rqcfg, align 4
  %dma_address35 = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 3
  br label %if.end38

if.end38:                                         ; preds = %if.else25, %if.then20
  %.sink110.in = phi ptr [ %fifo_dma36, %if.then20 ], [ %dma_address35, %if.else25 ]
  %.sink.in = phi ptr [ %dma_address, %if.then20 ], [ %fifo_dma36, %if.else25 ]
  %73 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %73)
  %.sink = load i32, ptr %.sink.in, align 4
  %74 = ptrtoint ptr %.sink110.in to i32
  call void @__asan_load4_noabort(i32 %74)
  %.sink110 = load i32, ptr %.sink110.in, align 4
  %.sink111.in = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 4
  %75 = ptrtoint ptr %.sink111.in to i32
  call void @__asan_load4_noabort(i32 %75)
  %.sink111 = load i32, ptr %.sink111.in, align 4
  %76 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink111, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink110, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink, ptr %80, align 4
  %82 = ptrtoint ptr %burst_sz to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %burst_sz, align 4
  %brst_size = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 3, i32 4
  %84 = trunc i32 %83 to i8
  %85 = ptrtoint ptr %brst_size to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load40 = load i8, ptr %brst_size, align 4
  %bf.value = and i8 %84, 7
  %bf.clear41 = and i8 %bf.load40, -8
  %bf.set42 = or i8 %bf.clear41, %bf.value
  store i8 %bf.set42, ptr %brst_size, align 4
  %86 = ptrtoint ptr %burst_len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %burst_len, align 4
  %88 = trunc i32 %87 to i8
  %bf.shl = shl i8 %88, 3
  %bf.set47 = or i8 %bf.shl, %bf.value
  store i8 %bf.set47, ptr %brst_size, align 4
  %rqtype = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 8
  %89 = ptrtoint ptr %rqtype to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %direction, ptr %rqtype, align 4
  %dma_length49 = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 4
  %90 = ptrtoint ptr %dma_length49 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_length49, align 4
  %bytes_requested = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 5
  %92 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %bytes_requested, align 4
  %inc = add nuw i32 %i.0106, 1
  %call50 = tail call ptr @sg_next(ptr noundef %sg.0104) #10
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 1
  %flags = getelementptr inbounds %struct.dma_pl330_desc, ptr %call10, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %flg, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_move_tail.exit29.i, %if.then12.cleanup_crit_edge, %pl330_config_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %txd, %for.end ], [ null, %pl330_config_write.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then12.cleanup_crit_edge ], [ null, %list_move_tail.exit29.i ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl330_config(ptr noundef writeonly %chan, ptr nocapture noundef readonly %slave_config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %slave_config1 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %slave_config1, ptr %slave_config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %lock7 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock7) #10
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread, align 4
  tail call fastcc void @_stop(ptr noundef %5)
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i22 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i22, ptr %last_busy.i, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %lock7 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock7) #10
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 7
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread, align 4
  tail call fastcc void @_stop(ptr noundef %5)
  %6 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thread, align 4
  %desc9 = getelementptr inbounds %struct.pl330_thread, ptr %7, i32 0, i32 4, i32 0, i32 2
  %8 = ptrtoint ptr %desc9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc9, align 4
  %9 = load ptr, ptr %thread, align 4
  %desc13 = getelementptr %struct.pl330_thread, ptr %9, i32 0, i32 4, i32 1, i32 2
  %10 = ptrtoint ptr %desc13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %desc13, align 4
  %11 = load ptr, ptr %thread, align 4
  %req_running = getelementptr inbounds %struct.pl330_thread, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %req_running to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %req_running, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #10
  %active = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 15
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %active, align 1
  %submitted_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %submitted_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %desc.0110 = load ptr, ptr %submitted_list, align 4
  %cmp19.not111 = icmp eq ptr %desc.0110, %submitted_list
  br i1 %cmp19.not111, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %dma_cookie_complete.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %desc.0112 = phi ptr [ %desc.0, %dma_cookie_complete.exit.for.body_crit_edge ], [ %desc.0110, %entry.for.body_crit_edge ]
  %status = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0112, i32 0, i32 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status, align 4
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0112, i32 0, i32 1
  %18 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp slt i32 %19, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !199

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !205
  unreachable

dma_cookie_complete.exit:                         ; preds = %for.body
  %chan.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0112, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %completed_cookie.i, align 4
  %23 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %txd, align 4
  %24 = ptrtoint ptr %desc.0112 to i32
  call void @__asan_load4_noabort(i32 %24)
  %desc.0 = load ptr, ptr %desc.0112, align 4
  %cmp19.not = icmp eq ptr %desc.0, %submitted_list
  br i1 %cmp19.not, label %dma_cookie_complete.exit.for.end_crit_edge, label %dma_cookie_complete.exit.for.body_crit_edge

dma_cookie_complete.exit.for.body_crit_edge:      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

dma_cookie_complete.exit.for.end_crit_edge:       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %dma_cookie_complete.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %work_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3
  %25 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %desc.1113 = load ptr, ptr %work_list, align 4
  %cmp33.not114 = icmp eq ptr %desc.1113, %work_list
  br i1 %cmp33.not114, label %for.end.for.end45_crit_edge, label %for.end.for.body36_crit_edge

for.end.for.body36_crit_edge:                     ; preds = %for.end
  br label %for.body36

for.end.for.end45_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.body36:                                       ; preds = %dma_cookie_complete.exit94.for.body36_crit_edge, %for.end.for.body36_crit_edge
  %desc.1115 = phi ptr [ %desc.1, %dma_cookie_complete.exit94.for.body36_crit_edge ], [ %desc.1113, %for.end.for.body36_crit_edge ]
  %status37 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1115, i32 0, i32 4
  %26 = ptrtoint ptr %status37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %status37, align 4
  %txd38 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1115, i32 0, i32 1
  %27 = ptrtoint ptr %txd38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txd38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i90 = icmp slt i32 %28, 1
  br i1 %cmp.i90, label %do.body2.i91, label %dma_cookie_complete.exit94, !prof !199

do.body2.i91:                                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !205
  unreachable

dma_cookie_complete.exit94:                       ; preds = %for.body36
  %chan.i92 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1115, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %chan.i92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan.i92, align 4
  %completed_cookie.i93 = getelementptr inbounds %struct.dma_chan, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %completed_cookie.i93 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %completed_cookie.i93, align 4
  %32 = ptrtoint ptr %txd38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %txd38, align 4
  %33 = ptrtoint ptr %desc.1115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %desc.1 = load ptr, ptr %desc.1115, align 4
  %cmp33.not = icmp eq ptr %desc.1, %work_list
  br i1 %cmp33.not, label %dma_cookie_complete.exit94.for.end45_crit_edge, label %dma_cookie_complete.exit94.for.body36_crit_edge

dma_cookie_complete.exit94.for.body36_crit_edge:  ; preds = %dma_cookie_complete.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36

dma_cookie_complete.exit94.for.end45_crit_edge:   ; preds = %dma_cookie_complete.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end45

for.end45:                                        ; preds = %dma_cookie_complete.exit94.for.end45_crit_edge, %for.end.for.end45_crit_edge
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %submitted_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %submitted_list, align 4
  %cmp.i.not.i = icmp eq ptr %35, %submitted_list
  br i1 %cmp.i.not.i, label %for.end45.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end45.list_splice_tail_init.exit_crit_edge:   ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %35, ptr %37, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_pool, ptr %39, align 4
  store ptr %39, ptr %prev.i, align 4
  %43 = ptrtoint ptr %submitted_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %submitted_list, ptr %submitted_list, align 4
  store ptr %submitted_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end45.list_splice_tail_init.exit_crit_edge
  %44 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not.i95 = icmp eq ptr %45, %work_list
  br i1 %cmp.i.not.i95, label %list_splice_tail_init.exit.list_splice_tail_init.exit100_crit_edge, label %if.then.i99

list_splice_tail_init.exit.list_splice_tail_init.exit100_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit100

if.then.i99:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i96 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev.i96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i96, align 4
  %prev2.i.i97 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev2.i.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i97, align 4
  %prev3.i.i98 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i98, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %desc_pool, ptr %49, align 4
  store ptr %49, ptr %prev.i96, align 4
  %53 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %work_list, ptr %work_list, align 4
  store ptr %work_list, ptr %prev2.i.i97, align 4
  br label %list_splice_tail_init.exit100

list_splice_tail_init.exit100:                    ; preds = %if.then.i99, %list_splice_tail_init.exit.list_splice_tail_init.exit100_crit_edge
  %completed_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 4
  %54 = ptrtoint ptr %completed_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %completed_list, align 4
  %cmp.i.not.i101 = icmp eq ptr %55, %completed_list
  br i1 %cmp.i.not.i101, label %list_splice_tail_init.exit100.list_splice_tail_init.exit106_crit_edge, label %if.then.i105

list_splice_tail_init.exit100.list_splice_tail_init.exit106_crit_edge: ; preds = %list_splice_tail_init.exit100
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit106

if.then.i105:                                     ; preds = %list_splice_tail_init.exit100
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i102 = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i102, align 4
  %prev2.i.i103 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev2.i.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev2.i.i103, align 4
  %prev3.i.i104 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i104 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i104, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %57, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %desc_pool, ptr %59, align 4
  store ptr %59, ptr %prev.i102, align 4
  %63 = ptrtoint ptr %completed_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %completed_list, ptr %completed_list, align 4
  store ptr %completed_list, ptr %prev2.i.i103, align 4
  br label %list_splice_tail_init.exit106

list_splice_tail_init.exit106:                    ; preds = %if.then.i105, %list_splice_tail_init.exit100.list_splice_tail_init.exit106_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %call.i107 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 12, i32 22
  %66 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store volatile i64 %call.i107, ptr %last_busy.i, align 8
  br i1 %tobool.not, label %list_splice_tail_init.exit106.if.end_crit_edge, label %if.then

list_splice_tail_init.exit106.if.end_crit_edge:   ; preds = %list_splice_tail_init.exit106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_splice_tail_init.exit106
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %call.i108 = tail call i32 @__pm_runtime_suspend(ptr noundef %68, i32 noundef 13) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %list_splice_tail_init.exit106.if.end_crit_edge
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %call.i109 = tail call i32 @__pm_runtime_suspend(ptr noundef %70, i32 noundef 13) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl330_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %chan, null
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %work_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3
  %0 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %1, %work_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then:                                          ; preds = %entry
  %submitted_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %submitted_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %submitted_list, align 4
  %cmp.i47.not = icmp eq ptr %3, %submitted_list
  br i1 %cmp.i47.not, label %do.end20, label %if.then.if.end_crit_edge, !prof !199

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2478, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end20, %if.then.if.end_crit_edge
  %active = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 15
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %active, align 1
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmac, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  br label %if.end34

if.end34:                                         ; preds = %if.end, %entry.if.end34_crit_edge
  %submitted_list35 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %submitted_list35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %submitted_list35, align 4
  %cmp.i.not.i = icmp eq ptr %10, %submitted_list35
  br i1 %cmp.i.not.i, label %if.end34.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end34.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %12, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %work_list, ptr %14, align 4
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %submitted_list35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %submitted_list35, ptr %submitted_list35, align 4
  store ptr %submitted_list35, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end34.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  tail call void @pl330_tasklet(ptr noundef %retval.0.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_dma_pl330_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %num_peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %num_peripherals to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_peripherals, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp ult i32 %5, %7
  br i1 %cmp3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %peripherals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peripherals, align 4
  %chan = getelementptr %struct.dma_pl330_chan, ptr %9, i32 %5, i32 1
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %chan) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_pl330_debugfs(ptr noundef %pl330) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %pl330, i32 0, i32 15
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_file(ptr noundef %retval.0.i, i16 noundef zeroext -32476, ptr noundef null, ptr noundef %pl330, ptr noundef nonnull @pl330_debugfs_fops) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl330_del(ptr noundef %pl330) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %tasks = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 12
  tail call void @tasklet_kill(ptr noundef %tasks) #10
  %num_chan.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 5, i32 2
  %1 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load1.i = load i32, ptr %num_chan.i, align 4
  %2 = and i32 %bf.load1.i, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4.not.i = icmp eq i32 %2, 0
  br i1 %cmp4.not.i, label %entry.dmac_free_threads.exit_crit_edge, label %for.body.lr.ph.i

entry.dmac_free_threads.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmac_free_threads.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channels.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channels.i, align 4
  %arrayidx.i = getelementptr %struct.pl330_thread, ptr %4, i32 %i.05.i
  tail call fastcc void @pl330_release_channel(ptr noundef %arrayidx.i) #10
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %5 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %num_chan.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 7
  %bf.clear.i = and i32 %bf.lshr.i, 15
  %cmp.i = icmp ult i32 %inc.i, %bf.clear.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.dmac_free_threads.exit_crit_edge

for.body.i.dmac_free_threads.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmac_free_threads.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

dmac_free_threads.exit:                           ; preds = %for.body.i.dmac_free_threads.exit_crit_edge, %entry.dmac_free_threads.exit_crit_edge
  %channels1.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 10
  %6 = ptrtoint ptr %channels1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels1.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %dev = getelementptr inbounds %struct.dma_device, ptr %pl330, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %num_chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %num_chan.i, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 15
  %mcbufsz = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 3
  %11 = ptrtoint ptr %mcbufsz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mcbufsz, align 4
  %mul = mul i32 %bf.clear, %12
  %mcode_cpu = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 9
  %13 = ptrtoint ptr %mcode_cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mcode_cpu, align 4
  %mcode_bus = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 8
  %15 = ptrtoint ptr %mcode_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mcode_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %mul, ptr noundef %14, i32 noundef %16, i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_stop(ptr noundef readonly %thrd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dmac = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 3
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %base = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !181
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  %6 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmac, align 4
  %base.i = getelementptr inbounds %struct.pl330_dmac, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %manager.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %manager.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %manager.i.i, align 4
  %cmp.i.i = icmp eq ptr %11, %thrd
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !181
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %thrd, align 4
  %conv.i = zext i8 %15 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %add.i = add nuw nsw i32 %mul.i, 256
  %add.ptr5.i = getelementptr i8, ptr %9, i32 %add.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !181
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.in.i = phi i32 [ %13, %if.then.i ], [ %17, %if.else.i ]
  %val.0.i = and i32 %val.0.in.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %val.0.i)
  %cond = icmp eq i32 %val.0.i, 14
  br i1 %cond, label %sw.bb35.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb35.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmac, align 4
  %manager.i70.i = getelementptr inbounds %struct.pl330_dmac, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %manager.i70.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %manager.i70.i, align 4
  %cmp.i71.i = icmp eq ptr %21, %thrd
  br i1 %cmp.i71.i, label %sw.bb35.i.if.end_crit_edge, label %sw.bb35.i.while.cond_crit_edge

sw.bb35.i.while.cond_crit_edge:                   ; preds = %sw.bb35.i
  br label %while.cond

sw.bb35.i.if.end_crit_edge:                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond:                                       ; preds = %do.end, %sw.bb35.i.while.cond_crit_edge
  %22 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmac, align 4
  %base.i55 = getelementptr inbounds %struct.pl330_dmac, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i55, align 4
  %manager.i.i56 = getelementptr inbounds %struct.pl330_dmac, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %manager.i.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %manager.i.i56, align 4
  %cmp.i.i57 = icmp eq ptr %27, %thrd
  br i1 %cmp.i.i57, label %if.then.i58, label %if.else.i63

if.then.i58:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !181
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i66

if.else.i63:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %thrd, align 4
  %conv.i59 = zext i8 %31 to i32
  %mul.i60 = shl nuw nsw i32 %conv.i59, 3
  %add.i61 = add nuw nsw i32 %mul.i60, 256
  %add.ptr5.i62 = getelementptr i8, ptr %25, i32 %add.i61
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i62) #10, !srcloc !181
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i66

if.end.i66:                                       ; preds = %if.else.i63, %if.then.i58
  %val.0.in.i64 = phi i32 [ %29, %if.then.i58 ], [ %33, %if.else.i63 ]
  %val.0.i65 = and i32 %val.0.in.i64, 15
  %34 = zext i32 %val.0.i65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %val.0.i65, label %if.end.i66.do.end_crit_edge [
    i32 14, label %if.end.i66._state.exit98_crit_edge
    i32 9, label %if.end.i66._state.exit98_crit_edge269
    i32 8, label %sw.bb27.i87
    i32 7, label %if.end.i66._state.exit98_crit_edge270
    i32 6, label %if.end.i66._state.exit98_crit_edge271
    i32 15, label %if.end.i66.if.end_crit_edge
    i32 5, label %if.end.i66._state.exit98_crit_edge272
  ]

if.end.i66._state.exit98_crit_edge272:            ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

if.end.i66.if.end_crit_edge:                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i66._state.exit98_crit_edge271:            ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

if.end.i66._state.exit98_crit_edge270:            ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

if.end.i66._state.exit98_crit_edge269:            ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

if.end.i66._state.exit98_crit_edge:               ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

if.end.i66.do.end_crit_edge:                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb27.i87:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit98

_state.exit98:                                    ; preds = %sw.bb27.i87, %if.end.i66._state.exit98_crit_edge, %if.end.i66._state.exit98_crit_edge269, %if.end.i66._state.exit98_crit_edge270, %if.end.i66._state.exit98_crit_edge271, %if.end.i66._state.exit98_crit_edge272
  %tobool.not265 = phi i1 [ true, %if.end.i66._state.exit98_crit_edge ], [ false, %sw.bb27.i87 ], [ true, %if.end.i66._state.exit98_crit_edge269 ], [ true, %if.end.i66._state.exit98_crit_edge270 ], [ true, %if.end.i66._state.exit98_crit_edge271 ], [ true, %if.end.i66._state.exit98_crit_edge272 ]
  %35 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dmac, align 4
  %manager.i55.i72 = getelementptr inbounds %struct.pl330_dmac, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %manager.i55.i72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %manager.i55.i72, align 4
  %cmp.i56.i73 = icmp eq ptr %38, %thrd
  %tobool.not = or i1 %cmp.i56.i73, %tobool.not265
  br i1 %tobool.not, label %_state.exit98.do.end_crit_edge, label %_state.exit98.if.end_crit_edge

_state.exit98.if.end_crit_edge:                   ; preds = %_state.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

_state.exit98.do.end_crit_edge:                   ; preds = %_state.exit98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %_state.exit98.do.end_crit_edge, %if.end.i66.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !210
  br label %while.cond

if.end:                                           ; preds = %_state.exit98.if.end_crit_edge, %if.end.i66.if.end_crit_edge, %sw.bb35.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %39 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmac, align 4
  %base.i100 = getelementptr inbounds %struct.pl330_dmac, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i100, align 4
  %manager.i.i101 = getelementptr inbounds %struct.pl330_dmac, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %manager.i.i101 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %manager.i.i101, align 4
  %cmp.i.i102 = icmp eq ptr %44, %thrd
  br i1 %cmp.i.i102, label %if.then.i103, label %if.else.i108

if.then.i103:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !181
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i111

if.else.i108:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %thrd, align 4
  %conv.i104 = zext i8 %48 to i32
  %mul.i105 = shl nuw nsw i32 %conv.i104, 3
  %add.i106 = add nuw nsw i32 %mul.i105, 256
  %add.ptr5.i107 = getelementptr i8, ptr %42, i32 %add.i106
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i107) #10, !srcloc !181
  %50 = lshr i32 %49, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.else.i108, %if.then.i103
  %val.0.in.i109 = phi i32 [ %46, %if.then.i103 ], [ %50, %if.else.i108 ]
  %val.0.i110 = and i32 %val.0.in.i109, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %val.0.i110)
  %cond257 = icmp eq i32 %val.0.i110, 9
  br i1 %cond257, label %sw.bb31.i136, label %if.end.i111.lor.lhs.false_crit_edge

if.end.i111.lor.lhs.false_crit_edge:              ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

sw.bb31.i136:                                     ; preds = %if.end.i111
  %51 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmac, align 4
  %manager.i67.i133 = getelementptr inbounds %struct.pl330_dmac, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %manager.i67.i133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %manager.i67.i133, align 4
  %cmp.i68.i134 = icmp eq ptr %54, %thrd
  br i1 %cmp.i68.i134, label %sw.bb31.i136.lor.lhs.false_crit_edge, label %sw.bb31.i136.cleanup_crit_edge

sw.bb31.i136.cleanup_crit_edge:                   ; preds = %sw.bb31.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb31.i136.lor.lhs.false_crit_edge:             ; preds = %sw.bb31.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb31.i136.lor.lhs.false_crit_edge, %if.end.i111.lor.lhs.false_crit_edge
  %55 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dmac, align 4
  %base.i145 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %base.i145 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i145, align 4
  %manager.i.i146 = getelementptr inbounds %struct.pl330_dmac, ptr %56, i32 0, i32 11
  %59 = ptrtoint ptr %manager.i.i146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %manager.i.i146, align 4
  %cmp.i.i147 = icmp eq ptr %60, %thrd
  br i1 %cmp.i.i147, label %if.then.i148, label %if.else.i153

if.then.i148:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #10, !srcloc !181
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i156

if.else.i153:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %thrd, align 4
  %conv.i149 = zext i8 %64 to i32
  %mul.i150 = shl nuw nsw i32 %conv.i149, 3
  %add.i151 = add nuw nsw i32 %mul.i150, 256
  %add.ptr5.i152 = getelementptr i8, ptr %58, i32 %add.i151
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i152) #10, !srcloc !181
  %66 = lshr i32 %65, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i156

if.end.i156:                                      ; preds = %if.else.i153, %if.then.i148
  %val.0.in.i154 = phi i32 [ %62, %if.then.i148 ], [ %66, %if.else.i153 ]
  %val.0.i155 = and i32 %val.0.in.i154, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val.0.i155)
  %cond258 = icmp eq i32 %val.0.i155, 8
  br i1 %cond258, label %sw.bb27.i177, label %if.end.i156.lor.lhs.false14_crit_edge

if.end.i156.lor.lhs.false14_crit_edge:            ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false14

sw.bb27.i177:                                     ; preds = %if.end.i156
  %67 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dmac, align 4
  %manager.i64.i174 = getelementptr inbounds %struct.pl330_dmac, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %manager.i64.i174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %manager.i64.i174, align 4
  %cmp.i65.i175 = icmp eq ptr %70, %thrd
  br i1 %cmp.i65.i175, label %sw.bb27.i177.lor.lhs.false14_crit_edge, label %sw.bb27.i177.cleanup_crit_edge

sw.bb27.i177.cleanup_crit_edge:                   ; preds = %sw.bb27.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb27.i177.lor.lhs.false14_crit_edge:           ; preds = %sw.bb27.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %sw.bb27.i177.lor.lhs.false14_crit_edge, %if.end.i156.lor.lhs.false14_crit_edge
  %71 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dmac, align 4
  %base.i190 = getelementptr inbounds %struct.pl330_dmac, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %base.i190 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i190, align 4
  %manager.i.i191 = getelementptr inbounds %struct.pl330_dmac, ptr %72, i32 0, i32 11
  %75 = ptrtoint ptr %manager.i.i191 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %manager.i.i191, align 4
  %cmp.i.i192 = icmp eq ptr %76, %thrd
  br i1 %cmp.i.i192, label %if.then.i193, label %if.else.i198

if.then.i193:                                     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #10, !srcloc !181
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i201

if.else.i198:                                     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %thrd, align 4
  %conv.i194 = zext i8 %80 to i32
  %mul.i195 = shl nuw nsw i32 %conv.i194, 3
  %add.i196 = add nuw nsw i32 %mul.i195, 256
  %add.ptr5.i197 = getelementptr i8, ptr %74, i32 %add.i196
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i197) #10, !srcloc !181
  %82 = lshr i32 %81, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i201

if.end.i201:                                      ; preds = %if.else.i198, %if.then.i193
  %val.0.in.i199 = phi i32 [ %78, %if.then.i193 ], [ %82, %if.else.i198 ]
  %val.0.i200 = and i32 %val.0.in.i199, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i200)
  %cond259 = icmp eq i32 %val.0.i200, 0
  br i1 %cond259, label %if.end.i201.cleanup_crit_edge, label %if.end18

if.end.i201.cleanup_crit_edge:                    ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end.i201
  %83 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dmac, align 4
  %manager.i = getelementptr inbounds %struct.pl330_dmac, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %manager.i, align 4
  %cmp.i = icmp eq ptr %86, %thrd
  %base.i236 = getelementptr inbounds %struct.pl330_dmac, ptr %84, i32 0, i32 4
  %87 = ptrtoint ptr %base.i236 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i236, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %89 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %89, 1000
  %mul1.i.i = mul nuw nsw i32 %div.i.i, 500
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 3328
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.end18
  %loops.0.i.i = phi i32 [ %mul1.i.i, %if.end18 ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i, label %_until_dmac_idle.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !213
  %dec.i.i = add i32 %loops.0.i.i, -1
  %tobool11.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool11.not.i.i, label %do.end.i.i.do.end.i_crit_edge, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.i.i.do.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

_until_dmac_idle.exit.i:                          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0.i.i)
  %tobool13.not.i.i = icmp eq i32 %loops.0.i.i, 0
  br i1 %tobool13.not.i.i, label %_until_dmac_idle.exit.i.do.end.i_crit_edge, label %if.end.i238

_until_dmac_idle.exit.i.do.end.i_crit_edge:       ; preds = %_until_dmac_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %_until_dmac_idle.exit.i.do.end.i_crit_edge, %do.end.i.i.do.end.i_crit_edge
  %92 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dmac, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.43) #13
  br label %_execute_DBGINSN.exit

if.end.i238:                                      ; preds = %_until_dmac_idle.exit.i
  br i1 %cmp.i, label %if.end.i238.do.body11.i_crit_edge, label %if.then5.i

if.end.i238.do.body11.i_crit_edge:                ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.i

if.then5.i:                                       ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %thrd, align 4
  %conv7.i = zext i8 %97 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %shl8.i, 65537
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then5.i, %if.end.i238.do.body11.i_crit_edge
  %val.0.i239 = phi i32 [ 65536, %if.end.i238.do.body11.i_crit_edge ], [ %or9.i, %if.then5.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %98 = tail call i32 @llvm.bswap.i32(i32 %val.0.i239) #10
  %add.ptr.i = getelementptr i8, ptr %88, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %98) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %add.ptr18.i = getelementptr i8, ptr %88, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 0) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %add.ptr22.i = getelementptr i8, ptr %88, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #10, !srcloc !189
  br label %_execute_DBGINSN.exit

_execute_DBGINSN.exit:                            ; preds = %do.body11.i, %do.end.i
  %ev = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 1
  %99 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ev, align 4
  %shl = shl nuw i32 1, %100
  %and22 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %_execute_DBGINSN.exit.do.body32_crit_edge, label %do.body25

_execute_DBGINSN.exit.do.body32_crit_edge:        ; preds = %_execute_DBGINSN.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.body25:                                        ; preds = %_execute_DBGINSN.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %101 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ev, align 4
  %shl29 = shl nuw i32 1, %102
  %103 = tail call i32 @llvm.bswap.i32(i32 %shl29)
  %add.ptr30 = getelementptr i8, ptr %3, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %103) #10, !srcloc !189
  br label %do.body32

do.body32:                                        ; preds = %do.body25, %_execute_DBGINSN.exit.do.body32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ev, align 4
  %shl36 = shl nuw i32 1, %105
  %neg = xor i32 %shl36, -1
  %and37 = and i32 %5, %neg
  %106 = tail call i32 @llvm.bswap.i32(i32 %and37)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %106) #10, !srcloc !189
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %if.end.i201.cleanup_crit_edge, %sw.bb27.i177.cleanup_crit_edge, %sw.bb31.i136.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_start(ptr noundef %thrd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dmac.i = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 3
  %0 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac.i, align 4
  %base.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %manager.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %manager.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %manager.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, %thrd
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !181
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %thrd, align 4
  %conv.i = zext i8 %9 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %add.i = add nuw nsw i32 %mul.i, 256
  %add.ptr5.i = getelementptr i8, ptr %3, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !181
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.in.i = phi i32 [ %7, %if.then.i ], [ %11, %if.else.i ]
  %val.0.i = and i32 %val.0.in.i, 15
  %12 = zext i32 %val.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %val.0.i, label %if.end.i.return_crit_edge [
    i32 0, label %if.end.i.sw.bb35_crit_edge
    i32 14, label %sw.bb35.i
    i32 9, label %sw.bb31.i
    i32 8, label %sw.bb27.i
    i32 15, label %if.end.i.sw.bb20_crit_edge
  ]

if.end.i.sw.bb20_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

if.end.i.sw.bb35_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb27.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmac.i, align 4
  %manager.i64.i = getelementptr inbounds %struct.pl330_dmac, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %manager.i64.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %manager.i64.i, align 4
  %cmp.i65.i = icmp eq ptr %16, %thrd
  br i1 %cmp.i65.i, label %sw.bb27.i.return_crit_edge, label %sw.bb27.i.while.cond22.preheader_crit_edge

sw.bb27.i.while.cond22.preheader_crit_edge:       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond22.preheader

sw.bb27.i.return_crit_edge:                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb31.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmac.i, align 4
  %manager.i67.i = getelementptr inbounds %struct.pl330_dmac, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %manager.i67.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %manager.i67.i, align 4
  %cmp.i68.i = icmp eq ptr %20, %thrd
  br i1 %cmp.i68.i, label %sw.bb31.i.return_crit_edge, label %sw.bb31.i.while.cond22.preheader_crit_edge

sw.bb31.i.while.cond22.preheader_crit_edge:       ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond22.preheader

sw.bb31.i.return_crit_edge:                       ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb35.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmac.i, align 4
  %manager.i70.i = getelementptr inbounds %struct.pl330_dmac, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %manager.i70.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %manager.i70.i, align 4
  %cmp.i71.i = icmp eq ptr %24, %thrd
  br i1 %cmp.i71.i, label %sw.bb35.i.return_crit_edge, label %sw.bb35.i.while.cond_crit_edge

sw.bb35.i.while.cond_crit_edge:                   ; preds = %sw.bb35.i
  br label %while.cond

sw.bb35.i.return_crit_edge:                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.cond:                                       ; preds = %do.end, %sw.bb35.i.while.cond_crit_edge
  %25 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmac.i, align 4
  %base.i2 = getelementptr inbounds %struct.pl330_dmac, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %base.i2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i2, align 4
  %manager.i.i3 = getelementptr inbounds %struct.pl330_dmac, ptr %26, i32 0, i32 11
  %29 = ptrtoint ptr %manager.i.i3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %manager.i.i3, align 4
  %cmp.i.i4 = icmp eq ptr %30, %thrd
  br i1 %cmp.i.i4, label %if.then.i5, label %if.else.i10

if.then.i5:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !181
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i13

if.else.i10:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %thrd, align 4
  %conv.i6 = zext i8 %34 to i32
  %mul.i7 = shl nuw nsw i32 %conv.i6, 3
  %add.i8 = add nuw nsw i32 %mul.i7, 256
  %add.ptr5.i9 = getelementptr i8, ptr %28, i32 %add.i8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i9) #10, !srcloc !181
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.else.i10, %if.then.i5
  %val.0.in.i11 = phi i32 [ %32, %if.then.i5 ], [ %36, %if.else.i10 ]
  %val.0.i12 = and i32 %val.0.in.i11, 15
  %37 = zext i32 %val.0.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %val.0.i12, label %if.end.i13.do.end_crit_edge [
    i32 14, label %if.end.i13._state.exit45_crit_edge
    i32 9, label %if.end.i13._state.exit45_crit_edge233
    i32 8, label %sw.bb27.i34
    i32 7, label %if.end.i13._state.exit45_crit_edge234
    i32 6, label %if.end.i13._state.exit45_crit_edge235
    i32 15, label %if.end.i13.while.end_crit_edge
    i32 5, label %if.end.i13._state.exit45_crit_edge236
  ]

if.end.i13._state.exit45_crit_edge236:            ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

if.end.i13.while.end_crit_edge:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i13._state.exit45_crit_edge235:            ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

if.end.i13._state.exit45_crit_edge234:            ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

if.end.i13._state.exit45_crit_edge233:            ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

if.end.i13._state.exit45_crit_edge:               ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

if.end.i13.do.end_crit_edge:                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb27.i34:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %_state.exit45

_state.exit45:                                    ; preds = %sw.bb27.i34, %if.end.i13._state.exit45_crit_edge, %if.end.i13._state.exit45_crit_edge233, %if.end.i13._state.exit45_crit_edge234, %if.end.i13._state.exit45_crit_edge235, %if.end.i13._state.exit45_crit_edge236
  %tobool.not229 = phi i1 [ true, %if.end.i13._state.exit45_crit_edge ], [ false, %sw.bb27.i34 ], [ true, %if.end.i13._state.exit45_crit_edge233 ], [ true, %if.end.i13._state.exit45_crit_edge234 ], [ true, %if.end.i13._state.exit45_crit_edge235 ], [ true, %if.end.i13._state.exit45_crit_edge236 ]
  %38 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmac.i, align 4
  %manager.i55.i19 = getelementptr inbounds %struct.pl330_dmac, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %manager.i55.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %manager.i55.i19, align 4
  %cmp.i56.i20 = icmp eq ptr %41, %thrd
  %tobool.not = or i1 %cmp.i56.i20, %tobool.not229
  br i1 %tobool.not, label %_state.exit45.do.end_crit_edge, label %_state.exit45.while.end_crit_edge

_state.exit45.while.end_crit_edge:                ; preds = %_state.exit45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

_state.exit45.do.end_crit_edge:                   ; preds = %_state.exit45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %_state.exit45.do.end_crit_edge, %if.end.i13.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !220
  br label %while.cond

while.end:                                        ; preds = %_state.exit45.while.end_crit_edge, %if.end.i13.while.end_crit_edge
  %42 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dmac.i, align 4
  %base.i47 = getelementptr inbounds %struct.pl330_dmac, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i47, align 4
  %manager.i.i48 = getelementptr inbounds %struct.pl330_dmac, ptr %43, i32 0, i32 11
  %46 = ptrtoint ptr %manager.i.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %manager.i.i48, align 4
  %cmp.i.i49 = icmp eq ptr %47, %thrd
  br i1 %cmp.i.i49, label %if.then.i50, label %if.else.i55

if.then.i50:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !181
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i58

if.else.i55:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %thrd, align 4
  %conv.i51 = zext i8 %51 to i32
  %mul.i52 = shl nuw nsw i32 %conv.i51, 3
  %add.i53 = add nuw nsw i32 %mul.i52, 256
  %add.ptr5.i54 = getelementptr i8, ptr %45, i32 %add.i53
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i54) #10, !srcloc !181
  %53 = lshr i32 %52, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.else.i55, %if.then.i50
  %val.0.in.i56 = phi i32 [ %49, %if.then.i50 ], [ %53, %if.else.i55 ]
  %val.0.i57 = and i32 %val.0.in.i56, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val.0.i57)
  %cond = icmp eq i32 %val.0.i57, 8
  br i1 %cond, label %sw.bb27.i79, label %if.end.i58.sw.bb20_crit_edge

if.end.i58.sw.bb20_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

sw.bb27.i79:                                      ; preds = %if.end.i58
  %54 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dmac.i, align 4
  %manager.i64.i76 = getelementptr inbounds %struct.pl330_dmac, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %manager.i64.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %manager.i64.i76, align 4
  %cmp.i65.i77 = icmp eq ptr %57, %thrd
  br i1 %cmp.i65.i77, label %sw.bb27.i79.sw.bb20_crit_edge, label %sw.bb27.i79.while.cond7_crit_edge

sw.bb27.i79.while.cond7_crit_edge:                ; preds = %sw.bb27.i79
  br label %while.cond7

sw.bb27.i79.sw.bb20_crit_edge:                    ; preds = %sw.bb27.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

while.cond7:                                      ; preds = %do.end16, %sw.bb27.i79.while.cond7_crit_edge
  %58 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dmac.i, align 4
  %base.i92 = getelementptr inbounds %struct.pl330_dmac, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %base.i92 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i92, align 4
  %manager.i.i93 = getelementptr inbounds %struct.pl330_dmac, ptr %59, i32 0, i32 11
  %62 = ptrtoint ptr %manager.i.i93 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %manager.i.i93, align 4
  %cmp.i.i94 = icmp eq ptr %63, %thrd
  br i1 %cmp.i.i94, label %if.then.i95, label %if.else.i100

if.then.i95:                                      ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !181
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i103

if.else.i100:                                     ; preds = %while.cond7
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %thrd, align 4
  %conv.i96 = zext i8 %67 to i32
  %mul.i97 = shl nuw nsw i32 %conv.i96, 3
  %add.i98 = add nuw nsw i32 %mul.i97, 256
  %add.ptr5.i99 = getelementptr i8, ptr %61, i32 %add.i98
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i99) #10, !srcloc !181
  %69 = lshr i32 %68, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.else.i100, %if.then.i95
  %val.0.in.i101 = phi i32 [ %65, %if.then.i95 ], [ %69, %if.else.i100 ]
  %val.0.i102 = and i32 %val.0.in.i101, 15
  %cond222 = icmp eq i32 %val.0.i102, 0
  br i1 %cond222, label %if.end.i103.sw.bb20_crit_edge, label %do.end16

if.end.i103.sw.bb20_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb20

do.end16:                                         ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !222
  br label %while.cond7

sw.bb20:                                          ; preds = %if.end.i103.sw.bb20_crit_edge, %sw.bb27.i79.sw.bb20_crit_edge, %if.end.i58.sw.bb20_crit_edge, %if.end.i.sw.bb20_crit_edge
  tail call fastcc void @_stop(ptr noundef %thrd)
  br label %while.cond22.preheader

while.cond22.preheader:                           ; preds = %sw.bb20, %sw.bb31.i.while.cond22.preheader_crit_edge, %sw.bb27.i.while.cond22.preheader_crit_edge
  br label %while.cond22

while.cond22:                                     ; preds = %do.end31, %while.cond22.preheader
  %70 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dmac.i, align 4
  %base.i137 = getelementptr inbounds %struct.pl330_dmac, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %base.i137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i137, align 4
  %manager.i.i138 = getelementptr inbounds %struct.pl330_dmac, ptr %71, i32 0, i32 11
  %74 = ptrtoint ptr %manager.i.i138 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %manager.i.i138, align 4
  %cmp.i.i139 = icmp eq ptr %75, %thrd
  br i1 %cmp.i.i139, label %if.then.i140, label %if.else.i145

if.then.i140:                                     ; preds = %while.cond22
  call void @__sanitizer_cov_trace_pc() #12
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !181
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i148

if.else.i145:                                     ; preds = %while.cond22
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %thrd, align 4
  %conv.i141 = zext i8 %79 to i32
  %mul.i142 = shl nuw nsw i32 %conv.i141, 3
  %add.i143 = add nuw nsw i32 %mul.i142, 256
  %add.ptr5.i144 = getelementptr i8, ptr %73, i32 %add.i143
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i144) #10, !srcloc !181
  %81 = lshr i32 %80, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i148

if.end.i148:                                      ; preds = %if.else.i145, %if.then.i140
  %val.0.in.i146 = phi i32 [ %77, %if.then.i140 ], [ %81, %if.else.i145 ]
  %val.0.i147 = and i32 %val.0.in.i146, 15
  %cond223 = icmp eq i32 %val.0.i147, 0
  br i1 %cond223, label %if.end.i148.sw.bb35_crit_edge, label %do.end31

if.end.i148.sw.bb35_crit_edge:                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb35

do.end31:                                         ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !224
  br label %while.cond22

sw.bb35:                                          ; preds = %if.end.i148.sw.bb35_crit_edge, %if.end.i.sw.bb35_crit_edge
  %82 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dmac.i, align 4
  %base.i182 = getelementptr inbounds %struct.pl330_dmac, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %base.i182 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i182, align 4
  %manager.i.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %83, i32 0, i32 11
  %86 = ptrtoint ptr %manager.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %manager.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %87, %thrd
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #10, !srcloc !181
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %thrd, align 4
  %conv.i.i = zext i8 %91 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.i.i = add nuw nsw i32 %mul.i.i, 256
  %add.ptr5.i.i = getelementptr i8, ptr %85, i32 %add.i.i
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #10, !srcloc !181
  %93 = lshr i32 %92, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %val.0.in.i.i = phi i32 [ %89, %if.then.i.i ], [ %93, %if.else.i.i ]
  %val.0.i.i = and i32 %val.0.in.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i.i)
  %cond13.i = icmp eq i32 %val.0.i.i, 0
  br i1 %cond13.i, label %if.end.i183, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i183:                                      ; preds = %if.end.i.i
  %lstenq.i = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 5
  %94 = ptrtoint ptr %lstenq.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %lstenq.i, align 4
  %sub.i = sub i32 1, %95
  %desc2.i = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %sub.i, i32 2
  %96 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc2.i, align 4
  %cmp3.not.i = icmp eq ptr %97, null
  br i1 %cmp3.not.i, label %if.else.i184, label %if.end.i183.if.end17.i_crit_edge

if.end.i183.if.end17.i_crit_edge:                 ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.else.i184:                                     ; preds = %if.end.i183
  %desc10.i = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %95, i32 2
  %98 = ptrtoint ptr %desc10.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %desc10.i, align 4
  %cmp11.not.i = icmp eq ptr %99, null
  br i1 %cmp11.not.i, label %if.else.i184.return_crit_edge, label %if.else.i184.if.end17.i_crit_edge

if.else.i184.if.end17.i_crit_edge:                ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.else.i184.return_crit_edge:                    ; preds = %if.else.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end17.i:                                       ; preds = %if.else.i184.if.end17.i_crit_edge, %if.end.i183.if.end17.i_crit_edge
  %idx.0.i = phi i32 [ %95, %if.else.i184.if.end17.i_crit_edge ], [ %sub.i, %if.end.i183.if.end17.i_crit_edge ]
  %req.0.i = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %idx.0.i
  %tobool.not.i = icmp eq ptr %req.0.i, null
  br i1 %tobool.not.i, label %if.end17.i.return_crit_edge, label %if.end19.i

if.end17.i.return_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end19.i:                                       ; preds = %if.end17.i
  %req_running.i = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 6
  %100 = ptrtoint ptr %req_running.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %req_running.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.i, i32 %101)
  %cmp20.i = icmp eq i32 %idx.0.i, %101
  br i1 %cmp20.i, label %if.end19.i.return_crit_edge, label %if.end22.i

if.end19.i.return_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end22.i:                                       ; preds = %if.end19.i
  %desc23.i = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %idx.0.i, i32 2
  %102 = ptrtoint ptr %desc23.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc23.i, align 4
  %nonsecure.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %103, i32 0, i32 3, i32 1
  %104 = ptrtoint ptr %nonsecure.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %nonsecure.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool24.not.i = icmp ne i8 %105, 0
  %106 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dmac.i, align 4
  %mode.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %107, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mode.i.i, align 4
  %and.i.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %brmerge.i = select i1 %tobool.i.not.i, i1 true, i1 %tobool24.not.i
  br i1 %brmerge.i, label %if.end22.i.if.end29.i_crit_edge, label %do.end.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %107, i32 0, i32 15
  %110 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 1035) #13
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end22.i.if.end29.i_crit_edge
  %112 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %thrd, align 4
  %114 = ptrtoint ptr %req.0.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %req.0.i, align 4
  %116 = shl nuw nsw i8 %105, 1
  %conv5.i.i = or i8 %116, -96
  %117 = and i8 %113, 7
  %insn.sroa.7.5.insert.insert.i = tail call i32 @llvm.bswap.i32(i32 %115) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %85, i32 32
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !181
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  %ev.i = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 1
  %120 = ptrtoint ptr %ev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ev.i, align 4
  %shl.i = shl nuw i32 1, %121
  %or.i = or i32 %shl.i, %119
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %122) #10, !srcloc !189
  %123 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dmac.i, align 4
  %base.i3.i = getelementptr inbounds %struct.pl330_dmac, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %base.i3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %127 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i.i = udiv i32 %127, 1000
  %mul1.i.i.i = mul nuw nsw i32 %div.i.i.i, 500
  %add.ptr.i.i.i = getelementptr i8, ptr %126, i32 3328
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.end.i.i.i.do.body.i.i.i_crit_edge, %if.end29.i
  %loops.0.i.i.i = phi i32 [ %mul1.i.i.i, %if.end29.i ], [ %dec.i.i.i, %do.end.i.i.i.do.body.i.i.i_crit_edge ]
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  %129 = and i32 %128, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i.i = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i.i, label %_until_dmac_idle.exit.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !213
  %dec.i.i.i = add i32 %loops.0.i.i.i, -1
  %tobool11.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %do.end.i.i.i.do.end.i.i_crit_edge, label %do.end.i.i.i.do.body.i.i.i_crit_edge

do.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

do.end.i.i.i.do.end.i.i_crit_edge:                ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

_until_dmac_idle.exit.i.i:                        ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %loops.0.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %_until_dmac_idle.exit.i.i.do.end.i.i_crit_edge, label %if.end.i5.i

_until_dmac_idle.exit.i.i.do.end.i.i_crit_edge:   ; preds = %_until_dmac_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %_until_dmac_idle.exit.i.i.do.end.i.i_crit_edge, %do.end.i.i.i.do.end.i.i_crit_edge
  %130 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dmac.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 15
  %132 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.43) #13
  br label %_execute_DBGINSN.exit.i

if.end.i5.i:                                      ; preds = %_until_dmac_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i4.i = zext i8 %conv5.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv.i4.i, 16
  %conv3.i.i = zext i8 %117 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, 24
  %or.i.i = or i32 %shl4.i.i, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %126, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %134) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %add.ptr18.i.i = getelementptr i8, ptr %126, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %insn.sroa.7.5.insert.insert.i) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %add.ptr22.i.i = getelementptr i8, ptr %126, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 0) #10, !srcloc !189
  br label %_execute_DBGINSN.exit.i

_execute_DBGINSN.exit.i:                          ; preds = %if.end.i5.i, %do.end.i.i
  %135 = ptrtoint ptr %req_running.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %idx.0.i, ptr %req_running.i, align 4
  br label %return

return:                                           ; preds = %_execute_DBGINSN.exit.i, %if.end19.i.return_crit_edge, %if.end17.i.return_crit_edge, %if.else.i184.return_crit_edge, %if.end.i.i.return_crit_edge, %sw.bb35.i.return_crit_edge, %sw.bb31.i.return_crit_edge, %sw.bb27.i.return_crit_edge, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl330_dotask(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -188
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %dmac_tbd = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %dmac_tbd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmac_tbd, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %t, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %reset_mngr = getelementptr i8, ptr %t, i32 25
  %3 = ptrtoint ptr %reset_mngr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %reset_mngr, align 1
  %4 = ptrtoint ptr %dmac_tbd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dmac_tbd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reset_mngr10 = getelementptr i8, ptr %t, i32 25
  %5 = ptrtoint ptr %reset_mngr10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reset_mngr10, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %manager = getelementptr i8, ptr %t, i32 -4
  %7 = ptrtoint ptr %manager to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %manager, align 4
  tail call fastcc void @_stop(ptr noundef %8)
  %num_chan = getelementptr i8, ptr %t, i32 -204
  %9 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %num_chan, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 15
  %notmask = shl nsw i32 -1, %bf.clear
  %10 = trunc i32 %notmask to i8
  %conv13 = xor i8 %10, -1
  %reset_chan = getelementptr i8, ptr %t, i32 26
  %11 = ptrtoint ptr %reset_chan to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv13, ptr %reset_chan, align 2
  %12 = ptrtoint ptr %reset_mngr10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %reset_mngr10, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %num_chan19 = getelementptr i8, ptr %t, i32 -204
  %13 = ptrtoint ptr %num_chan19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load20120 = load i32, ptr %num_chan19, align 4
  %14 = and i32 %bf.load20120, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp23123.not = icmp eq i32 %14, 0
  br i1 %cmp23123.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %reset_chan26 = getelementptr i8, ptr %t, i32 26
  %channels = getelementptr i8, ptr %t, i32 -8
  %base = getelementptr i8, ptr %t, i32 -216
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %flags.0126 = phi i32 [ %call3, %for.body.lr.ph ], [ %flags.1, %for.inc.for.body_crit_edge ]
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %reset_chan26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reset_chan26, align 2
  %conv27 = zext i8 %16 to i32
  %shl28 = shl nuw i32 1, %i.0124
  %and = and i32 %shl28, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %for.body.for.inc_crit_edge, label %if.then30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then30:                                        ; preds = %for.body
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  tail call fastcc void @_stop(ptr noundef %arrayidx)
  %add.ptr31 = getelementptr i8, ptr %20, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0126) #10
  %lstenq = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 5
  %22 = ptrtoint ptr %lstenq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lstenq, align 4
  %sub42 = sub i32 1, %23
  %desc = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 4, i32 %sub42, i32 2
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then30.dma_pl330_rqcb.exit_crit_edge, label %if.end.i

if.then30.dma_pl330_rqcb.exit_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

if.end.i:                                         ; preds = %if.then30
  %pchan.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pchan.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %if.end.i.dma_pl330_rqcb.exit_crit_edge, label %do.body4.i

if.end.i.dma_pl330_rqcb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

do.body4.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %27, i32 0, i32 6
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %status.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %status.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #10
  %state.i.i = getelementptr inbounds %struct.tasklet_struct, ptr %27, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body4.i.dma_pl330_rqcb.exit_crit_edge

do.body4.i.dma_pl330_rqcb.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

if.then.i.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull %27) #10
  br label %dma_pl330_rqcb.exit

dma_pl330_rqcb.exit:                              ; preds = %if.then.i.i, %do.body4.i.dma_pl330_rqcb.exit_crit_edge, %if.end.i.dma_pl330_rqcb.exit_crit_edge, %if.then30.dma_pl330_rqcb.exit_crit_edge
  %29 = ptrtoint ptr %lstenq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lstenq, align 4
  %desc47 = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 4, i32 %30, i32 2
  %31 = ptrtoint ptr %desc47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %desc47, align 4
  %tobool.not.i107 = icmp eq ptr %32, null
  br i1 %tobool.not.i107, label %dma_pl330_rqcb.exit.dma_pl330_rqcb.exit119_crit_edge, label %if.end.i110

dma_pl330_rqcb.exit.dma_pl330_rqcb.exit119_crit_edge: ; preds = %dma_pl330_rqcb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit119

if.end.i110:                                      ; preds = %dma_pl330_rqcb.exit
  %pchan.i108 = getelementptr inbounds %struct.dma_pl330_desc, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %pchan.i108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pchan.i108, align 4
  %tobool1.not.i109 = icmp eq ptr %34, null
  br i1 %tobool1.not.i109, label %if.end.i110.dma_pl330_rqcb.exit119_crit_edge, label %do.body4.i117

if.end.i110.dma_pl330_rqcb.exit119_crit_edge:     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit119

do.body4.i117:                                    ; preds = %if.end.i110
  %lock.i111 = getelementptr inbounds %struct.dma_pl330_chan, ptr %34, i32 0, i32 6
  %call5.i112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i111) #10
  %status.i113 = getelementptr inbounds %struct.dma_pl330_desc, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %status.i113 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %status.i113, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i111, i32 noundef %call5.i112) #10
  %state.i.i114 = getelementptr inbounds %struct.tasklet_struct, ptr %34, i32 0, i32 1
  %call.i.i115 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool.not.i.i116 = icmp eq i32 %call.i.i115, 0
  br i1 %tobool.not.i.i116, label %if.then.i.i118, label %do.body4.i117.dma_pl330_rqcb.exit119_crit_edge

do.body4.i117.dma_pl330_rqcb.exit119_crit_edge:   ; preds = %do.body4.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit119

if.then.i.i118:                                   ; preds = %do.body4.i117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull %34) #10
  br label %dma_pl330_rqcb.exit119

dma_pl330_rqcb.exit119:                           ; preds = %if.then.i.i118, %do.body4.i117.dma_pl330_rqcb.exit119_crit_edge, %if.end.i110.dma_pl330_rqcb.exit119_crit_edge, %dma_pl330_rqcb.exit.dma_pl330_rqcb.exit119_crit_edge
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc64 = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 4, i32 0, i32 2
  %36 = ptrtoint ptr %desc64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %desc64, align 4
  %desc67 = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 4, i32 1, i32 2
  %37 = ptrtoint ptr %desc67 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %desc67, align 4
  %req_running = getelementptr %struct.pl330_thread, ptr %18, i32 %i.0124, i32 6
  %38 = ptrtoint ptr %req_running to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %req_running, align 4
  %39 = ptrtoint ptr %reset_chan26 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reset_chan26, align 2
  %41 = trunc i32 %shl28 to i8
  %42 = xor i8 %41, -1
  %conv73 = and i8 %40, %42
  store i8 %conv73, ptr %reset_chan26, align 2
  br label %for.inc

for.inc:                                          ; preds = %dma_pl330_rqcb.exit119, %for.body.for.inc_crit_edge
  %flags.1 = phi i32 [ %call57, %dma_pl330_rqcb.exit119 ], [ %flags.0126, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0124, 1
  %43 = ptrtoint ptr %num_chan19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load20 = load i32, ptr %num_chan19, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 7
  %bf.clear22 = and i32 %bf.lshr21, 15
  %cmp23 = icmp ult i32 %inc, %bf.clear22
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %if.end17.for.end_crit_edge ], [ %flags.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tx, i32 -8
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i41 = getelementptr i8, ptr %1, i32 -24
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i41
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not47 = icmp eq ptr %3, %add.ptr.i
  br i1 %cmp.i.not47, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cyclic = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 14
  %callback = getelementptr i8, ptr %tx, i32 24
  %callback_param = getelementptr i8, ptr %tx, i32 32
  %submitted_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2
  %prev.i2.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %34, %list_move_tail.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cyclic, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback, align 4
  %callback12 = getelementptr inbounds %struct.dma_pl330_desc, ptr %4, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %callback12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %callback12, align 4
  %10 = ptrtoint ptr %callback_param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback_param, align 4
  %callback_param15 = getelementptr inbounds %struct.dma_pl330_desc, ptr %4, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %callback_param15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %callback_param15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %last16 = getelementptr inbounds %struct.dma_pl330_desc, ptr %4, i32 0, i32 6
  %13 = ptrtoint ptr %last16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last16, align 4
  %txd17 = getelementptr inbounds %struct.dma_pl330_desc, ptr %4, i32 0, i32 1
  %chan1.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %4, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %17, 1
  %18 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #10
  %19 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cookie2.i, align 4
  %20 = ptrtoint ptr %txd17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %txd17, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %27 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %28, ptr noundef %submitted_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %4, ptr %prev.i2.i, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %submitted_list, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %4, ptr %28, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp.i.not = icmp eq ptr %34, %add.ptr.i
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %last20 = getelementptr i8, ptr %tx, i32 144
  %35 = ptrtoint ptr %last20 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %last20, align 4
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %cookie2.i43 = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %cookie2.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cookie2.i43, align 4
  %add.i44 = add i32 %39, 1
  %40 = tail call i32 @llvm.smax.i32(i32 %add.i44, i32 1) #10
  %41 = ptrtoint ptr %cookie2.i43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cookie2.i43, align 4
  %42 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %tx, align 4
  %submitted_list24 = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %retval.0.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i45 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %44, ptr noundef %submitted_list24) #10
  br i1 %call.i.i45, label %if.end.i.i46, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i46:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %prev.i, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %submitted_list24, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 -4
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %add.ptr.i, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i46, %while.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  ret i32 %40
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move_tail(ptr noundef %list, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %prev.i2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i2, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %head) #10
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add_tail.exit_crit_edge

__list_del_entry.exit.list_add_tail.exit_crit_edge: ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__list_del_entry.exit.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl330_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  %xs.i.i = alloca %struct._xfer_spec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %work_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 3
  %0 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_list, align 4
  %cmp15.not187 = icmp eq ptr %1, %work_list
  br i1 %cmp15.not187, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cyclic = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 14
  %completed_list = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 4
  %prev.i2.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %desc.0188 = phi ptr [ %1, %for.body.lr.ph ], [ %_dt.0191, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %desc.0188 to i32
  call void @__asan_load4_noabort(i32 %2)
  %_dt.0191 = load ptr, ptr %desc.0188, align 4
  %status = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0188, i32 0, i32 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp17 = icmp eq i32 %4, 3
  br i1 %cmp17, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cyclic, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then19, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then19:                                        ; preds = %if.then
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0188, i32 0, i32 1
  %7 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !199

do.body2.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !205
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.0188, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %completed_cookie.i, align 4
  %12 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %txd, align 4
  br label %if.end

if.end:                                           ; preds = %dma_cookie_complete.exit, %if.then.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.0188) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %desc.0188, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %desc.0188 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.0188, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc.0188, ptr noundef %20, ptr noundef %completed_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %desc.0188, ptr %prev.i2.i, align 4
  %22 = ptrtoint ptr %desc.0188 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %completed_list, ptr %desc.0188, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %desc.0188, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %desc.0188, ptr %20, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp15.not = icmp eq ptr %_dt.0191, %work_list
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %desc.038.i = load ptr, ptr %work_list, align 4
  %cmp.not39.i = icmp eq ptr %desc.038.i, %work_list
  br i1 %cmp.not39.i, label %for.end.fill_queue.exit_crit_edge, label %for.body.lr.ph.i

for.end.fill_queue.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_queue.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %thread.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 7
  %26 = getelementptr inbounds %struct._xfer_spec, ptr %xs.i.i, i32 0, i32 1
  %dmac.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 5
  %state.i27.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %desc.040.i = phi ptr [ %desc.038.i, %for.body.lr.ph.i ], [ %desc.0.i, %for.inc.i.for.body.i_crit_edge ]
  %status.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 4
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i = icmp eq i32 %28, 2
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %29 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %thread.i, align 4
  %dmac.i.i = getelementptr inbounds %struct.pl330_thread, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dmac.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dmac.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xs.i.i) #10
  %rqtype.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 8
  %33 = ptrtoint ptr %rqtype.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rqtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %switch.i.i = icmp ult i32 %34, 3
  br i1 %switch.i.i, label %sw.epilog.i.i, label %if.end.i.pl330_submit_req.exit.thread.i_crit_edge

if.end.i.pl330_submit_req.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_submit_req.exit.thread.i

sw.epilog.i.i:                                    ; preds = %if.end.i
  %state.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 14
  %35 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 2
  br i1 %cmp.i.i, label %sw.epilog.i.i.pl330_submit_req.exit.thread31.i_crit_edge, label %lor.lhs.false.i.i

sw.epilog.i.i.pl330_submit_req.exit.thread31.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_submit_req.exit.thread31.i

lor.lhs.false.i.i:                                ; preds = %sw.epilog.i.i
  %reset_chan.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 13, i32 2
  %37 = ptrtoint ptr %reset_chan.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reset_chan.i.i, align 2
  %conv.i.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %30, align 4
  %conv1.i.i = zext i8 %40 to i32
  %shl.i.i = shl nuw i32 1, %conv1.i.i
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i149, label %lor.lhs.false.i.i.pl330_submit_req.exit.thread31.i_crit_edge

lor.lhs.false.i.i.pl330_submit_req.exit.thread31.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_submit_req.exit.thread31.i

pl330_submit_req.exit.thread31.i:                 ; preds = %lor.lhs.false.i.i.pl330_submit_req.exit.thread31.i_crit_edge, %sw.epilog.i.i.pl330_submit_req.exit.thread31.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 1495) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xs.i.i) #10
  br label %fill_queue.exit

if.end.i.i149:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp4.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp4.not.i.i, label %if.end.i.i149.do.body23.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i149.do.body23.i.i_crit_edge:            ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i149
  %peri.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 9
  %43 = ptrtoint ptr %peri.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i.i = load i8, ptr %peri.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 3
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %num_peri.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %num_peri.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load6.i.i = load i32, ptr %num_peri.i.i, align 4
  %bf.lshr7.i.i = lshr i32 %bf.load6.i.i, 1
  %bf.clear.i.i = and i32 %bf.lshr7.i.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear.i.i, i32 %bf.cast.i.i)
  %cmp8.not.i.i = icmp ugt i32 %bf.clear.i.i, %bf.cast.i.i
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.do.body23.i.i_crit_edge, label %do.end13.i.i

land.lhs.true.i.i.do.body23.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i.i

do.end13.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev16.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %45 = ptrtoint ptr %dev16.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev16.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 1504, i32 noundef %bf.cast.i.i) #13
  br label %pl330_submit_req.exit.thread.i

do.body23.i.i:                                    ; preds = %land.lhs.true.i.i.do.body23.i.i_crit_edge, %if.end.i.i149.do.body23.i.i_crit_edge
  %lock.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 6
  %call26.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %desc.i.i.i = getelementptr inbounds %struct.pl330_thread, ptr %30, i32 0, i32 4, i32 0, i32 2
  %47 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %48, null
  br i1 %cmp.not.i.i.i, label %do.body23.i.i.if.end33.i.i_crit_edge, label %_queue_full.exit.i.i

do.body23.i.i.if.end33.i.i_crit_edge:             ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

_queue_full.exit.i.i:                             ; preds = %do.body23.i.i
  %desc3.i.i.i = getelementptr %struct.pl330_thread, ptr %30, i32 0, i32 4, i32 1, i32 2
  %49 = ptrtoint ptr %desc3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc3.i.i.i, align 4
  %cmp4.i.not.i.i = icmp eq ptr %50, null
  br i1 %cmp4.i.not.i.i, label %_queue_full.exit.i.i.if.end33.i.i_crit_edge, label %pl330_submit_req.exit.i

_queue_full.exit.i.i.if.end33.i.i_crit_edge:      ; preds = %_queue_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %_queue_full.exit.i.i.if.end33.i.i_crit_edge, %do.body23.i.i.if.end33.i.i_crit_edge
  %51 = ptrtoint ptr %dmac.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmac.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %52, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode.i.i.i, align 4
  %and.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %not.tobool.i.not.i.i = xor i1 %tobool.i.not.i.i, true
  %spec.select.i.i = zext i1 %not.tobool.i.not.i.i to i8
  %55 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.select.i.i, ptr %55, align 1
  %rqcfg39.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3
  %57 = ptrtoint ptr %rqcfg39.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i.i = load i8, ptr %rqcfg39.i.i, align 4
  %58 = lshr i8 %bf.load.i.i.i, 6
  %.lobit.i.i.i = and i8 %58, 1
  %59 = zext i8 %.lobit.i.i.i to i32
  %or6.i.i.i = or i32 %59, 16384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool4.not72.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  %ccr.1.i.i.i = select i1 %tobool4.not72.i.i.i, i32 %or6.i.i.i, i32 %59
  %privileged.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %privileged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %privileged.i.i.i, align 2, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool8.not.i.i.i = icmp eq i8 %61, 0
  %or10.i.i.i = or i32 %ccr.1.i.i.i, 4194560
  %ccr.2.i.i.i = select i1 %tobool8.not.i.i.i, i32 %ccr.1.i.i.i, i32 %or10.i.i.i
  %or14.i.i.i = or i32 %ccr.2.i.i.i, 8389120
  %ccr.3.i.i.i = select i1 %tobool.i.not.i.i, i32 %ccr.2.i.i.i, i32 %or14.i.i.i
  %insnaccess.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %insnaccess.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %insnaccess.i.i.i, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool16.not.i.i.i = icmp eq i8 %63, 0
  %or18.i.i.i = or i32 %ccr.3.i.i.i, 16778240
  %ccr.4.i.i.i = select i1 %tobool16.not.i.i.i, i32 %ccr.3.i.i.i, i32 %or18.i.i.i
  %brst_len.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 4
  %64 = ptrtoint ptr %brst_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load20.i.i.i = load i8, ptr %brst_len.i.i.i, align 4
  %bf.lshr21.i.i.i = lshr i8 %bf.load20.i.i.i, 3
  %narrow.i.i.i = add nuw nsw i8 %bf.lshr21.i.i.i, 15
  %65 = and i8 %narrow.i.i.i, 15
  %and.i101.i.i = zext i8 %65 to i32
  %shl.i.i.i = shl nuw nsw i32 %and.i101.i.i, 4
  %shl30.i.i.i = shl nuw nsw i32 %and.i101.i.i, 18
  %bf.clear33.i.i.i = and i8 %bf.load20.i.i.i, 7
  %bf.cast34.i.i.i = zext i8 %bf.clear33.i.i.i to i32
  %shl35.i.i.i = shl nuw nsw i32 %bf.cast34.i.i.i, 1
  %shl41.i.i.i = shl nuw nsw i32 %bf.cast34.i.i.i, 15
  %scctl.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 6
  %66 = ptrtoint ptr %scctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scctl.i.i.i, align 4
  %shl43.i.i.i = shl i32 %67, 11
  %dcctl.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %dcctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dcctl.i.i.i, align 4
  %shl45.i.i.i = shl i32 %69, 25
  %swap.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 3, i32 7
  %70 = ptrtoint ptr %swap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %swap.i.i.i, align 4
  %shl47.i.i.i = shl i32 %71, 28
  %or23.i.i.i = or i32 %shl35.i.i.i, %shl43.i.i.i
  %or31.i.i.i = or i32 %shl45.i.i.i, %shl41.i.i.i
  %or36.i.i.i = or i32 %or31.i.i.i, %or23.i.i.i
  %or42.i.i.i = or i32 %or36.i.i.i, %shl47.i.i.i
  %or44.i.i.i = or i32 %or42.i.i.i, %shl.i.i.i
  %or46.i.i.i = or i32 %or44.i.i.i, %shl30.i.i.i
  %or48.i.i.i = or i32 %or46.i.i.i, %ccr.4.i.i.i
  %72 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc.i.i.i, align 4
  %cmp42.i.i = icmp ne ptr %73, null
  %cond.i.i = zext i1 %cmp42.i.i to i32
  %74 = ptrtoint ptr %xs.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or48.i.i.i, ptr %xs.i.i, align 4
  %75 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %desc.040.i, ptr %26, align 4
  %call46.i.i = call fastcc i32 @_setup_req(ptr noundef %32, i32 noundef 1, ptr noundef %30, i32 noundef %cond.i.i, ptr noundef nonnull %xs.i.i) #10
  %mcbufsz.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %32, i32 0, i32 3
  %76 = ptrtoint ptr %mcbufsz.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mcbufsz.i.i, align 4
  %div100.i.i = lshr i32 %77, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call46.i.i, i32 %div100.i.i)
  %cmp47.i.i = icmp ugt i32 %call46.i.i, %div100.i.i
  br i1 %cmp47.i.i, label %pl330_submit_req.exit.thread33.i, label %if.then3.i

pl330_submit_req.exit.thread33.i:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev54.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %78 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev54.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef 1533, i32 noundef %call46.i.i, i32 noundef %div100.i.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call26.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xs.i.i) #10
  br label %if.else7.i

pl330_submit_req.exit.thread.i:                   ; preds = %do.end13.i.i, %if.end.i.pl330_submit_req.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xs.i.i) #10
  br label %if.else7.i

pl330_submit_req.exit.i:                          ; preds = %_queue_full.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call26.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xs.i.i) #10
  br label %fill_queue.exit

if.then3.i:                                       ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %lstenq.i.i = getelementptr inbounds %struct.pl330_thread, ptr %30, i32 0, i32 5
  %80 = ptrtoint ptr %lstenq.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cond.i.i, ptr %lstenq.i.i, align 4
  %desc60.i.i = getelementptr %struct.pl330_thread, ptr %30, i32 0, i32 4, i32 %cond.i.i, i32 2
  %81 = ptrtoint ptr %desc60.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %desc.040.i, ptr %desc60.i.i, align 4
  %call61.i.i = call fastcc i32 @_setup_req(ptr noundef %32, i32 noundef 0, ptr noundef %30, i32 noundef %cond.i.i, ptr noundef nonnull %xs.i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call26.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xs.i.i) #10
  %82 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %status.i, align 4
  br label %for.inc.i

if.else7.i:                                       ; preds = %pl330_submit_req.exit.thread.i, %pl330_submit_req.exit.thread33.i
  %83 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %status.i, align 4
  %84 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dmac.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 15
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %txd.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.040.i, i32 0, i32 1
  %88 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %txd.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 2057, i32 noundef %89) #13
  %call.i.i150 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i27.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %tobool.not.i28.i = icmp eq i32 %call.i.i150, 0
  br i1 %tobool.not.i28.i, label %if.then.i.i, label %if.else7.i.for.inc.i_crit_edge

if.else7.i.for.inc.i_crit_edge:                   ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.else7.i.for.inc.i_crit_edge, %if.then3.i, %for.body.i.for.inc.i_crit_edge
  %90 = ptrtoint ptr %desc.040.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %desc.0.i = load ptr, ptr %desc.040.i, align 4
  %cmp.not.i = icmp eq ptr %desc.0.i, %work_list
  br i1 %cmp.not.i, label %for.inc.i.fill_queue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.fill_queue.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_queue.exit

fill_queue.exit:                                  ; preds = %for.inc.i.fill_queue.exit_crit_edge, %pl330_submit_req.exit.i, %pl330_submit_req.exit.thread31.i, %for.end.fill_queue.exit_crit_edge
  %91 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %work_list, align 4
  %cmp.i151.not = icmp eq ptr %92, %work_list
  %thread = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 7
  %93 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %thread, align 4
  %dmac = getelementptr inbounds %struct.pl330_thread, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dmac, align 4
  %lock31 = getelementptr inbounds %struct.pl330_dmac, ptr %96, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock31) #10
  %97 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %thread, align 4
  br i1 %cmp.i151.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %fill_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @_stop(ptr noundef %98)
  %99 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %thread, align 4
  %dmac34 = getelementptr inbounds %struct.pl330_thread, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %dmac34 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dmac34, align 4
  %lock35 = getelementptr inbounds %struct.pl330_dmac, ptr %102, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lock35) #10
  %active = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 15
  %103 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %active, align 1
  br label %if.end44

if.else:                                          ; preds = %fill_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @_start(ptr noundef %98)
  %104 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %thread, align 4
  %dmac42 = getelementptr inbounds %struct.pl330_thread, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %dmac42 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dmac42, align 4
  %lock43 = getelementptr inbounds %struct.pl330_dmac, ptr %107, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lock43) #10
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then30
  %completed_list45 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 4
  %108 = ptrtoint ptr %completed_list45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %completed_list45, align 4
  %cmp.i152.not192 = icmp eq ptr %109, %completed_list45
  br i1 %cmp.i152.not192, label %if.end44.while.end_crit_edge, label %while.body.lr.ph

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end44
  %cyclic55 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 14
  %prev.i2.i158 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 3, i32 1
  %active63 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 15
  %thread64 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 7
  %dmac76 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end96.while.body_crit_edge, %while.body.lr.ph
  %110 = phi ptr [ %109, %while.body.lr.ph ], [ %164, %if.end96.while.body_crit_edge ]
  %flags.0194 = phi i32 [ %call3, %while.body.lr.ph ], [ %flags.1, %if.end96.while.body_crit_edge ]
  %power_down.1.off0193 = phi i1 [ %cmp.i151.not, %while.body.lr.ph ], [ %power_down.2.off0, %if.end96.while.body_crit_edge ]
  %callback.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %110, i32 0, i32 1, i32 6
  %111 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %110, i32 0, i32 1, i32 7
  %113 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %110, i32 0, i32 1, i32 8
  %115 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %callback_param.i, align 4
  %117 = ptrtoint ptr %cyclic55 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cyclic55, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool56.not = icmp eq i8 %118, 0
  %status74 = getelementptr inbounds %struct.dma_pl330_desc, ptr %110, i32 0, i32 4
  br i1 %tobool56.not, label %if.else73, label %if.then57

if.then57:                                        ; preds = %while.body
  %119 = ptrtoint ptr %status74 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %status74, align 4
  %call.i.i154 = call zeroext i1 @__list_del_entry_valid(ptr noundef %110) #10
  br i1 %call.i.i154, label %if.end.i.i157, label %if.then57.__list_del_entry.exit.i160_crit_edge

if.then57.__list_del_entry.exit.i160_crit_edge:   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i160

if.end.i.i157:                                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i155 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i155, align 4
  %122 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %110, align 4
  %prev1.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i156, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %__list_del_entry.exit.i160

__list_del_entry.exit.i160:                       ; preds = %if.end.i.i157, %if.then57.__list_del_entry.exit.i160_crit_edge
  %126 = ptrtoint ptr %prev.i2.i158 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i2.i158, align 4
  %call.i.i.i159 = call zeroext i1 @__list_add_valid(ptr noundef %110, ptr noundef %127, ptr noundef %work_list) #10
  br i1 %call.i.i.i159, label %if.end.i.i.i162, label %__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge

__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge: ; preds = %__list_del_entry.exit.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit163

if.end.i.i.i162:                                  ; preds = %__list_del_entry.exit.i160
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %prev.i2.i158 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %110, ptr %prev.i2.i158, align 4
  %129 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %work_list, ptr %110, align 4
  %prev3.i.i.i161 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %130 = ptrtoint ptr %prev3.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev3.i.i.i161, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %110, ptr %127, align 4
  br label %list_move_tail.exit163

list_move_tail.exit163:                           ; preds = %if.end.i.i.i162, %__list_del_entry.exit.i160.list_move_tail.exit163_crit_edge
  br i1 %power_down.1.off0193, label %if.then62, label %list_move_tail.exit163.if.end77_crit_edge

list_move_tail.exit163.if.end77_crit_edge:        ; preds = %list_move_tail.exit163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then62:                                        ; preds = %list_move_tail.exit163
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %active63 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %active63, align 1
  %133 = ptrtoint ptr %thread64 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %thread64, align 4
  %dmac65 = getelementptr inbounds %struct.pl330_thread, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %dmac65 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dmac65, align 4
  %lock66 = getelementptr inbounds %struct.pl330_dmac, ptr %136, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lock66) #10
  %137 = ptrtoint ptr %thread64 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %thread64, align 4
  call fastcc void @_start(ptr noundef %138)
  %139 = ptrtoint ptr %thread64 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %thread64, align 4
  %dmac70 = getelementptr inbounds %struct.pl330_thread, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %dmac70 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dmac70, align 4
  %lock71 = getelementptr inbounds %struct.pl330_dmac, ptr %142, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lock71) #10
  br label %if.end77

if.else73:                                        ; preds = %while.body
  %143 = ptrtoint ptr %status74 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %status74, align 4
  %144 = ptrtoint ptr %dmac76 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dmac76, align 4
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %145, i32 0, i32 1
  %call.i.i164 = call zeroext i1 @__list_del_entry_valid(ptr noundef %110) #10
  br i1 %call.i.i164, label %if.end.i.i167, label %if.else73.__list_del_entry.exit.i170_crit_edge

if.else73.__list_del_entry.exit.i170_crit_edge:   ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i170

if.end.i.i167:                                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i165 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %146 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %prev.i.i165, align 4
  %148 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %110, align 4
  %prev1.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %prev1.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %147, ptr %prev1.i.i.i166, align 4
  %151 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %149, ptr %147, align 4
  br label %__list_del_entry.exit.i170

__list_del_entry.exit.i170:                       ; preds = %if.end.i.i167, %if.else73.__list_del_entry.exit.i170_crit_edge
  %prev.i2.i168 = getelementptr inbounds %struct.pl330_dmac, ptr %145, i32 0, i32 1, i32 1
  %152 = ptrtoint ptr %prev.i2.i168 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i2.i168, align 4
  %call.i.i.i169 = call zeroext i1 @__list_add_valid(ptr noundef %110, ptr noundef %153, ptr noundef %desc_pool) #10
  br i1 %call.i.i.i169, label %if.end.i.i.i172, label %__list_del_entry.exit.i170.if.end77_crit_edge

__list_del_entry.exit.i170.if.end77_crit_edge:    ; preds = %__list_del_entry.exit.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.end.i.i.i172:                                  ; preds = %__list_del_entry.exit.i170
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %prev.i2.i168 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %110, ptr %prev.i2.i168, align 4
  %155 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %desc_pool, ptr %110, align 4
  %prev3.i.i.i171 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %156 = ptrtoint ptr %prev3.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev3.i.i.i171, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %110, ptr %153, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end.i.i.i172, %__list_del_entry.exit.i170.if.end77_crit_edge, %if.then62, %list_move_tail.exit163.if.end77_crit_edge
  %power_down.2.off0 = phi i1 [ false, %if.then62 ], [ false, %list_move_tail.exit163.if.end77_crit_edge ], [ %power_down.1.off0193, %__list_del_entry.exit.i170.if.end77_crit_edge ], [ %power_down.1.off0193, %if.end.i.i.i172 ]
  %unmap.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %110, i32 0, i32 1, i32 9
  %158 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %159, null
  br i1 %tobool.not.i, label %if.end77.dma_descriptor_unmap.exit_crit_edge, label %if.end.i174

if.end77.dma_descriptor_unmap.exit_crit_edge:     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_descriptor_unmap.exit

if.end.i174:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  call void @dmaengine_unmap_put(ptr noundef nonnull %159) #10
  %160 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i174, %if.end77.dma_descriptor_unmap.exit_crit_edge
  %tobool.not.i175 = icmp eq ptr %112, null
  br i1 %tobool.not.i175, label %dmaengine_desc_callback_valid.exit, label %if.then80

dmaengine_desc_callback_valid.exit:               ; preds = %dma_descriptor_unmap.exit
  %tobool1.i.not = icmp eq ptr %114, null
  br i1 %tobool1.i.not, label %dmaengine_desc_callback_valid.exit.if.end96_crit_edge, label %if.then80.thread

dmaengine_desc_callback_valid.exit.if.end96_crit_edge: ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then80.thread:                                 ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0194) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %161 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 0, ptr %dummy_result.i, align 8
  br label %if.then.i

if.then80:                                        ; preds = %dma_descriptor_unmap.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0194) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %162 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i178 = icmp eq ptr %114, null
  br i1 %tobool.not.i178, label %if.then5.i, label %if.then80.if.then.i_crit_edge

if.then80.if.then.i_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.then80.if.then.i_crit_edge, %if.then80.thread
  call void %114(ptr noundef %116, ptr noundef nonnull %dummy_result.i) #10
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  call void %112(ptr noundef %116) #10
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %call91 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %if.end96

if.end96:                                         ; preds = %dmaengine_desc_callback_invoke.exit, %dmaengine_desc_callback_valid.exit.if.end96_crit_edge
  %flags.1 = phi i32 [ %call91, %dmaengine_desc_callback_invoke.exit ], [ %flags.0194, %dmaengine_desc_callback_valid.exit.if.end96_crit_edge ]
  %163 = ptrtoint ptr %completed_list45 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %completed_list45, align 4
  %cmp.i152.not = icmp eq ptr %164, %completed_list45
  br i1 %cmp.i152.not, label %if.end96.while.end_crit_edge, label %if.end96.while.body_crit_edge

if.end96.while.body_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end96.while.end_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end96.while.end_crit_edge, %if.end44.while.end_crit_edge
  %power_down.1.off0.lcssa = phi i1 [ %cmp.i151.not, %if.end44.while.end_crit_edge ], [ %power_down.2.off0, %if.end96.while.end_crit_edge ]
  %flags.0.lcssa = phi i32 [ %call3, %if.end44.while.end_crit_edge ], [ %flags.1, %if.end96.while.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #10
  br i1 %power_down.1.off0.lcssa, label %if.then99, label %while.end.if.end105_crit_edge

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then99:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %dmac100 = getelementptr inbounds %struct.dma_pl330_chan, ptr %t, i32 0, i32 5
  %165 = ptrtoint ptr %dmac100 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dmac100, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 15
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  %call.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %168, i32 0, i32 12, i32 22
  %169 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %170 = ptrtoint ptr %dmac100 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dmac100, align 4
  %dev103 = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 15
  %172 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev103, align 4
  %call.i180 = call i32 @__pm_runtime_suspend(ptr noundef %173, i32 noundef 13) #10
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %while.end.if.end105_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_setup_req(ptr nocapture noundef readonly %pl330, i32 noundef %dry_run, ptr nocapture noundef readonly %thrd, i32 noundef %index, ptr nocapture noundef readonly %pxs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_cpu = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %index, i32 1
  %0 = ptrtoint ptr %mc_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dry_run)
  %tobool.not.i = icmp eq i32 %dry_run, 0
  br i1 %tobool.not.i, label %if.end.i32.i, label %_emit_MOV.exit

_emit_MOV.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %desc.i = getelementptr inbounds %struct._xfer_spec, ptr %pxs, i32 0, i32 1
  br label %_emit_MOV.exit33.i

if.end.i32.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %pxs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pxs, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -68, ptr %1, align 1
  %arrayidx1.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx1.i, align 1
  %conv2.i = trunc i32 %3 to i8
  %arrayidx3.i = getelementptr i8, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %shr.i = lshr i32 %3, 8
  %conv4.i = trunc i32 %shr.i to i8
  %arrayidx5.i = getelementptr i8, ptr %1, i32 3
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %3, 16
  %conv7.i = trunc i32 %shr6.i to i8
  %arrayidx8.i = getelementptr i8, ptr %1, i32 4
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %shr9.i = lshr i32 %3, 24
  %conv10.i = trunc i32 %shr9.i to i8
  %arrayidx11.i = getelementptr i8, ptr %1, i32 5
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %arrayidx333 = getelementptr i8, ptr %1, i32 6
  %desc.i34 = getelementptr inbounds %struct._xfer_spec, ptr %pxs, i32 0, i32 1
  %10 = ptrtoint ptr %desc.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc.i34, align 4
  %px.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %px.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %px.i, align 4
  %14 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -68, ptr %arrayidx333, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %1, i32 7
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = trunc i32 %13 to i8
  %arrayidx3.i.i = getelementptr i8, ptr %1, i32 8
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 1
  %shr.i.i = lshr i32 %13, 8
  %conv4.i.i = trunc i32 %shr.i.i to i8
  %arrayidx5.i.i = getelementptr i8, ptr %1, i32 9
  %17 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %shr6.i.i = lshr i32 %13, 16
  %conv7.i.i = trunc i32 %shr6.i.i to i8
  %arrayidx8.i.i = getelementptr i8, ptr %1, i32 10
  %18 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  %shr9.i.i = lshr i32 %13, 24
  %conv10.i.i = trunc i32 %shr9.i.i to i8
  %arrayidx11.i.i = getelementptr i8, ptr %1, i32 11
  %19 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv10.i.i, ptr %arrayidx11.i.i, align 1
  %arrayidx136.i = getelementptr i8, ptr %1, i32 12
  %dst_addr37.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %11, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %dst_addr37.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_addr37.i, align 4
  %22 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -68, ptr %arrayidx136.i, align 1
  %arrayidx1.i20.i = getelementptr i8, ptr %1, i32 13
  %23 = ptrtoint ptr %arrayidx1.i20.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx1.i20.i, align 1
  %conv2.i21.i = trunc i32 %21 to i8
  %arrayidx3.i22.i = getelementptr i8, ptr %1, i32 14
  %24 = ptrtoint ptr %arrayidx3.i22.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2.i21.i, ptr %arrayidx3.i22.i, align 1
  %shr.i23.i = lshr i32 %21, 8
  %conv4.i24.i = trunc i32 %shr.i23.i to i8
  %arrayidx5.i25.i = getelementptr i8, ptr %1, i32 15
  %25 = ptrtoint ptr %arrayidx5.i25.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv4.i24.i, ptr %arrayidx5.i25.i, align 1
  %shr6.i26.i = lshr i32 %21, 16
  %conv7.i27.i = trunc i32 %shr6.i26.i to i8
  %arrayidx8.i28.i = getelementptr i8, ptr %1, i32 16
  %26 = ptrtoint ptr %arrayidx8.i28.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv7.i27.i, ptr %arrayidx8.i28.i, align 1
  %shr9.i29.i = lshr i32 %21, 24
  %conv10.i30.i = trunc i32 %shr9.i29.i to i8
  %arrayidx11.i31.i = getelementptr i8, ptr %1, i32 17
  %27 = ptrtoint ptr %arrayidx11.i31.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv10.i30.i, ptr %arrayidx11.i31.i, align 1
  br label %_emit_MOV.exit33.i

_emit_MOV.exit33.i:                               ; preds = %if.end.i32.i, %_emit_MOV.exit
  %desc.i37 = phi ptr [ %desc.i34, %if.end.i32.i ], [ %desc.i, %_emit_MOV.exit ]
  %arrayidx4.i = getelementptr i8, ptr %1, i32 18
  %28 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i37, align 4
  %30 = ptrtoint ptr %pxs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pxs, align 4
  %bytes.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %29, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes.i.i, align 4
  %shr.i34.i = lshr i32 %31, 1
  %and.i.i = and i32 %shr.i34.i, 7
  %div40.i.i = lshr i32 %33, %and.i.i
  %shr2.i.i = lshr i32 %31, 4
  %and3.i.i = and i32 %shr2.i.i, 15
  %add.i.i = add nuw nsw i32 %and3.i.i, 1
  %div4.i.i = udiv i32 %div40.i.i, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i, i32 %div40.i.i)
  %tobool.not47.not.i.i = icmp ult i32 %and3.i.i, %div40.i.i
  br i1 %tobool.not47.not.i.i, label %while.body.lr.ph.i.i, label %_emit_MOV.exit33.i.while.end.i.i_crit_edge

_emit_MOV.exit33.i.while.end.i.i_crit_edge:       ; preds = %_emit_MOV.exit33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %_emit_MOV.exit33.i
  %quirks.i.i.i.i = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 18
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %_loop.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %off.051.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add17.i.i, %_loop.exit.i.i.while.body.i.i_crit_edge ]
  %bursts.048.i.i = phi i32 [ %div4.i.i, %while.body.lr.ph.i.i ], [ %sub18.i.i, %_loop.exit.i.i.while.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx4.i, i32 %off.051.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bursts.048.i.i)
  %cmp.i.i.i = icmp eq i32 %bursts.048.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call fastcc i32 @_bursts(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %arrayidx.i.i, ptr noundef %pxs, i32 noundef 1) #10
  br label %_loop.exit.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bursts.048.i.i)
  %cmp1.i.i.i = icmp ugt i32 %bursts.048.i.i, 65535
  br i1 %cmp1.i.i.i, label %if.then2.i.i.i, label %if.else.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %div3122.i.i.i = lshr i32 %bursts.048.i.i, 16
  br label %if.end9.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %bursts.048.i.i)
  %cmp4.i.i.i = icmp ugt i32 %bursts.048.i.i, 256
  %div6120.i.i.i = lshr i32 %bursts.048.i.i, 8
  %spec.select124.i.i.i = select i1 %cmp4.i.i.i, i32 %div6120.i.i.i, i32 0
  %34 = tail call i32 @llvm.umin.i32(i32 %bursts.048.i.i, i32 256) #10
  br label %if.end9.i.i.i

if.end9.i.i.i:                                    ; preds = %if.else.i.i.i, %if.then2.i.i.i
  %cyc.0.i.i.i = phi i32 [ %div3122.i.i.i, %if.then2.i.i.i ], [ 1, %if.else.i.i.i ]
  %lcnt0.0.i.i.i = phi i32 [ 256, %if.then2.i.i.i ], [ %spec.select124.i.i.i, %if.else.i.i.i ]
  %lcnt1.0.i.i.i = phi i32 [ 256, %if.then2.i.i.i ], [ %34, %if.else.i.i.i ]
  %35 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc.i37, align 4
  %rqtype.i.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %rqtype.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rqtype.i.i.i.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %38, label %do.end.i.i.i.i [
    i32 1, label %if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge
    i32 2, label %if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge62
    i32 0, label %sw.bb4.i.i.i.i
  ]

if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge62:          ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i

if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge, %if.end9.i.i.i.sw.bb.i.i.i.i_crit_edge62
  %40 = ptrtoint ptr %quirks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quirks.i.i.i.i, align 4
  %and.i.i.i.i = shl i32 %41, 1
  %42 = and i32 %and.i.i.i.i, 2
  %43 = xor i32 %42, 2
  %add10.i.i.i.i = add nuw nsw i32 %43, 2
  %44 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %38, label %do.end.i.i.i.i.i [
    i32 2, label %if.else.i.i.i.i.i
    i32 1, label %sw.bb.i.i.i.i._emit_load.exit.i.i.i.i_crit_edge
  ]

sw.bb.i.i.i.i._emit_load.exit.i.i.i.i_crit_edge:  ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_load.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_load.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1139, i32 noundef 9, ptr noundef null) #10
  br label %_emit_load.exit.i.i.i.i

_emit_load.exit.i.i.i.i:                          ; preds = %do.end.i.i.i.i.i, %if.else.i.i.i.i.i, %sw.bb.i.i.i.i._emit_load.exit.i.i.i.i_crit_edge
  %off.0.i.i.i.i.i = phi i32 [ 0, %do.end.i.i.i.i.i ], [ 2, %if.else.i.i.i.i.i ], [ %38, %sw.bb.i.i.i.i._emit_load.exit.i.i.i.i_crit_edge ]
  %add20.i.i.i.i = add nuw nsw i32 %add10.i.i.i.i, %off.0.i.i.i.i.i
  %45 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i37, align 4
  %rqtype23.i.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %rqtype23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rqtype23.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %switch.lookup, label %do.end.i67.i.i.i.i

do.end.i67.i.i.i.i:                               ; preds = %_emit_load.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1172, i32 noundef 9, ptr noundef null) #10
  br label %_emit_store.exit.i.i.i.i

switch.lookup:                                    ; preds = %_emit_load.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table._setup_req, i32 0, i32 %48
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_emit_store.exit.i.i.i.i

_emit_store.exit.i.i.i.i:                         ; preds = %switch.lookup, %do.end.i67.i.i.i.i
  %off.0.i68.i.i.i.i = phi i32 [ 0, %do.end.i67.i.i.i.i ], [ %switch.load, %switch.lookup ]
  %add31.i.i.i.i = add nuw nsw i32 %add20.i.i.i.i, %off.0.i68.i.i.i.i
  br label %_bursts.exit.i.i.i

sw.bb4.i.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pcfg1.i.i.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %36, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %pcfg1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcfg1.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = and i32 %54, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i.i.i.i.i = icmp eq i32 %55, 0
  %spec.select232.i.i.i = select i1 %cmp.not.i.i.i.i.i, i32 4, i32 2
  br label %_bursts.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1225, i32 noundef 9, ptr noundef null) #10
  br label %_bursts.exit.i.i.i

_bursts.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %sw.bb4.i.i.i.i, %_emit_store.exit.i.i.i.i
  %off.0.i.i.i.i = phi i32 [ 0, %do.end.i.i.i.i ], [ %add31.i.i.i.i, %_emit_store.exit.i.i.i.i ], [ %spec.select232.i.i.i, %sw.bb4.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lcnt0.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %lcnt0.0.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 251, i32 247
  %div16.i.i.i = sdiv i32 %spec.select.i.i.i, %off.0.i.i.i.i
  %56 = tail call i32 @llvm.smin.i32(i32 %div16.i.i.i, i32 %cyc.0.i.i.i) #10
  br i1 %tobool.not.i.i.i, label %if.end23.i.i.i, label %if.then20.i.i.i

if.then20.i.i.i:                                  ; preds = %_bursts.exit.i.i.i
  br i1 %tobool.not.i, label %if.end23.thread.i.i.i, label %if.then41.thread.i.i.i

if.end23.thread.i.i.i:                            ; preds = %if.then20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i = trunc i32 %lcnt0.0.i.i.i to i8
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 32, ptr %arrayidx.i.i, align 1
  %dec.i.i.i.i = add i8 %conv.i.i.i, -1
  %arrayidx6.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %58 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %dec.i.i.i.i, ptr %arrayidx6.i.i.i.i, align 1
  %arrayidx24164.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  br label %if.end.i130.i.i.i

if.end23.i.i.i:                                   ; preds = %_bursts.exit.i.i.i
  br i1 %tobool.not.i, label %if.end23.i.i.i.if.end.i130.i.i.i_crit_edge, label %_emit_LPEND.exit.thread.i.i.i

if.end23.i.i.i.if.end.i130.i.i.i_crit_edge:       ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i130.i.i.i

_emit_LPEND.exit.thread.i.i.i:                    ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx28185.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  %call29186.i.i.i = tail call fastcc i32 @_bursts(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %arrayidx28185.i.i.i, ptr noundef %pxs, i32 noundef %56) #10
  %add39208.i.i.i = add i32 %call29186.i.i.i, 4
  br label %if.end51.i.i.i

if.end.i130.i.i.i:                                ; preds = %if.end23.i.i.i.if.end.i130.i.i.i_crit_edge, %if.end23.thread.i.i.i
  %arrayidx24171.i.i.i = phi ptr [ %arrayidx24164.i.i.i, %if.end23.thread.i.i.i ], [ %arrayidx.i.i, %if.end23.i.i.i.if.end.i130.i.i.i_crit_edge ]
  %ljmp0.0.neg170.i.i.i = phi i32 [ -2, %if.end23.thread.i.i.i ], [ 1, %if.end23.i.i.i.if.end.i130.i.i.i_crit_edge ]
  %off.0168.i.i.i = phi i32 [ 4, %if.end23.thread.i.i.i ], [ 2, %if.end23.i.i.i.if.end.i130.i.i.i_crit_edge ]
  %conv25172.i.i.i = trunc i32 %lcnt1.0.i.i.i to i8
  %59 = ptrtoint ptr %arrayidx24171.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 34, ptr %arrayidx24171.i.i.i, align 1
  %dec.i128.i.i.i = add i8 %conv25172.i.i.i, -1
  %arrayidx6.i129.i.i.i = getelementptr i8, ptr %arrayidx24171.i.i.i, i32 1
  %60 = ptrtoint ptr %arrayidx6.i129.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %dec.i128.i.i.i, ptr %arrayidx6.i129.i.i.i, align 1
  %arrayidx28195.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %off.0168.i.i.i
  %call29196.i.i.i = tail call fastcc i32 @_bursts(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %arrayidx28195.i.i.i, ptr noundef %pxs, i32 noundef %56) #10
  %add30197.i.i.i = add i32 %call29196.i.i.i, %off.0168.i.i.i
  %arrayidx37199.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add30197.i.i.i
  %conv35198.i.i.i = trunc i32 %call29196.i.i.i to i8
  %61 = ptrtoint ptr %arrayidx37199.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 60, ptr %arrayidx37199.i.i.i, align 1
  %arrayidx33.i.i.i.i = getelementptr i8, ptr %arrayidx37199.i.i.i, i32 1
  %62 = ptrtoint ptr %arrayidx33.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv35198.i.i.i, ptr %arrayidx33.i.i.i.i, align 1
  %add39.i.i.i = add i32 %add30197.i.i.i, 2
  br i1 %tobool.not.i.i.i, label %if.end.i130.i.i.i.if.end51.i.i.i_crit_edge, label %if.end32.i148.i.i.i

if.end.i130.i.i.i.if.end51.i.i.i_crit_edge:       ; preds = %if.end.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i.i.i

if.then41.thread.i.i.i:                           ; preds = %if.then20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx28.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %call29.i.i.i = tail call fastcc i32 @_bursts(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %arrayidx28.i.i.i, ptr noundef %pxs, i32 noundef %56) #10
  %add30.i.i.i = add i32 %call29.i.i.i, 4
  br label %_emit_LPEND.exit149.i.i.i

if.end32.i148.i.i.i:                              ; preds = %if.end.i130.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx48.i.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %add39.i.i.i
  %sub45.i.i.i = add i32 %add39.i.i.i, %ljmp0.0.neg170.i.i.i
  %conv46.i.i.i = trunc i32 %sub45.i.i.i to i8
  %63 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 56, ptr %arrayidx48.i.i.i, align 1
  %arrayidx33.i147.i.i.i = getelementptr i8, ptr %arrayidx48.i.i.i, i32 1
  %64 = ptrtoint ptr %arrayidx33.i147.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv46.i.i.i, ptr %arrayidx33.i147.i.i.i, align 1
  br label %_emit_LPEND.exit149.i.i.i

_emit_LPEND.exit149.i.i.i:                        ; preds = %if.end32.i148.i.i.i, %if.then41.thread.i.i.i
  %add30192214225.i.i.i = phi i32 [ %add30.i.i.i, %if.then41.thread.i.i.i ], [ %add30197.i.i.i, %if.end32.i148.i.i.i ]
  %add50.i.i.i = add i32 %add30192214225.i.i.i, 4
  br label %if.end51.i.i.i

if.end51.i.i.i:                                   ; preds = %_emit_LPEND.exit149.i.i.i, %if.end.i130.i.i.i.if.end51.i.i.i_crit_edge, %_emit_LPEND.exit.thread.i.i.i
  %off.1.i.i.i = phi i32 [ %add50.i.i.i, %_emit_LPEND.exit149.i.i.i ], [ %add39.i.i.i, %if.end.i130.i.i.i.if.end51.i.i.i_crit_edge ], [ %add39208.i.i.i, %_emit_LPEND.exit.thread.i.i.i ]
  %mul55.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 %lcnt0.0.i.i.i
  %mul52.i.i.i = mul nuw nsw i32 %mul55.i.i.i, %lcnt1.0.i.i.i
  %spec.select123.i.i.i = mul nsw i32 %mul52.i.i.i, %56
  br label %_loop.exit.i.i

_loop.exit.i.i:                                   ; preds = %if.end51.i.i.i, %if.then.i.i.i
  %c.0.i.i = phi i32 [ 1, %if.then.i.i.i ], [ %spec.select123.i.i.i, %if.end51.i.i.i ]
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %off.1.i.i.i, %if.end51.i.i.i ]
  %add17.i.i = add i32 %retval.0.i.i.i, %off.051.i.i
  %sub18.i.i = sub i32 %bursts.048.i.i, %c.0.i.i
  %tobool.not.i35.i = icmp eq i32 %sub18.i.i, 0
  br i1 %tobool.not.i35.i, label %_loop.exit.i.i.while.end.i.i_crit_edge, label %_loop.exit.i.i.while.body.i.i_crit_edge

_loop.exit.i.i.while.body.i.i_crit_edge:          ; preds = %_loop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

_loop.exit.i.i.while.end.i.i_crit_edge:           ; preds = %_loop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %_loop.exit.i.i.while.end.i.i_crit_edge, %_emit_MOV.exit33.i.while.end.i.i_crit_edge
  %off.0.lcssa.i.i = phi i32 [ 0, %_emit_MOV.exit33.i.while.end.i.i_crit_edge ], [ %add17.i.i, %_loop.exit.i.i.while.end.i.i_crit_edge ]
  %mul.i.i = shl i32 %div4.i.i, %and.i.i
  %mul12.i.i = mul i32 %mul.i.i, %add.i.i
  %sub.i.i = sub i32 %33, %mul12.i.i
  %div1641.i.i = lshr i32 %sub.i.i, %and.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %arrayidx4.i, i32 %off.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1641.i.i)
  %cmp.i42.i.i = icmp eq i32 %div1641.i.i, 0
  br i1 %cmp.i42.i.i, label %while.end.i.i._setup_xfer.exit_crit_edge, label %if.end.i43.i.i

while.end.i.i._setup_xfer.exit_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_setup_xfer.exit

if.end.i43.i.i:                                   ; preds = %while.end.i.i
  %65 = ptrtoint ptr %pxs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pxs, align 4
  %and.i.i.i = and i32 %66, -3932401
  %sub.i.i.i = add i32 %div1641.i.i, 15
  %and1.i.i.i = and i32 %sub.i.i.i, 15
  %shl.i.i.i = shl nuw nsw i32 %and1.i.i.i, 4
  %or.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  %shl4.i.i.i = shl nuw nsw i32 %and1.i.i.i, 18
  %or5.i.i.i = or i32 %or.i.i.i, %shl4.i.i.i
  %67 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i37, align 4
  %rqtype.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %rqtype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rqtype.i.i.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %70, label %do.end.i.i.i [
    i32 1, label %if.end.i43.i.i.sw.bb.i.i.i_crit_edge
    i32 2, label %if.end.i43.i.i.sw.bb.i.i.i_crit_edge63
    i32 0, label %sw.bb9.i.i.i
  ]

if.end.i43.i.i.sw.bb.i.i.i_crit_edge63:           ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

if.end.i43.i.i.sw.bb.i.i.i_crit_edge:             ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i43.i.i.sw.bb.i.i.i_crit_edge, %if.end.i43.i.i.sw.bb.i.i.i_crit_edge63
  br i1 %tobool.not.i, label %if.end.i.i.i.i, label %sw.bb.i.i.i._emit_MOV.exit.i.i.i_crit_edge

sw.bb.i.i.i._emit_MOV.exit.i.i.i_crit_edge:       ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_MOV.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -68, ptr %arrayidx19.i.i, align 1
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 1
  %73 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx1.i.i.i.i, align 1
  %conv2.i.i.i.i = trunc i32 %or.i.i.i to i8
  %arrayidx3.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 2
  %74 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv2.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 1
  %shr.i.i.i.i = lshr i32 %66, 8
  %conv4.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %arrayidx5.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 3
  %75 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv4.i.i.i.i, ptr %arrayidx5.i.i.i.i, align 1
  %shr6.i.i.i.i = lshr i32 %or5.i.i.i, 16
  %conv7.i.i.i.i = trunc i32 %shr6.i.i.i.i to i8
  %arrayidx8.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 4
  %76 = ptrtoint ptr %arrayidx8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv7.i.i.i.i, ptr %arrayidx8.i.i.i.i, align 1
  %shr9.i.i.i.i = lshr i32 %66, 24
  %conv10.i.i.i.i = trunc i32 %shr9.i.i.i.i to i8
  %arrayidx11.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 5
  %77 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv10.i.i.i.i, ptr %arrayidx11.i.i.i.i, align 1
  br label %_emit_MOV.exit.i.i.i

_emit_MOV.exit.i.i.i:                             ; preds = %if.end.i.i.i.i, %sw.bb.i.i.i._emit_MOV.exit.i.i.i_crit_edge
  %arrayidx6.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 6
  %call7.i.i.i = tail call fastcc i32 @_ldst_peripheral(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %arrayidx6.i.i.i, ptr noundef %pxs, i32 noundef 1, i32 noundef 1) #10
  %add8.i.i.i = add i32 %call7.i.i.i, 6
  br label %_setup_xfer.exit

sw.bb9.i.i.i:                                     ; preds = %if.end.i43.i.i
  br i1 %tobool.not.i, label %_emit_MOV.exit72.i.i.i, label %_setup_xfer.exit.thread50

_emit_MOV.exit72.i.i.i:                           ; preds = %sw.bb9.i.i.i
  %78 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -68, ptr %arrayidx19.i.i, align 1
  %arrayidx1.i59.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 1
  %79 = ptrtoint ptr %arrayidx1.i59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %arrayidx1.i59.i.i.i, align 1
  %conv2.i60.i.i.i = trunc i32 %or.i.i.i to i8
  %arrayidx3.i61.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 2
  %80 = ptrtoint ptr %arrayidx3.i61.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv2.i60.i.i.i, ptr %arrayidx3.i61.i.i.i, align 1
  %shr.i62.i.i.i = lshr i32 %66, 8
  %conv4.i63.i.i.i = trunc i32 %shr.i62.i.i.i to i8
  %arrayidx5.i64.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 3
  %81 = ptrtoint ptr %arrayidx5.i64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv4.i63.i.i.i, ptr %arrayidx5.i64.i.i.i, align 1
  %shr6.i65.i.i.i = lshr i32 %or5.i.i.i, 16
  %conv7.i66.i.i.i = trunc i32 %shr6.i65.i.i.i to i8
  %arrayidx8.i67.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 4
  %82 = ptrtoint ptr %arrayidx8.i67.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv7.i66.i.i.i, ptr %arrayidx8.i67.i.i.i, align 1
  %shr9.i68.i.i.i = lshr i32 %66, 24
  %conv10.i69.i.i.i = trunc i32 %shr9.i68.i.i.i to i8
  %arrayidx11.i70.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 5
  %83 = ptrtoint ptr %arrayidx11.i70.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv10.i69.i.i.i, ptr %arrayidx11.i70.i.i.i, align 1
  %arrayidx13.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 6
  %84 = ptrtoint ptr %desc.i37 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %desc.i37, align 4
  %pcfg1.i.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %85, i32 0, i32 3, i32 8
  %86 = ptrtoint ptr %pcfg1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pcfg1.i.i.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %90 = and i32 %89, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not.i.i.i.i = icmp eq i32 %90, 0
  %91 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 4, ptr %arrayidx13.i.i.i, align 1
  %arrayidx1362.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 7
  br i1 %cmp.not.i.i.i.i, label %if.end.i57.i.i.i.i, label %if.end.i47.i.i.i.i

_setup_xfer.exit.thread50:                        ; preds = %sw.bb9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pcfg1.i78.i.i.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %68, i32 0, i32 3, i32 8
  %92 = ptrtoint ptr %pcfg1.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcfg1.i78.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %96 = and i32 %95, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not.i79.i.i.i = icmp eq i32 %96, 0
  %spec.select.i44.i.i = select i1 %cmp.not.i79.i.i.i, i32 10, i32 8
  %add21.i.i52 = add i32 %off.0.lcssa.i.i, 12
  %add6.i53 = add i32 %add21.i.i52, %spec.select.i44.i.i
  br label %_emit_END.exit

if.end.i47.i.i.i.i:                               ; preds = %_emit_MOV.exit72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %arrayidx1362.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 8, ptr %arrayidx1362.i.i.i.i, align 1
  br label %_setup_xfer.exit.thread

if.end.i57.i.i.i.i:                               ; preds = %_emit_MOV.exit72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %arrayidx1362.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 18, ptr %arrayidx1362.i.i.i.i, align 1
  %arrayidx1665.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 8
  %99 = ptrtoint ptr %arrayidx1665.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 8, ptr %arrayidx1665.i.i.i.i, align 1
  %arrayidx1968.i.i.i.i = getelementptr i8, ptr %arrayidx19.i.i, i32 9
  %100 = ptrtoint ptr %arrayidx1968.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 19, ptr %arrayidx1968.i.i.i.i, align 1
  br label %_setup_xfer.exit.thread

do.end.i.i.i:                                     ; preds = %if.end.i43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1276, i32 noundef 9, ptr noundef null) #10
  br label %_setup_xfer.exit

_setup_xfer.exit.thread:                          ; preds = %if.end.i57.i.i.i.i, %if.end.i47.i.i.i.i
  %retval.0.i45.i.i.ph = phi i32 [ 10, %if.end.i57.i.i.i.i ], [ 8, %if.end.i47.i.i.i.i ]
  %add21.i.i40 = add i32 %off.0.lcssa.i.i, 12
  %add6.i41 = add i32 %add21.i.i40, %retval.0.i45.i.i.ph
  br label %if.end.i32

_setup_xfer.exit:                                 ; preds = %do.end.i.i.i, %_emit_MOV.exit.i.i.i, %while.end.i.i._setup_xfer.exit_crit_edge
  %retval.0.i45.i.i = phi i32 [ 0, %while.end.i.i._setup_xfer.exit_crit_edge ], [ 0, %do.end.i.i.i ], [ %add8.i.i.i, %_emit_MOV.exit.i.i.i ]
  %add21.i.i = add i32 %off.0.lcssa.i.i, 12
  %add6.i = add i32 %add21.i.i, %retval.0.i45.i.i
  br i1 %tobool.not.i, label %_setup_xfer.exit.if.end.i32_crit_edge, label %_setup_xfer.exit._emit_END.exit_crit_edge

_setup_xfer.exit._emit_END.exit_crit_edge:        ; preds = %_setup_xfer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_END.exit

_setup_xfer.exit.if.end.i32_crit_edge:            ; preds = %_setup_xfer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i32

if.end.i32:                                       ; preds = %_setup_xfer.exit.if.end.i32_crit_edge, %_setup_xfer.exit.thread
  %add6.i47 = phi i32 [ %add6.i41, %_setup_xfer.exit.thread ], [ %add6.i, %_setup_xfer.exit.if.end.i32_crit_edge ]
  %add542.pn = add i32 %add6.i47, 6
  %arrayidx648 = getelementptr i8, ptr %1, i32 %add542.pn
  %conv49.in.in = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 1
  %101 = ptrtoint ptr %conv49.in.in to i32
  call void @__asan_load4_noabort(i32 %101)
  %conv49.in = load i32, ptr %conv49.in.in, align 4
  %conv49 = trunc i32 %conv49.in to i8
  %102 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 52, ptr %arrayidx648, align 1
  %103 = shl i8 %conv49, 3
  %arrayidx4.i29 = getelementptr i8, ptr %arrayidx648, i32 1
  %104 = ptrtoint ptr %arrayidx4.i29 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx4.i29, align 1
  %add8 = add i32 %add6.i47, 8
  %arrayidx9 = getelementptr i8, ptr %1, i32 %add8
  %105 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx9, align 1
  br label %_emit_END.exit

_emit_END.exit:                                   ; preds = %if.end.i32, %_setup_xfer.exit._emit_END.exit_crit_edge, %_setup_xfer.exit.thread50
  %add6.i4661 = phi i32 [ %add6.i47, %if.end.i32 ], [ %add6.i53, %_setup_xfer.exit.thread50 ], [ %add6.i, %_setup_xfer.exit._emit_END.exit_crit_edge ]
  %add11 = add i32 %add6.i4661, 9
  ret i32 %add11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_bursts(ptr nocapture noundef readonly %pl330, i32 noundef %dry_run, ptr nocapture noundef writeonly %buf, ptr nocapture noundef readonly %pxs, i32 noundef %cyc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct._xfer_spec, ptr %pxs, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %rqtype = getelementptr inbounds %struct.dma_pl330_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rqtype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqtype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge42
    i32 0, label %sw.bb4
  ]

entry.sw.bb_crit_edge42:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge42
  %quirks = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 18
  %5 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks, align 4
  %and2 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp ne i32 %and2, 0
  %7 = ptrtoint ptr %pxs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pxs, align 4
  %9 = and i32 %8, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp ne i32 %9, 0
  %narrow = select i1 %tobool.not, i1 true, i1 %cmp.not
  %spec.store.select = zext i1 %narrow to i32
  %call = tail call fastcc i32 @_ldst_peripheral(ptr noundef %pl330, i32 noundef %dry_run, ptr noundef %buf, ptr noundef %pxs, i32 noundef %cyc, i32 noundef %spec.store.select)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %pcfg1.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %1, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %pcfg1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcfg1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cyc)
  %tobool8.not75.i = icmp eq i32 %cyc, 0
  br i1 %cmp.not.i, label %while.cond6.preheader.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %sw.bb4
  br i1 %tobool8.not75.i, label %while.cond.preheader.i.sw.epilog_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.sw.epilog_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dry_run)
  %tobool.not.i.i = icmp eq i32 %dry_run, 0
  br label %while.body.i

while.cond6.preheader.i:                          ; preds = %sw.bb4
  br i1 %tobool8.not75.i, label %while.cond6.preheader.i.sw.epilog_crit_edge, label %while.body9.lr.ph.i

while.cond6.preheader.i.sw.epilog_crit_edge:      ; preds = %while.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body9.lr.ph.i:                              ; preds = %while.cond6.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dry_run)
  %tobool.not.i48.i = icmp eq i32 %dry_run, 0
  br label %while.body9.i

while.body.i:                                     ; preds = %_emit_ST.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %cyc.addr.074.i = phi i32 [ %cyc, %while.body.lr.ph.i ], [ %dec.i, %_emit_ST.exit.i.while.body.i_crit_edge ]
  %off.072.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add5.i, %_emit_ST.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %cyc.addr.074.i, -1
  br i1 %tobool.not.i.i, label %if.end.i47.i, label %while.body.i._emit_ST.exit.i_crit_edge

while.body.i._emit_ST.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_ST.exit.i

if.end.i47.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %off.072.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %arrayidx.i, align 1
  %add58.i = or i32 %off.072.i, 1
  %arrayidx359.i = getelementptr i8, ptr %buf, i32 %add58.i
  %16 = ptrtoint ptr %arrayidx359.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %arrayidx359.i, align 1
  br label %_emit_ST.exit.i

_emit_ST.exit.i:                                  ; preds = %if.end.i47.i, %while.body.i._emit_ST.exit.i_crit_edge
  %add5.i = add i32 %off.072.i, 2
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %_emit_ST.exit.i.sw.epilog_crit_edge, label %_emit_ST.exit.i.while.body.i_crit_edge

_emit_ST.exit.i.while.body.i_crit_edge:           ; preds = %_emit_ST.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

_emit_ST.exit.i.sw.epilog_crit_edge:              ; preds = %_emit_ST.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

while.body9.i:                                    ; preds = %_emit_WMB.exit.i.while.body9.i_crit_edge, %while.body9.lr.ph.i
  %cyc.addr.178.i = phi i32 [ %cyc, %while.body9.lr.ph.i ], [ %dec7.i, %_emit_WMB.exit.i.while.body9.i_crit_edge ]
  %off.176.i = phi i32 [ 0, %while.body9.lr.ph.i ], [ %add21.i, %_emit_WMB.exit.i.while.body9.i_crit_edge ]
  %dec7.i = add i32 %cyc.addr.178.i, -1
  br i1 %tobool.not.i48.i, label %if.end.i57.i, label %while.body9.i._emit_WMB.exit.i_crit_edge

while.body9.i._emit_WMB.exit.i_crit_edge:         ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_WMB.exit.i

if.end.i57.i:                                     ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i = getelementptr i8, ptr %buf, i32 %off.176.i
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %arrayidx10.i, align 1
  %add1261.i = or i32 %off.176.i, 1
  %arrayidx1362.i = getelementptr i8, ptr %buf, i32 %add1261.i
  %18 = ptrtoint ptr %arrayidx1362.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 18, ptr %arrayidx1362.i, align 1
  %add1564.i = or i32 %off.176.i, 2
  %arrayidx1665.i = getelementptr i8, ptr %buf, i32 %add1564.i
  %19 = ptrtoint ptr %arrayidx1665.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %arrayidx1665.i, align 1
  %add1867.i = or i32 %off.176.i, 3
  %arrayidx1968.i = getelementptr i8, ptr %buf, i32 %add1867.i
  %20 = ptrtoint ptr %arrayidx1968.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 19, ptr %arrayidx1968.i, align 1
  br label %_emit_WMB.exit.i

_emit_WMB.exit.i:                                 ; preds = %if.end.i57.i, %while.body9.i._emit_WMB.exit.i_crit_edge
  %add21.i = add i32 %off.176.i, 4
  %tobool8.not.i = icmp eq i32 %dec7.i, 0
  br i1 %tobool8.not.i, label %_emit_WMB.exit.i.sw.epilog_crit_edge, label %_emit_WMB.exit.i.while.body9.i_crit_edge

_emit_WMB.exit.i.while.body9.i_crit_edge:         ; preds = %_emit_WMB.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body9.i

_emit_WMB.exit.i.sw.epilog_crit_edge:             ; preds = %_emit_WMB.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1225, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %_emit_WMB.exit.i.sw.epilog_crit_edge, %_emit_ST.exit.i.sw.epilog_crit_edge, %while.cond6.preheader.i.sw.epilog_crit_edge, %while.cond.preheader.i.sw.epilog_crit_edge, %sw.bb
  %off.0 = phi i32 [ 0, %do.end ], [ %call, %sw.bb ], [ 0, %while.cond6.preheader.i.sw.epilog_crit_edge ], [ 0, %while.cond.preheader.i.sw.epilog_crit_edge ], [ %add21.i, %_emit_WMB.exit.i.sw.epilog_crit_edge ], [ %add5.i, %_emit_ST.exit.i.sw.epilog_crit_edge ]
  ret i32 %off.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ldst_peripheral(ptr nocapture noundef readonly %pl330, i32 noundef %dry_run, ptr nocapture noundef writeonly %buf, ptr nocapture noundef readonly %pxs, i32 noundef %cyc, i32 noundef %cond) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.pl330_dmac, ptr %pl330, i32 0, i32 18
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dry_run)
  %tobool.not.i = icmp eq i32 %dry_run, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %desc = getelementptr inbounds %struct._xfer_spec, ptr %pxs, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %peri = getelementptr inbounds %struct.dma_pl330_desc, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %peri to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %peri, align 4
  %bf.lshr = and i8 %bf.load, -8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 53, ptr %buf, align 1
  %arrayidx4.i = getelementptr i8, ptr %buf, i32 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.lshr, ptr %arrayidx4.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %off.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 2, %if.then.if.end_crit_edge ], [ 2, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cyc)
  %tobool1.not69 = icmp eq i32 %cyc, 0
  br i1 %tobool1.not69, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %desc3 = getelementptr inbounds %struct._xfer_spec, ptr %pxs, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dry_run)
  %tobool.not.i53 = icmp eq i32 %dry_run, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp.i = icmp eq i32 %cond, 0
  %storemerge.i = select i1 %cmp.i, i8 48, i8 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp.i.i = icmp eq i32 %cond, 1
  %spec.select.i.i = select i1 %cmp.i.i, i8 39, i8 37
  %spec.select.i.i64 = select i1 %cmp.i.i, i8 43, i8 41
  br label %while.body

while.body:                                       ; preds = %_emit_store.exit.while.body_crit_edge, %while.body.lr.ph
  %off.171 = phi i32 [ %off.0, %while.body.lr.ph ], [ %add31, %_emit_store.exit.while.body_crit_edge ]
  %cyc.addr.070 = phi i32 [ %cyc, %while.body.lr.ph ], [ %dec, %_emit_store.exit.while.body_crit_edge ]
  %dec = add i32 %cyc.addr.070, -1
  br i1 %tobool.not.i53, label %if.end.i54, label %while.body._emit_WFP.exit_crit_edge

while.body._emit_WFP.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_WFP.exit

if.end.i54:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc3, align 4
  %peri4 = getelementptr inbounds %struct.dma_pl330_desc, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %peri4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load5 = load i8, ptr %peri4, align 4
  %bf.lshr6 = and i8 %bf.load5, -8
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %off.171
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge.i, ptr %arrayidx2, align 1
  %arrayidx22.i = getelementptr i8, ptr %arrayidx2, i32 1
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.lshr6, ptr %arrayidx22.i, align 1
  br label %_emit_WFP.exit

_emit_WFP.exit:                                   ; preds = %if.end.i54, %while.body._emit_WFP.exit_crit_edge
  %add10 = add i32 %off.171, 2
  %arrayidx11 = getelementptr i8, ptr %buf, i32 %add10
  %12 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc3, align 4
  %rqtype = getelementptr inbounds %struct.dma_pl330_desc, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %rqtype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rqtype, align 4
  %peri14 = getelementptr inbounds %struct.dma_pl330_desc, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %peri14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load15 = load i8, ptr %peri14, align 4
  %bf.lshr16 = and i8 %bf.load15, -8
  %17 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %15, label %do.end.i [
    i32 0, label %_emit_WFP.exit.sw.bb.i_crit_edge
    i32 1, label %_emit_WFP.exit.sw.bb.i_crit_edge72
    i32 2, label %if.else.i
  ]

_emit_WFP.exit.sw.bb.i_crit_edge72:               ; preds = %_emit_WFP.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

_emit_WFP.exit.sw.bb.i_crit_edge:                 ; preds = %_emit_WFP.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %_emit_WFP.exit.sw.bb.i_crit_edge, %_emit_WFP.exit.sw.bb.i_crit_edge72
  br i1 %tobool.not.i53, label %if.end.i.i, label %sw.bb.i._emit_load.exit_crit_edge

sw.bb.i._emit_load.exit_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_load.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx11, align 1
  %19 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %cond, label %if.end.i.i._emit_load.exit_crit_edge [
    i32 0, label %if.end.i.i.return.sink.split.i.i_crit_edge
    i32 1, label %if.then6.i.i
  ]

if.end.i.i.return.sink.split.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i.i

if.end.i.i._emit_load.exit_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_load.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.then6.i.i, %if.end.i.i.return.sink.split.i.i_crit_edge
  %.sink.i.i = phi i8 [ 7, %if.then6.i.i ], [ 5, %if.end.i.i.return.sink.split.i.i_crit_edge ]
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i.i, ptr %arrayidx11, align 1
  br label %_emit_load.exit

if.else.i:                                        ; preds = %_emit_WFP.exit
  br i1 %tobool.not.i53, label %if.end.i47.i, label %if.else.i._emit_load.exit_crit_edge

if.else.i._emit_load.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_load.exit

if.end.i47.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select.i.i, ptr %arrayidx11, align 1
  %arrayidx9.i.i = getelementptr i8, ptr %arrayidx11, i32 1
  %22 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.lshr16, ptr %arrayidx9.i.i, align 1
  br label %_emit_load.exit

do.end.i:                                         ; preds = %_emit_WFP.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1139, i32 noundef 9, ptr noundef null) #10
  br label %_emit_load.exit

_emit_load.exit:                                  ; preds = %do.end.i, %if.end.i47.i, %if.else.i._emit_load.exit_crit_edge, %return.sink.split.i.i, %if.end.i.i._emit_load.exit_crit_edge, %sw.bb.i._emit_load.exit_crit_edge
  %off.0.i = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb.i._emit_load.exit_crit_edge ], [ 1, %if.end.i.i._emit_load.exit_crit_edge ], [ 1, %return.sink.split.i.i ], [ 2, %if.else.i._emit_load.exit_crit_edge ], [ 2, %if.end.i47.i ]
  %add20 = add i32 %off.0.i, %add10
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %add20
  %23 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc3, align 4
  %rqtype23 = getelementptr inbounds %struct.dma_pl330_desc, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %rqtype23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rqtype23, align 4
  %peri25 = getelementptr inbounds %struct.dma_pl330_desc, ptr %24, i32 0, i32 9
  %27 = ptrtoint ptr %peri25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load26 = load i8, ptr %peri25, align 4
  %bf.lshr27 = and i8 %bf.load26, -8
  %28 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %26, label %do.end.i67 [
    i32 0, label %_emit_load.exit.sw.bb.i56_crit_edge
    i32 2, label %_emit_load.exit.sw.bb.i56_crit_edge73
    i32 1, label %if.else.i62
  ]

_emit_load.exit.sw.bb.i56_crit_edge73:            ; preds = %_emit_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i56

_emit_load.exit.sw.bb.i56_crit_edge:              ; preds = %_emit_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i56

sw.bb.i56:                                        ; preds = %_emit_load.exit.sw.bb.i56_crit_edge, %_emit_load.exit.sw.bb.i56_crit_edge73
  br i1 %tobool.not.i53, label %if.end.i.i57, label %sw.bb.i56._emit_store.exit_crit_edge

sw.bb.i56._emit_store.exit_crit_edge:             ; preds = %sw.bb.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_store.exit

if.end.i.i57:                                     ; preds = %sw.bb.i56
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx21, align 1
  %30 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %cond, label %if.end.i.i57._emit_store.exit_crit_edge [
    i32 0, label %if.end.i.i57.return.sink.split.i.i60_crit_edge
    i32 1, label %if.then6.i.i58
  ]

if.end.i.i57.return.sink.split.i.i60_crit_edge:   ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i.i60

if.end.i.i57._emit_store.exit_crit_edge:          ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_store.exit

if.then6.i.i58:                                   ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split.i.i60

return.sink.split.i.i60:                          ; preds = %if.then6.i.i58, %if.end.i.i57.return.sink.split.i.i60_crit_edge
  %.sink.i.i59 = phi i8 [ 11, %if.then6.i.i58 ], [ 9, %if.end.i.i57.return.sink.split.i.i60_crit_edge ]
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink.i.i59, ptr %arrayidx21, align 1
  br label %_emit_store.exit

if.else.i62:                                      ; preds = %_emit_load.exit
  br i1 %tobool.not.i53, label %if.end.i47.i66, label %if.else.i62._emit_store.exit_crit_edge

if.else.i62._emit_store.exit_crit_edge:           ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %_emit_store.exit

if.end.i47.i66:                                   ; preds = %if.else.i62
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select.i.i64, ptr %arrayidx21, align 1
  %arrayidx9.i.i65 = getelementptr i8, ptr %arrayidx21, i32 1
  %33 = ptrtoint ptr %arrayidx9.i.i65 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.lshr27, ptr %arrayidx9.i.i65, align 1
  br label %_emit_store.exit

do.end.i67:                                       ; preds = %_emit_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1172, i32 noundef 9, ptr noundef null) #10
  br label %_emit_store.exit

_emit_store.exit:                                 ; preds = %do.end.i67, %if.end.i47.i66, %if.else.i62._emit_store.exit_crit_edge, %return.sink.split.i.i60, %if.end.i.i57._emit_store.exit_crit_edge, %sw.bb.i56._emit_store.exit_crit_edge
  %off.0.i68 = phi i32 [ 0, %do.end.i67 ], [ 1, %sw.bb.i56._emit_store.exit_crit_edge ], [ 1, %if.end.i.i57._emit_store.exit_crit_edge ], [ 1, %return.sink.split.i.i60 ], [ 2, %if.else.i62._emit_store.exit_crit_edge ], [ 2, %if.end.i47.i66 ]
  %add31 = add i32 %off.0.i68, %add20
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %_emit_store.exit.while.end_crit_edge, label %_emit_store.exit.while.body_crit_edge

_emit_store.exit.while.body_crit_edge:            ; preds = %_emit_store.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

_emit_store.exit.while.end_crit_edge:             ; preds = %_emit_store.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %_emit_store.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %off.1.lcssa = phi i32 [ %off.0, %if.end.while.end_crit_edge ], [ %add31, %_emit_store.exit.while.end_crit_edge ]
  ret i32 %off.1.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl330_release_channel(ptr noundef %thrd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %thrd, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %free = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 2
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %free, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call fastcc void @_stop(ptr noundef nonnull %thrd)
  %lstenq = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 5
  %2 = ptrtoint ptr %lstenq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lstenq, align 4
  %sub = sub i32 1, %3
  %desc = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %sub, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.dma_pl330_rqcb.exit_crit_edge, label %if.end.i

if.end.dma_pl330_rqcb.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

if.end.i:                                         ; preds = %if.end
  %pchan.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pchan.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i.dma_pl330_rqcb.exit_crit_edge, label %do.body4.i

if.end.i.dma_pl330_rqcb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

do.body4.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %7, i32 0, i32 6
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %status.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %status.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #10
  %state.i.i = getelementptr inbounds %struct.tasklet_struct, ptr %7, i32 0, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body4.i.dma_pl330_rqcb.exit_crit_edge

do.body4.i.dma_pl330_rqcb.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit

if.then.i.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull %7) #10
  br label %dma_pl330_rqcb.exit

dma_pl330_rqcb.exit:                              ; preds = %if.then.i.i, %do.body4.i.dma_pl330_rqcb.exit_crit_edge, %if.end.i.dma_pl330_rqcb.exit_crit_edge, %if.end.dma_pl330_rqcb.exit_crit_edge
  %9 = ptrtoint ptr %lstenq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lstenq, align 4
  %desc5 = getelementptr %struct.pl330_thread, ptr %thrd, i32 0, i32 4, i32 %10, i32 2
  %11 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc5, align 4
  %tobool.not.i16 = icmp eq ptr %12, null
  br i1 %tobool.not.i16, label %dma_pl330_rqcb.exit.dma_pl330_rqcb.exit28_crit_edge, label %if.end.i19

dma_pl330_rqcb.exit.dma_pl330_rqcb.exit28_crit_edge: ; preds = %dma_pl330_rqcb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit28

if.end.i19:                                       ; preds = %dma_pl330_rqcb.exit
  %pchan.i17 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %pchan.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pchan.i17, align 4
  %tobool1.not.i18 = icmp eq ptr %14, null
  br i1 %tobool1.not.i18, label %if.end.i19.dma_pl330_rqcb.exit28_crit_edge, label %do.body4.i26

if.end.i19.dma_pl330_rqcb.exit28_crit_edge:       ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit28

do.body4.i26:                                     ; preds = %if.end.i19
  %lock.i20 = getelementptr inbounds %struct.dma_pl330_chan, ptr %14, i32 0, i32 6
  %call5.i21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i20) #10
  %status.i22 = getelementptr inbounds %struct.dma_pl330_desc, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %status.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %status.i22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i20, i32 noundef %call5.i21) #10
  %state.i.i23 = getelementptr inbounds %struct.tasklet_struct, ptr %14, i32 0, i32 1
  %call.i.i24 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.then.i.i27, label %do.body4.i26.dma_pl330_rqcb.exit28_crit_edge

do.body4.i26.dma_pl330_rqcb.exit28_crit_edge:     ; preds = %do.body4.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_pl330_rqcb.exit28

if.then.i.i27:                                    ; preds = %do.body4.i26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef nonnull %14) #10
  br label %dma_pl330_rqcb.exit28

dma_pl330_rqcb.exit28:                            ; preds = %if.then.i.i27, %do.body4.i26.dma_pl330_rqcb.exit28_crit_edge, %if.end.i19.dma_pl330_rqcb.exit28_crit_edge, %dma_pl330_rqcb.exit.dma_pl330_rqcb.exit28_crit_edge
  %ev = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 1
  %16 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ev, align 4
  %dmac.i = getelementptr inbounds %struct.pl330_thread, ptr %thrd, i32 0, i32 3
  %18 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %dma_pl330_rqcb.exit28._free_event.exit_crit_edge

dma_pl330_rqcb.exit28._free_event.exit_crit_edge: ; preds = %dma_pl330_rqcb.exit28
  call void @__sanitizer_cov_trace_pc() #12
  br label %_free_event.exit

land.lhs.true.i:                                  ; preds = %dma_pl330_rqcb.exit28
  %num_events.i = getelementptr inbounds %struct.pl330_dmac, ptr %19, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %num_events.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %num_events.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 2
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %bf.cast.i)
  %cmp1.i = icmp ult i32 %17, %bf.cast.i
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i._free_event.exit_crit_edge

land.lhs.true.i._free_event.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_free_event.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.pl330_dmac, ptr %19, i32 0, i32 7, i32 %17
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %thrd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %thrd, align 4
  %conv.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp3.i = icmp eq i32 %22, %conv.i
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true2.i._free_event.exit_crit_edge

land.lhs.true2.i._free_event.exit_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_free_event.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %arrayidx.i, align 4
  br label %_free_event.exit

_free_event.exit:                                 ; preds = %if.then.i, %land.lhs.true2.i._free_event.exit_crit_edge, %land.lhs.true.i._free_event.exit_crit_edge, %dma_pl330_rqcb.exit28._free_event.exit_crit_edge
  %26 = ptrtoint ptr %free to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %free, align 4
  br label %return

return:                                           ; preds = %_free_event.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pl330_get_desc(ptr noundef %pch) unnamed_addr #2 align 64 {
entry:
  %lock = alloca %struct.spinlock, align 4
  %pool = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dmac = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 5
  %0 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmac, align 4
  %chan = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 1
  %private = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 1, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %desc_pool = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 1
  %pool_lock = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool_lock) #10
  %4 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %desc_pool, align 4
  %cmp.i.not.i = icmp eq ptr %5, %desc_pool
  br i1 %cmp.i.not.i, label %pluck_desc.exit.thread, label %if.then.i

pluck_desc.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call2.i) #10
  br label %if.then

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.pluck_desc.exit_crit_edge

if.then.i.pluck_desc.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pluck_desc.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %pluck_desc.exit

pluck_desc.exit:                                  ; preds = %if.end.i.i.i, %if.then.i.pluck_desc.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %status.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %status.i, align 4
  %callback.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %5, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %callback.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool_lock, i32 noundef %call2.i) #10
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %pluck_desc.exit.if.then_crit_edge, label %pluck_desc.exit.if.end31_crit_edge

pluck_desc.exit.if.end31_crit_edge:               ; preds = %pluck_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

pluck_desc.exit.if.then_crit_edge:                ; preds = %pluck_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %pluck_desc.exit.if.then_crit_edge, %pluck_desc.exit.thread
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %lock) #10
  %16 = call ptr @memcpy(ptr %lock, ptr @__const.pl330_get_desc.lock, i32 44)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pool) #10
  %17 = getelementptr inbounds %struct.list_head, ptr %pool, i32 0, i32 1
  %18 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pool, ptr %pool, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pool, ptr %17, align 4
  %call1 = call fastcc i32 @add_desc(ptr noundef nonnull %pool, ptr noundef nonnull %lock, i32 noundef 2592, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call2.i59 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %lock) #10
  %20 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %pool, align 4
  %cmp.i.not.i60 = icmp eq ptr %21, %pool
  br i1 %cmp.i.not.i60, label %pluck_desc.exit71.thread, label %if.then.i62

pluck_desc.exit71.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %lock, i32 noundef %call2.i59) #10
  br label %do.end

if.then.i62:                                      ; preds = %if.end
  %call.i.i.i61 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #10
  br i1 %call.i.i.i61, label %if.end.i.i.i65, label %if.then.i62.pluck_desc.exit71_crit_edge

if.then.i62.pluck_desc.exit71_crit_edge:          ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %pluck_desc.exit71

if.end.i.i.i65:                                   ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i63 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i63, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i64, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %pluck_desc.exit71

pluck_desc.exit71:                                ; preds = %if.end.i.i.i65, %if.then.i62.pluck_desc.exit71_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i.i66 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i.i66, align 4
  %status.i67 = getelementptr inbounds %struct.dma_pl330_desc, ptr %21, i32 0, i32 4
  %30 = ptrtoint ptr %status.i67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %status.i67, align 4
  %callback.i68 = getelementptr inbounds %struct.dma_pl330_desc, ptr %21, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %callback.i68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %callback.i68, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %lock, i32 noundef %call2.i59) #10
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %pluck_desc.exit71.do.end_crit_edge, label %lor.rhs

pluck_desc.exit71.do.end_crit_edge:               ; preds = %pluck_desc.exit71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %pluck_desc.exit71
  %32 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %pool, align 4
  %cmp.i.not = icmp eq ptr %33, %pool
  br i1 %cmp.i.not, label %lor.rhs.cleanup.thread_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !228

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs.cleanup.thread_crit_edge:                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %pluck_desc.exit71.do.end_crit_edge, %pluck_desc.exit71.thread
  %desc.0.i7076 = phi ptr [ null, %pluck_desc.exit71.thread ], [ null, %pluck_desc.exit71.do.end_crit_edge ], [ %21, %lor.rhs.do.end_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2599, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end, %lor.rhs.cleanup.thread_crit_edge
  %desc.0.ph = phi ptr [ %21, %lor.rhs.cleanup.thread_crit_edge ], [ %desc.0.i7076, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pool) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %lock) #10
  br label %if.end31

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pool) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %lock) #10
  br label %cleanup39

if.end31:                                         ; preds = %cleanup.thread, %pluck_desc.exit.if.end31_crit_edge
  %desc.1 = phi ptr [ %5, %pluck_desc.exit.if.end31_crit_edge ], [ %desc.0.ph, %cleanup.thread ]
  %pchan = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1, i32 0, i32 7
  %34 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pch, ptr %pchan, align 4
  %txd = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1, i32 0, i32 1
  %35 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %txd, align 4
  %flags.i = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %37, 2
  store i32 %or.i, ptr %flags.i, align 4
  %tobool33.not = icmp eq ptr %3, null
  br i1 %tobool33.not, label %if.end31.cond.end_crit_edge, label %cond.true

if.end31.cond.end_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %chan_id = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan_id, align 4
  %phi.cast = trunc i32 %39 to i8
  %phi.bo58 = shl i8 %phi.cast, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end31.cond.end_crit_edge
  %cond = phi i8 [ %phi.bo58, %cond.true ], [ 0, %if.end31.cond.end_crit_edge ]
  %peri = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1, i32 0, i32 9
  %40 = ptrtoint ptr %peri to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %peri, align 4
  %bf.clear = and i8 %bf.load, 7
  %bf.set = or i8 %bf.clear, %cond
  store i8 %bf.set, ptr %peri, align 4
  %41 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dmac, align 4
  %pcfg = getelementptr inbounds %struct.pl330_dmac, ptr %42, i32 0, i32 5
  %pcfg36 = getelementptr inbounds %struct.dma_pl330_desc, ptr %desc.1, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %pcfg36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %pcfg, ptr %pcfg36, align 4
  call void @dma_async_tx_descriptor_init(ptr noundef %txd, ptr noundef %chan) #10
  br label %cleanup39

cleanup39:                                        ; preds = %cond.end, %cleanup
  %retval.1 = phi ptr [ %desc.1, %cond.end ], [ null, %cleanup ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pl330_prep_slave_fifo(ptr nocapture noundef %pch, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 1
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %switch.tableidx = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  %switch.offset = sub i32 3, %dir
  %retval.0.i = select i1 %4, i32 %switch.offset, i32 3
  %dir2 = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 12
  %5 = ptrtoint ptr %dir2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %retval.0.i)
  %cmp = icmp eq i32 %6, %retval.0.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 3
  br i1 %cmp.not.i, label %if.end.pl330_unprep_slave_fifo.exit_crit_edge, label %if.then.i

if.end.pl330_unprep_slave_fifo.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pl330_unprep_slave_fifo.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fifo_dma.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 11
  %7 = ptrtoint ptr %fifo_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_dma.i, align 4
  %burst_sz.i = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 8
  %9 = ptrtoint ptr %burst_sz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %burst_sz.i, align 4
  %shl.i = shl nuw i32 1, %10
  tail call void @dma_unmap_resource(ptr noundef %3, i32 noundef %8, i32 noundef %shl.i, i32 noundef %6, i32 noundef 0) #10
  br label %pl330_unprep_slave_fifo.exit

pl330_unprep_slave_fifo.exit:                     ; preds = %if.then.i, %if.end.pl330_unprep_slave_fifo.exit_crit_edge
  %11 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %dir2, align 4
  %fifo_addr = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 10
  %12 = ptrtoint ptr %fifo_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo_addr, align 4
  %burst_sz = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 8
  %14 = ptrtoint ptr %burst_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %burst_sz, align 4
  %shl = shl nuw i32 1, %15
  %call3 = tail call i32 @dma_map_resource(ptr noundef %3, i32 noundef %13, i32 noundef %shl, i32 noundef %retval.0.i, i32 noundef 0) #10
  %fifo_dma = getelementptr inbounds %struct.dma_pl330_chan, ptr %pch, i32 0, i32 11
  %16 = ptrtoint ptr %fifo_dma to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3, ptr %fifo_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp.i.not = icmp eq i32 %call3, -1
  br i1 %cmp.i.not, label %pl330_unprep_slave_fifo.exit.cleanup_crit_edge, label %if.end7

pl330_unprep_slave_fifo.exit.cleanup_crit_edge:   ; preds = %pl330_unprep_slave_fifo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %pl330_unprep_slave_fifo.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i, ptr %dir2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %pl330_unprep_slave_fifo.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end7 ], [ true, %entry.cleanup_crit_edge ], [ false, %pl330_unprep_slave_fifo.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_debugfs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pl330_debugfs_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl330_debugfs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %num_chan = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num_chan, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 15
  %num_peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %num_peripherals to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_peripherals, align 4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.79) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.80) #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %cmp45.not = icmp eq i32 %bf.clear, 0
  br i1 %cmp45.not, label %entry.for.end18_crit_edge, label %for.body.lr.ph

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp241 = icmp sgt i32 %4, 0
  %peripherals = getelementptr inbounds %struct.pl330_dmac, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %ch.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %if.end15.for.body_crit_edge ]
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.pl330_thread, ptr %6, i32 %ch.046
  br i1 %cmp241, label %for.body3.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  %conv1149 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %conv1149) #10
  br label %if.then14

for.body3.lr.ph:                                  ; preds = %for.body
  %9 = ptrtoint ptr %peripherals to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peripherals, align 4
  br label %for.body3

for.body3:                                        ; preds = %cleanup.for.body3_crit_edge, %for.body3.lr.ph
  %found.044 = phi i32 [ -1, %for.body3.lr.ph ], [ %found.1, %cleanup.for.body3_crit_edge ]
  %pr.042 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %cleanup.for.body3_crit_edge ]
  %thread = getelementptr %struct.dma_pl330_chan, ptr %10, i32 %pr.042, i32 7
  %11 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body3.cleanup_crit_edge, label %lor.lhs.false

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp8.not = icmp eq i8 %14, %16
  %spec.select = select i1 %cmp8.not, i32 %pr.042, i32 %found.044
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %for.body3.cleanup_crit_edge
  %found.1 = phi i32 [ %found.044, %for.body3.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %inc = add nuw nsw i32 %pr.042, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body3_crit_edge

cleanup.for.body3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end:                                          ; preds = %cleanup
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 4
  %conv11 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.82, i32 noundef %conv11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found.1)
  %cmp12 = icmp eq i32 %found.1, -1
  br i1 %cmp12, label %for.end.if.then14_crit_edge, label %if.else

for.end.if.then14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %for.end.if.then14_crit_edge, %for.end.thread
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.83) #10
  br label %if.end15

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %found.1) #10
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %inc17 = add nuw nsw i32 %ch.046, 1
  %exitcond47.not = icmp eq i32 %inc17, %bf.clear
  br i1 %exitcond47.not, label %if.end15.for.end18_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end15.for.end18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18

for.end18:                                        ; preds = %if.end15.for.end18_crit_edge, %entry.for.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_pl330__293_3263_pl330_driver_init6, !1, !"__initcall__kmod_pl330__293_3263_pl330_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/pl330.c", i32 3263, i32 1}
!2 = !{ptr @__exitcall_pl330_driver_exit, !1, !"__exitcall_pl330_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/dma/pl330.c", i32 3265, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/dma/pl330.c", i32 3266, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/dma/pl330.c", i32 3267, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/pl330.c", i32 3255, i32 11}
!12 = !{ptr @pl330_driver, !13, !"pl330_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/pl330.c", i32 3252, i32 27}
!14 = !{ptr @pl330_pm, !15, !"pl330_pm", i1 false, i1 false}
!15 = !{!"../drivers/dma/pl330.c", i32 2990, i32 32}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/pl330.c", i32 3032, i32 60}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/pl330.c", i32 3034, i32 58}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/pl330.c", i32 3038, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pl330_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pl330_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/pl330.c", i32 3043, i32 64}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/pl330.c", i32 3046, i32 10}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/pl330.c", i32 3050, i32 4}
!34 = !{ptr @pl330_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pl330_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @pl330_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/dma/pl330.c", i32 3076, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/pl330.c", i32 3081, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pl330_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pl330_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @pl330_probe.__key.18, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/dma/pl330.c", i32 3103, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/pl330.c", i32 3138, i32 3}
!49 = !{ptr @pl330_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pl330_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/pl330.c", i32 3146, i32 4}
!53 = !{ptr @pl330_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pl330_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/pl330.c", i32 3157, i32 3}
!57 = !{ptr @pl330_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pl330_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma/pl330.c", i32 3161, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @pl330_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @pl330_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/pl330.c", i32 3163, i32 2}
!66 = !{ptr @pl330_probe._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pl330_probe._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/pl330.c", i32 508, i32 12}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/pl330.c", i32 512, i32 12}
!72 = distinct !{null, !73, !"of_quirks", i1 false, i1 false}
!73 = !{!"../drivers/dma/pl330.c", i32 506, i32 3}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/pl330.c", i32 1657, i32 5}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pl330_update._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @pl330_update._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/pl330.c", i32 1672, i32 3}
!81 = !{ptr @pl330_update._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pl330_update._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/pl330.c", i32 892, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @_execute_DBGINSN._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @_execute_DBGINSN._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/pl330.c", i32 1034, i32 3}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @_trigger._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @_trigger._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/pl330.c", i32 1947, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @pl330_add._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @pl330_add._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/pl330.c", i32 1956, i32 3}
!100 = !{ptr @pl330_add._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @pl330_add._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @pl330_add.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/dma/pl330.c", i32 1961, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/pl330.c", i32 1976, i32 3}
!107 = !{ptr @pl330_add._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @pl330_add._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/pl330.c", i32 1922, i32 3}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dmac_alloc_resources._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @dmac_alloc_resources._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/pl330.c", i32 1929, i32 3}
!116 = !{ptr @dmac_alloc_resources._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dmac_alloc_resources._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/pl330.c", i32 2056, i32 4}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @fill_queue._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @fill_queue._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/pl330.c", i32 1494, i32 3}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @pl330_submit_req._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @pl330_submit_req._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/pl330.c", i32 1502, i32 3}
!130 = !{ptr @pl330_submit_req._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @pl330_submit_req._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/pl330.c", i32 1532, i32 3}
!134 = !{ptr @pl330_submit_req._entry.68, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @pl330_submit_req._entry_ptr.70, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/pl330.c", i32 2630, i32 3}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__pl330_prep_dma_memcpy._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @__pl330_prep_dma_memcpy._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/pl330.c", i32 2592, i32 3}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/dma/pl330.c", i32 2684, i32 3}
!145 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @pl330_prep_dma_cyclic._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @pl330_prep_dma_cyclic._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @pl330_prep_dma_cyclic._entry.76, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/dma/pl330.c", i32 2699, i32 4}
!150 = !{ptr @pl330_prep_dma_cyclic._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/dma/pl330.c", i32 2860, i32 4}
!153 = !{ptr @pl330_prep_slave_sg._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pl330_prep_slave_sg._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @pl330_debugfs_fops, !156, !"pl330_debugfs_fops", i1 false, i1 false}
!156 = !{!"../drivers/dma/pl330.c", i32 2946, i32 1}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/dma/pl330.c", i32 2920, i32 14}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/dma/pl330.c", i32 2921, i32 14}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/pl330.c", i32 2922, i32 14}
!163 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/dma/pl330.c", i32 2936, i32 17}
!165 = !{ptr @.str.83, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/pl330.c", i32 2938, i32 16}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/dma/pl330.c", i32 2940, i32 18}
!169 = !{ptr @pl330_ids, !170, !"pl330_ids", i1 false, i1 false}
!170 = !{!"../drivers/dma/pl330.c", i32 3242, i32 29}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148736307, i64 2148736333, i64 2148736362, i64 2148736396, i64 2148736427, i64 2148736450}
!181 = !{i64 5170620}
!182 = !{i64 2155316423}
!183 = !{i64 2155316890}
!184 = !{i64 2155319224}
!185 = !{i64 2155319770}
!186 = !{i64 2155320237}
!187 = !{i64 2155322306}
!188 = !{i64 2155322523}
!189 = !{i64 5170202}
!190 = !{i8 0, i8 2}
!191 = !{i64 2155325531}
!192 = !{i64 2155326009}
!193 = !{i64 2155326490}
!194 = !{i64 2155326968}
!195 = !{i64 2155327457}
!196 = !{i64 2155327929}
!197 = !{i64 2155328428}
!198 = !{i64 2155328908}
!199 = !{!"branch_weights", i32 1, i32 2000}
!200 = !{i32 0, i32 33}
!201 = !{i64 2155286849}
!202 = !{i64 2155363125}
!203 = !{i64 2155363715}
!204 = !{!"branch_weights", i32 6003000, i32 -294967296}
!205 = !{i64 2155285349, i64 2155285836, i64 2155285386, i64 2155285442, i64 2155285476, i64 2155285500, i64 2155285541, i64 2155285562, i64 2155285590, i64 2155285624}
!206 = !{i64 2155297453}
!207 = !{i64 2155296173}
!208 = !{i64 2155296758}
!209 = !{i64 2155297820}
!210 = !{i64 2155297662}
!211 = !{i64 2155292266}
!212 = !{i64 2155292550}
!213 = !{i64 2155292392}
!214 = !{i64 2155294451}
!215 = !{i64 2155294995}
!216 = !{i64 2155295378}
!217 = !{i64 2155298070}
!218 = !{i64 2155298503}
!219 = !{i64 2155302683}
!220 = !{i64 2155302525}
!221 = !{i64 2155303030}
!222 = !{i64 2155302872}
!223 = !{i64 2155303461}
!224 = !{i64 2155303303}
!225 = !{i64 2155301379}
!226 = !{i64 2155302286}
!227 = !{i64 2155315220}
!228 = !{!"branch_weights", i32 2000, i32 1}
