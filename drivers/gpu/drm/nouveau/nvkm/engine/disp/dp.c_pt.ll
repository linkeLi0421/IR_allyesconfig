; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dp_rates = type { i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.nvkm_dp = type { %union.anon.156, %struct.nvbios_dpout, i8, ptr, %struct.nvkm_notify, i8, [16 x i8], %struct.mutex, %struct.anon.157 }
%union.anon.156 = type { %struct.nvkm_outp }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.138, i8 }
%union.anon.138 = type { %struct.anon.142 }
%struct.anon.142 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.157 = type { %struct.atomic_t, i8 }
%struct.nvkm_i2c_ntfy_req = type { i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.lt_state = type { ptr, [6 x i8], [4 x i8], i8, i8, [2 x i8] }
%struct.nvkm_ior_func = type { %struct.anon.144, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.144 = type { ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr }
%struct.nvbios_dpcfg = type { i8, i8, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_dp_func = internal constant { %struct.nvkm_outp_func, [40 x i8] } { %struct.nvkm_outp_func { ptr @nvkm_dp_dtor, ptr @nvkm_dp_init, ptr @nvkm_dp_fini, ptr @nvkm_dp_acquire, ptr @nvkm_dp_release, ptr @nvkm_dp_disable }, [40 x i8] zeroinitializer }, align 32
@nvkm_dp_ctor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 664, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: outp %02x:%04x:%04x: no aux\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvkm_dp_ctor\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_dp_ctor._entry_ptr = internal global ptr @nvkm_dp_ctor._entry, section ".printk_index", align 4
@nvkm_dp_ctor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 673, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: outp %02x:%04x:%04x: no bios dp data\0A\00", [54 x i8] zeroinitializer }, align 32
@nvkm_dp_ctor._entry_ptr.7 = internal global ptr @nvkm_dp_ctor._entry.5, section ".printk_index", align 4
@nvkm_dp_ctor._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 678, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: outp %02x:%04x:%04x: bios dp %02x %02x %02x %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_dp_ctor._entry_ptr.11 = internal global ptr @nvkm_dp_ctor._entry.8, section ".printk_index", align 4
@nvkm_dp_ctor._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: outp %02x:%04x:%04x: error monitoring aux hpd: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nvkm_dp_ctor._entry_ptr.14 = internal global ptr @nvkm_dp_ctor._entry.12, section ".printk_index", align 4
@nvkm_dp_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dp->mutex\00", [21 x i8] zeroinitializer }, align 32
@nvkm_dp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 536, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: outp %02x:%04x:%04x: aux power -> always\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_dp_enable\00", [17 x i8] zeroinitializer }, align 32
@nvkm_dp_enable._entry_ptr = internal global ptr @nvkm_dp_enable._entry, section ".printk_index", align 4
@nvkm_dp_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 547, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: outp %02x:%04x:%04x: aux power -> demand\0A\00", [50 x i8] zeroinitializer }, align 32
@nvkm_dp_enable._entry_ptr.20 = internal global ptr @nvkm_dp_enable._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/include/nvkm/subdev/i2c.h\00", [46 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 492, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: outp %02x:%04x:%04x: data %d KB/s link %d KB/s mst %d->%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_dp_acquire\00", [16 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry_ptr = internal global ptr @nvkm_dp_acquire._entry, section ".printk_index", align 4
@nvkm_dp_acquire._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 494, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: outp %02x:%04x:%04x: link requirements changed\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry_ptr.26 = internal global ptr @nvkm_dp_acquire._entry.24, section ".printk_index", align 4
@nvkm_dp_acquire._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 502, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: outp %02x:%04x:%04x: failed to read link status, assuming no sink\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry_ptr.29 = internal global ptr @nvkm_dp_acquire._entry.27, section ".printk_index", align 4
@nvkm_dp_acquire._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 513, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: outp %02x:%04x:%04x: lane %d not equalised\0A\00", [48 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry_ptr.32 = internal global ptr @nvkm_dp_acquire._entry.30, section ".printk_index", align 4
@nvkm_dp_acquire._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 519, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: outp %02x:%04x:%04x: no inter-lane alignment\0A\00", [46 x i8] zeroinitializer }, align 32
@nvkm_dp_acquire._entry_ptr.35 = internal global ptr @nvkm_dp_acquire._entry.33, section ".printk_index", align 4
@nvkm_dp_rates = internal constant { [10 x %struct.dp_rates], [48 x i8] } { [10 x %struct.dp_rates] [%struct.dp_rates { i32 2160000, i8 20, i8 4 }, %struct.dp_rates { i32 1080000, i8 10, i8 4 }, %struct.dp_rates { i32 1080000, i8 20, i8 2 }, %struct.dp_rates { i32 648000, i8 6, i8 4 }, %struct.dp_rates { i32 540000, i8 10, i8 2 }, %struct.dp_rates { i32 540000, i8 20, i8 1 }, %struct.dp_rates { i32 324000, i8 6, i8 2 }, %struct.dp_rates { i32 270000, i8 10, i8 1 }, %struct.dp_rates { i32 162000, i8 6, i8 1 }, %struct.dp_rates zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nvkm_dp_train._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 416, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: outp %02x:%04x:%04x: training (min: %d x %d MB/s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_dp_train\00", [18 x i8] zeroinitializer }, align 32
@nvkm_dp_train._entry_ptr = internal global ptr @nvkm_dp_train._entry, section ".printk_index", align 4
@nvkm_dp_train._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: outp %02x:%04x:%04x: link rate unsupported by sink\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_dp_train._entry_ptr.40 = internal global ptr @nvkm_dp_train._entry.38, section ".printk_index", align 4
@nvkm_dp_train._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 436, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: outp %02x:%04x:%04x: training failed\0A\00", [54 x i8] zeroinitializer }, align 32
@nvkm_dp_train._entry_ptr.43 = internal global ptr @nvkm_dp_train._entry.41, section ".printk_index", align 4
@nvkm_dp_train._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 438, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: outp %02x:%04x:%04x: training done\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_dp_train._entry_ptr.46 = internal global ptr @nvkm_dp_train._entry.44, section ".printk_index", align 4
@nvkm_dp_train_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 240, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: outp %02x:%04x:%04x: training %d x %d MB/s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_dp_train_links\00", [44 x i8] zeroinitializer }, align 32
@nvkm_dp_train_links._entry_ptr = internal global ptr @nvkm_dp_train_links._entry, section ".printk_index", align 4
@nvkm_dp_train_links._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: outp %02x:%04x:%04x: train failed with %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nvkm_dp_train_links._entry_ptr.51 = internal global ptr @nvkm_dp_train_links._entry.49, section ".printk_index", align 4
@nvkm_dp_train_drive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 114, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: outp %02x:%04x:%04x: config lane %d %02x %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_dp_train_drive\00", [44 x i8] zeroinitializer }, align 32
@nvkm_dp_train_drive._entry_ptr = internal global ptr @nvkm_dp_train_drive._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nvkm_dp_train_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 71, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: outp %02x:%04x:%04x: status %6ph pc2 %02x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_dp_train_sense\00", [44 x i8] zeroinitializer }, align 32
@nvkm_dp_train_sense._entry_ptr = internal global ptr @nvkm_dp_train_sense._entry, section ".printk_index", align 4
@nvkm_dp_train_sense._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.2, i32 73, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: outp %02x:%04x:%04x: status %6ph\0A\00", [58 x i8] zeroinitializer }, align 32
@nvkm_dp_train_sense._entry_ptr.58 = internal global ptr @nvkm_dp_train_sense._entry.56, section ".printk_index", align 4
@nvkm_dp_train_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 151, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: outp %02x:%04x:%04x: training pattern %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_dp_train_pattern\00", [42 x i8] zeroinitializer }, align 32
@nvkm_dp_train_pattern._entry_ptr = internal global ptr @nvkm_dp_train_pattern._entry, section ".printk_index", align 4
@nvkm_dp_hpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 565, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: outp %02x:%04x:%04x: HPD: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvkm_dp_hpd\00", [20 x i8] zeroinitializer }, align 32
@nvkm_dp_hpd._entry_ptr = internal global ptr @nvkm_dp_hpd._entry, section ".printk_index", align 4
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"nvkm_dp_func\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 638, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 664, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 673, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 677, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 691, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 695, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 536, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 547, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [53 x i8] c"../drivers/gpu/drm/nouveau/include/nvkm/subdev/i2c.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 173, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 491, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 494, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 501, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 512, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 519, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"nvkm_dp_rates\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 352, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 415, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 424, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 436, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 438, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 239, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 282, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 113, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 70, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 73, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 151, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 565, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @nvkm_dp_acquire._entry, ptr @nvkm_dp_acquire._entry.24, ptr @nvkm_dp_acquire._entry.27, ptr @nvkm_dp_acquire._entry.30, ptr @nvkm_dp_acquire._entry.33, ptr @nvkm_dp_acquire._entry_ptr, ptr @nvkm_dp_acquire._entry_ptr.26, ptr @nvkm_dp_acquire._entry_ptr.29, ptr @nvkm_dp_acquire._entry_ptr.32, ptr @nvkm_dp_acquire._entry_ptr.35, ptr @nvkm_dp_ctor._entry, ptr @nvkm_dp_ctor._entry.12, ptr @nvkm_dp_ctor._entry.5, ptr @nvkm_dp_ctor._entry.8, ptr @nvkm_dp_ctor._entry_ptr, ptr @nvkm_dp_ctor._entry_ptr.11, ptr @nvkm_dp_ctor._entry_ptr.14, ptr @nvkm_dp_ctor._entry_ptr.7, ptr @nvkm_dp_enable._entry, ptr @nvkm_dp_enable._entry.18, ptr @nvkm_dp_enable._entry_ptr, ptr @nvkm_dp_enable._entry_ptr.20, ptr @nvkm_dp_hpd._entry, ptr @nvkm_dp_hpd._entry_ptr, ptr @nvkm_dp_train._entry, ptr @nvkm_dp_train._entry.38, ptr @nvkm_dp_train._entry.41, ptr @nvkm_dp_train._entry.44, ptr @nvkm_dp_train._entry_ptr, ptr @nvkm_dp_train._entry_ptr.40, ptr @nvkm_dp_train._entry_ptr.43, ptr @nvkm_dp_train._entry_ptr.46, ptr @nvkm_dp_train_drive._entry, ptr @nvkm_dp_train_drive._entry_ptr, ptr @nvkm_dp_train_links._entry, ptr @nvkm_dp_train_links._entry.49, ptr @nvkm_dp_train_links._entry_ptr, ptr @nvkm_dp_train_links._entry_ptr.51, ptr @nvkm_dp_train_pattern._entry, ptr @nvkm_dp_train_pattern._entry_ptr, ptr @nvkm_dp_train_sense._entry, ptr @nvkm_dp_train_sense._entry.56, ptr @nvkm_dp_train_sense._entry_ptr, ptr @nvkm_dp_train_sense._entry_ptr.58, ptr @nvkm_dp_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @nvkm_dp_ctor.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @nvkm_dp_rates, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_ctor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_ctor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_ctor._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_ctor._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_acquire._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_acquire._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_acquire._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_acquire._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_rates to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_links._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_drive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_sense._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_train_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_dp_hpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_dp_disable(ptr noundef %outp, ptr nocapture noundef readonly %ior) #0 align 64 {
entry:
  %init = alloca %struct.nvbios_init, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !119
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %2 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp, align 4
  %subdev1 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %subdev1, ptr %init, align 4
  %offset = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 1
  %arrayidx = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 1, i32 3, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %offset, align 4
  %outp2 = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 2
  %or = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 3
  %link = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 4
  %head = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %head, align 4
  %execute = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 6
  %9 = ptrtoint ptr %execute to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %execute, align 4
  %nested = getelementptr inbounds %struct.nvbios_init, ptr %init, i32 0, i32 7
  %info3 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %10 = call ptr @memset(ptr %nested, i32 0, i32 16)
  %11 = ptrtoint ptr %outp2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %info3, ptr %outp2, align 4
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %or, align 4
  %link6 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %link6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %link6, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.clear = and i32 %bf.lshr, 3
  %16 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.clear, ptr %link, align 4
  %call = call i32 @nvbios_exec(ptr noundef nonnull %init) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_dp_new(ptr noundef %disp, i32 noundef %index, ptr noundef %dcbE, ptr nocapture noundef writeonly %poutp) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %len.i = alloca i8, align 1
  %.compoundliteral.i = alloca %struct.nvkm_i2c_ntfy_req, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %i2c1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c1, align 4
  %location = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 8
  %4 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 4
  %6 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_index, align 4
  %conv3 = zext i8 %7 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %extdev = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 12
  %8 = ptrtoint ptr %extdev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %extdev, align 4
  %conv4 = zext i8 %9 to i32
  %add = or i32 %conv4, 256
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.sink = phi i32 [ %add, %if.else ], [ %conv3, %if.then ]
  %call5 = tail call ptr @nvkm_i2c_aux_find(ptr noundef %3, i32 noundef %add.sink) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 320) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = ptrtoint ptr %poutp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %poutp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %.compoundliteral.i)
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %bios2.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %bios2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bios2.i, align 8
  %i2c3.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 26
  %16 = ptrtoint ptr %i2c3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c3.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #5
  %18 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %hdr.i, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #5
  %19 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %cnt.i, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len.i) #5
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %len.i, align 1, !annotation !119
  %call.i = tail call i32 @nvkm_outp_ctor(ptr noundef nonnull @nvkm_dp_func, ptr noundef %disp, i32 noundef %index, ptr noundef %dcbE, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.nvkm_dp_ctor.exit_crit_edge

if.end8.nvkm_dp_ctor.exit_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_ctor.exit

if.end.i:                                         ; preds = %if.end8
  %aux4.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %aux4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5, ptr %aux4.i, align 8
  %tobool6.not.i = icmp eq ptr %call5, null
  br i1 %tobool6.not.i, label %do.body.i, label %if.end23.i

do.body.i:                                        ; preds = %if.end.i
  %disp9.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %disp9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disp9.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %23, i32 0, i32 1, i32 1, i32 5
  %24 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 0
  br i1 %cmp.not.i, label %do.body.i.nvkm_dp_ctor.exit_crit_edge, label %do.end.i

do.body.i.nvkm_dp_ctor.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_ctor.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %device14.i = getelementptr inbounds %struct.nvkm_disp, ptr %23, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %device14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device14.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %23, i32 0, i32 1, i32 1, i32 4
  %index15.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %index15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index15.i, align 8
  %hasht.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hasht.i, align 8
  %conv.i = zext i16 %33 to i32
  %hashm.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hashm.i, align 2
  %conv17.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %31, i32 noundef %conv.i, i32 noundef %conv17.i) #9
  br label %nvkm_dp_ctor.exit

if.end23.i:                                       ; preds = %if.end.i
  %hasht25.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %hasht25.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hasht25.i, align 8
  %hashm27.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %hashm27.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hashm27.i, align 2
  %version.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 2
  %info28.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 1
  %call29.i = call zeroext i16 @nvbios_dpout_match(ptr noundef %15, i16 noundef zeroext %37, i16 noundef zeroext %39, ptr noundef %version.i, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len.i, ptr noundef %info28.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call29.i)
  %tobool31.not.i = icmp eq i16 %call29.i, 0
  %disp37.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %disp37.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disp37.i, align 4
  %debug40.i = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 5
  %42 = ptrtoint ptr %debug40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug40.i, align 4
  br i1 %tobool31.not.i, label %do.body33.i, label %do.body64.i

do.body33.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp41.not.i = icmp eq i32 %43, 0
  br i1 %cmp41.not.i, label %do.body33.i.nvkm_dp_ctor.exit_crit_edge, label %do.end46.i

do.body33.i.nvkm_dp_ctor.exit_crit_edge:          ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_ctor.exit

do.end46.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #7
  %device47.i = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %device47.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device47.i, align 4
  %dev48.i = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev48.i, align 8
  %name49.i = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 4
  %index51.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %index51.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index51.i, align 8
  %50 = ptrtoint ptr %hasht25.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hasht25.i, align 8
  %conv54.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %hashm27.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hashm27.i, align 2
  %conv57.i = zext i16 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef %name49.i, i32 noundef %49, i32 noundef %conv54.i, i32 noundef %conv57.i) #9
  br label %nvkm_dp_ctor.exit

do.body64.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp72.i = icmp ugt i32 %43, 3
  br i1 %cmp72.i, label %do.end77.i, label %do.body64.i.if.end94.i_crit_edge

do.body64.i.if.end94.i_crit_edge:                 ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.i

do.end77.i:                                       ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #7
  %device78.i = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 1
  %54 = ptrtoint ptr %device78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device78.i, align 4
  %dev79.i = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev79.i, align 8
  %name80.i = getelementptr inbounds %struct.nvkm_disp, ptr %41, i32 0, i32 1, i32 1, i32 4
  %index82.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %index82.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index82.i, align 8
  %60 = ptrtoint ptr %hasht25.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %hasht25.i, align 8
  %conv85.i = zext i16 %61 to i32
  %62 = ptrtoint ptr %hashm27.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hashm27.i, align 2
  %conv88.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %version.i, align 4
  %conv90.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hdr.i, align 1
  %conv91.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cnt.i, align 1
  %conv92.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %len.i, align 1
  %conv93.i = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.9, ptr noundef %name80.i, i32 noundef %59, i32 noundef %conv85.i, i32 noundef %conv88.i, i32 noundef %conv90.i, i32 noundef %conv91.i, i32 noundef %conv92.i, i32 noundef %conv93.i) #9
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end77.i, %do.body64.i.if.end94.i_crit_edge
  %event.i = getelementptr inbounds %struct.nvkm_i2c, ptr %17, i32 0, i32 5
  %72 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 7, ptr %.compoundliteral.i, align 1
  %port.i = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, ptr %.compoundliteral.i, i32 0, i32 1
  %73 = ptrtoint ptr %aux4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %aux4.i, align 8
  %id.i = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id.i, align 8
  %conv100.i = trunc i32 %76 to i8
  %77 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv100.i, ptr %port.i, align 1
  %hpd.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 4
  %call101.i = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %event.i, ptr noundef nonnull @nvkm_dp_hpd, i1 noundef zeroext true, ptr noundef nonnull %.compoundliteral.i, i32 noundef 2, i32 noundef 1, ptr noundef %hpd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %do.body135.i, label %do.body104.i

do.body104.i:                                     ; preds = %if.end94.i
  %78 = ptrtoint ptr %disp37.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %disp37.i, align 4
  %debug111.i = getelementptr inbounds %struct.nvkm_disp, ptr %79, i32 0, i32 1, i32 1, i32 5
  %80 = ptrtoint ptr %debug111.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %debug111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp112.not.i = icmp eq i32 %81, 0
  br i1 %cmp112.not.i, label %do.body104.i.nvkm_dp_ctor.exit_crit_edge, label %do.end117.i

do.body104.i.nvkm_dp_ctor.exit_crit_edge:         ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_ctor.exit

do.end117.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #7
  %device118.i = getelementptr inbounds %struct.nvkm_disp, ptr %79, i32 0, i32 1, i32 1, i32 1
  %82 = ptrtoint ptr %device118.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device118.i, align 4
  %dev119.i = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev119.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev119.i, align 8
  %name120.i = getelementptr inbounds %struct.nvkm_disp, ptr %79, i32 0, i32 1, i32 1, i32 4
  %index122.i = getelementptr inbounds %struct.nvkm_outp, ptr %call7.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %index122.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index122.i, align 8
  %88 = ptrtoint ptr %hasht25.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %hasht25.i, align 8
  %conv125.i = zext i16 %89 to i32
  %90 = ptrtoint ptr %hashm27.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hashm27.i, align 2
  %conv128.i = zext i16 %91 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.13, ptr noundef %name120.i, i32 noundef %87, i32 noundef %conv125.i, i32 noundef %conv128.i, i32 noundef %call101.i) #9
  br label %nvkm_dp_ctor.exit

do.body135.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  %mutex.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @nvkm_dp_ctor.__key) #5
  %lt.i = getelementptr inbounds %struct.nvkm_dp, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lt.i, i32 noundef 4) #5
  %92 = ptrtoint ptr %lt.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 0, ptr %lt.i, align 8
  br label %nvkm_dp_ctor.exit

nvkm_dp_ctor.exit:                                ; preds = %do.body135.i, %do.end117.i, %do.body104.i.nvkm_dp_ctor.exit_crit_edge, %do.end46.i, %do.body33.i.nvkm_dp_ctor.exit_crit_edge, %do.end.i, %do.body.i.nvkm_dp_ctor.exit_crit_edge, %if.end8.nvkm_dp_ctor.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body135.i ], [ %call.i, %if.end8.nvkm_dp_ctor.exit_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.nvkm_dp_ctor.exit_crit_edge ], [ -22, %do.end46.i ], [ -22, %do.body33.i.nvkm_dp_ctor.exit_crit_edge ], [ %call101.i, %do.end117.i ], [ %call101.i, %do.body104.i.nvkm_dp_ctor.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %.compoundliteral.i)
  br label %cleanup

cleanup:                                          ; preds = %nvkm_dp_ctor.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nvkm_dp_ctor.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_aux_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dpout_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_dp_hpd(ptr noundef %notify) #0 align 64 {
entry:
  %rep = alloca %struct.nvif_notify_conn_rep_v0, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %notify, i32 -116
  %conn1 = getelementptr i8, ptr %notify, i32 -52
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 4
  %disp2 = getelementptr i8, ptr %notify, i32 -112
  %4 = ptrtoint ptr %disp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rep) #5
  %6 = ptrtoint ptr %rep to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %rep, align 8
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ugt i32 %8, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr i8, ptr %notify, i32 -108
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %hasht = getelementptr i8, ptr %notify, i32 -100
  %15 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hasht, align 4
  %conv = zext i16 %16 to i32
  %hashm = getelementptr i8, ptr %notify, i32 -98
  %17 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hashm, align 2
  %conv7 = zext i16 %18 to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %conv8 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %14, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  %lt = getelementptr i8, ptr %notify, i32 196
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lt, i32 noundef 4) #5
  %24 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %lt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %if.then15.if.end19_crit_edge, label %if.then17

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %acquire = getelementptr inbounds %struct.nvkm_outp_func, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %acquire, align 4
  %call18 = tail call i32 %29(ptr noundef %add.ptr) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15.if.end19_crit_edge
  %mask20 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %rep, i32 0, i32 1
  %30 = ptrtoint ptr %mask20 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mask20, align 1
  %32 = or i8 %31, 4
  store i8 %32, ptr %mask20, align 1
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end19
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %1, align 1
  %35 = and i8 %34, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool28.not = icmp eq i8 %35, 0
  br i1 %tobool28.not, label %if.end24.if.end34_crit_edge, label %if.then29

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %mask30 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %rep, i32 0, i32 1
  %36 = ptrtoint ptr %mask30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mask30, align 1
  %38 = or i8 %37, 2
  store i8 %38, ptr %mask30, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end24.if.end34_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool38.not = icmp eq i8 %41, 0
  br i1 %tobool38.not, label %if.end34.if.end44_crit_edge, label %if.then39

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %mask40 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %rep, i32 0, i32 1
  %42 = ptrtoint ptr %mask40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mask40, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %mask40, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end34.if.end44_crit_edge
  %hpd = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 6
  %mask45 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %rep, i32 0, i32 1
  %45 = ptrtoint ptr %mask45 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mask45, align 1
  %conv46 = zext i8 %46 to i32
  %index47 = getelementptr inbounds %struct.nvkm_conn, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %index47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index47, align 4
  call void @nvkm_event_send(ptr noundef %hpd, i32 noundef %conv46, i32 noundef %48, ptr noundef nonnull %rep, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rep) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_dp_dtor(ptr noundef returned %outp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 4
  tail call void @nvkm_notify_fini(ptr noundef %hpd) #5
  ret ptr %outp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_dp_init(ptr noundef %outp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %gpio1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio1, align 8
  %conn = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 6
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %hpd = getelementptr inbounds %struct.nvkm_conn, ptr %7, i32 0, i32 3
  tail call void @nvkm_notify_put(ptr noundef %hpd) #5
  %8 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn, align 4
  %info = getelementptr inbounds %struct.nvkm_conn, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %11)
  %cmp = icmp eq i8 %11, 71
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @nvkm_gpio_set(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call void @msleep(i32 noundef 300) #5
  %call8 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %outp, i1 noundef zeroext true)
  %cmp4.not = xor i1 %cmp4, true
  %brmerge = select i1 %call8, i1 true, i1 %cmp4.not
  br i1 %brmerge, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @nvkm_gpio_set(ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1, i32 noundef 0) #5
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %outp, i1 noundef zeroext true)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11, %if.end.if.end15_crit_edge
  %hpd16 = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 4
  tail call void @nvkm_notify_get(ptr noundef %hpd16) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_dp_fini(ptr noundef %outp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 4
  tail call void @nvkm_notify_put(ptr noundef %hpd) #5
  %aux1.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 3
  %0 = ptrtoint ptr %aux1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1.i, align 4
  %present20.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 5
  %2 = ptrtoint ptr %present20.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present20.i, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool21.not.i = icmp eq i8 %3, 0
  br i1 %tobool21.not.i, label %entry.nvkm_dp_enable.exit_crit_edge, label %do.body23.i

entry.nvkm_dp_enable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_enable.exit

do.body23.i:                                      ; preds = %entry
  %disp27.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %4 = ptrtoint ptr %disp27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp27.i, align 4
  %debug30.i = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 5
  %6 = ptrtoint ptr %debug30.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp31.i = icmp ugt i32 %7, 3
  br i1 %cmp31.i, label %do.end36.i, label %do.body23.i.if.end48.i_crit_edge

do.body23.i.if.end48.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

do.end36.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  %device37.i = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %device37.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device37.i, align 4
  %dev38.i = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev38.i, align 8
  %name39.i = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 4
  %index41.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %12 = ptrtoint ptr %index41.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index41.i, align 4
  %hasht43.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %hasht43.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hasht43.i, align 4
  %conv44.i = zext i16 %15 to i32
  %hashm46.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %hashm46.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hashm46.i, align 2
  %conv47.i = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef %name39.i, i32 noundef %13, i32 noundef %conv44.i, i32 noundef %conv47.i) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end36.i, %do.body23.i.if.end48.i_crit_edge
  tail call void @nvkm_i2c_aux_monitor(ptr noundef %1, i1 noundef zeroext false) #5
  %18 = ptrtoint ptr %present20.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %present20.i, align 4
  br label %nvkm_dp_enable.exit

nvkm_dp_enable.exit:                              ; preds = %if.end48.i, %entry.nvkm_dp_enable.exit_crit_edge
  %lt.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lt.i, i32 noundef 4) #5
  %19 = ptrtoint ptr %lt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %lt.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_dp_acquire(ptr noundef %outp) #0 align 64 {
entry:
  %init.i363.i = alloca %struct.nvbios_init, align 4
  %size.addr.i.i.i = alloca i8, align 1
  %lt.i.i = alloca %struct.lt_state, align 4
  %sink.i.i = alloca [2 x i8], align 1
  %init.i342.i = alloca %struct.nvbios_init, align 4
  %init104.i.i = alloca %struct.nvbios_init, align 4
  %init.i.i = alloca %struct.nvbios_init, align 4
  %init9.i.i = alloca %struct.nvbios_init, align 4
  %init46.i.i = alloca %struct.nvbios_init, align 4
  %size.addr.i330.i = alloca i8, align 1
  %size.addr.i.i = alloca i8, align 1
  %pwr.i = alloca i8, align 1
  %size.addr.i = alloca i8, align 1
  %stat = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ior1 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %0 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ior1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %stat) #5
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat, align 1, !annotation !119
  %3 = getelementptr inbounds [3 x i8], ptr %stat, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !119
  %5 = getelementptr inbounds [3 x i8], ptr %stat, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !119
  %mutex = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %7 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disp, align 4
  %head3 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %head3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn319 = load ptr, ptr %head3, align 4
  %cmp.not320 = icmp eq ptr %.pn319, %head3
  br i1 %cmp.not320, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %head9 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %head9, align 4
  %bf.lshr = lshr i32 %bf.load, 15
  %bf.clear = and i32 %bf.lshr, 255
  %rgdiv = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn322 = phi ptr [ %.pn319, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %datakbps.0321 = phi i32 [ 0, %for.body.lr.ph ], [ %datakbps.1, %for.inc.for.body_crit_edge ]
  %id = getelementptr i8, ptr %.pn322, i32 -4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %12
  %and = and i32 %bf.clear, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %hz = getelementptr i8, ptr %.pn322, i32 48
  %13 = ptrtoint ptr %hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hz, align 4
  %15 = ptrtoint ptr %rgdiv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rgdiv, align 4
  %shr = lshr i32 %14, %16
  %div = udiv i32 %shr, 1000
  %or = getelementptr i8, ptr %.pn322, i32 52
  %17 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %or, align 4
  %conv = zext i8 %18 to i32
  %mul = mul nuw nsw i32 %div, %conv
  %add = add i32 %mul, %datakbps.0321
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %datakbps.1 = phi i32 [ %add, %if.then ], [ %datakbps.0321, %for.body.for.inc_crit_edge ]
  %19 = ptrtoint ptr %.pn322 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn322, align 4
  %cmp.not = icmp eq ptr %.pn, %head3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %datakbps.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %datakbps.1, %for.inc.for.end_crit_edge ]
  %dp18 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 9
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bw, align 1
  %conv19 = zext i8 %21 to i32
  %mul20 = mul nuw nsw i32 %conv19, 27000
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nr, align 2
  %conv22 = zext i8 %23 to i32
  %mul23 = mul nuw nsw i32 %mul20, %conv22
  %sub = add i32 %datakbps.0.lcssa, 7
  %div25301 = lshr i32 %sub, 3
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 5
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp28 = icmp ugt i32 %25, 3
  br i1 %cmp28, label %do.end, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hasht, align 4
  %conv32 = zext i16 %33 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hashm, align 2
  %conv34 = zext i16 %35 to i32
  %36 = ptrtoint ptr %dp18 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp18, align 4, !range !120
  %38 = zext i8 %37 to i32
  %mst38 = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %mst38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mst38, align 4, !range !120
  %41 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %31, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %div25301, i32 noundef %mul23, i32 noundef %38, i32 noundef %41) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end, %for.end.if.end41_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul23, i32 %div25301)
  %cmp46 = icmp ult i32 %mul23, %div25301
  br i1 %cmp46, label %if.end41.do.body59_crit_edge, label %lor.lhs.false

if.end41.do.body59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

lor.lhs.false:                                    ; preds = %if.end41
  %42 = ptrtoint ptr %dp18 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp18, align 4, !range !120
  %mst53 = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %mst53 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mst53, align 4, !range !120
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp56.not = icmp eq i8 %43, %45
  br i1 %cmp56.not, label %if.end89, label %lor.lhs.false.do.body59_crit_edge

lor.lhs.false.do.body59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body59

do.body59:                                        ; preds = %lor.lhs.false.do.body59_crit_edge, %if.end41.do.body59_crit_edge
  %46 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %disp, align 4
  %debug66 = getelementptr inbounds %struct.nvkm_disp, ptr %47, i32 0, i32 1, i32 1, i32 5
  %48 = ptrtoint ptr %debug66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp67 = icmp ugt i32 %49, 3
  br i1 %cmp67, label %do.end72, label %do.body59.if.then227_crit_edge

do.body59.if.then227_crit_edge:                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then227

do.end72:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %device73 = getelementptr inbounds %struct.nvkm_disp, ptr %47, i32 0, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device73, align 4
  %dev74 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev74, align 8
  %name75 = getelementptr inbounds %struct.nvkm_disp, ptr %47, i32 0, i32 1, i32 1, i32 4
  %index77 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %54 = ptrtoint ptr %index77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index77, align 4
  %hasht79 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %hasht79 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hasht79, align 4
  %conv80 = zext i16 %57 to i32
  %hashm82 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %hashm82 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hashm82, align 2
  %conv83 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.25, ptr noundef %name75, i32 noundef %55, i32 noundef %conv80, i32 noundef %conv83) #9
  br label %if.then227

if.end89:                                         ; preds = %lor.lhs.false
  %aux = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 3
  %60 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i)
  %62 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %size.addr.i, align 1
  %call.i = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %nvkm_rdaux.exit.thread

nvkm_rdaux.exit.thread:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %do.body93

if.then.i:                                        ; preds = %if.end89
  %call1.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %61, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 514, ptr noundef nonnull %stat, ptr noundef nonnull %size.addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %nvkm_rdaux.exit

land.rhs.i:                                       ; preds = %if.then.i
  %63 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %size.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %cmp3.not.i = icmp eq i8 %64, 3
  br i1 %cmp3.not.i, label %land.rhs.i.if.end123_crit_edge, label %do.end.i, !prof !121

land.rhs.i.if.end123_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %if.end123

nvkm_rdaux.exit:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_i2c_aux_release(ptr noundef %61) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %do.body93

do.body93:                                        ; preds = %nvkm_rdaux.exit, %nvkm_rdaux.exit.thread
  %65 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disp, align 4
  %debug100 = getelementptr inbounds %struct.nvkm_disp, ptr %66, i32 0, i32 1, i32 1, i32 5
  %67 = ptrtoint ptr %debug100 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %debug100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp101 = icmp ugt i32 %68, 3
  br i1 %cmp101, label %do.end106, label %do.body93.if.then227_crit_edge

do.body93.if.then227_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then227

do.end106:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #7
  %device107 = getelementptr inbounds %struct.nvkm_disp, ptr %66, i32 0, i32 1, i32 1, i32 1
  %69 = ptrtoint ptr %device107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device107, align 4
  %dev108 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev108, align 8
  %name109 = getelementptr inbounds %struct.nvkm_disp, ptr %66, i32 0, i32 1, i32 1, i32 4
  %index111 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %73 = ptrtoint ptr %index111 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index111, align 4
  %hasht113 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %hasht113 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hasht113, align 4
  %conv114 = zext i16 %76 to i32
  %hashm116 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %hashm116 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %hashm116, align 2
  %conv117 = zext i16 %78 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.28, ptr noundef %name109, i32 noundef %74, i32 noundef %conv114, i32 noundef %conv117) #9
  br label %if.then227

if.end123:                                        ; preds = %do.end.i, %land.rhs.i.if.end123_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %61) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %5, align 1
  %81 = and i8 %80, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool126.not = icmp eq i8 %81, 0
  br i1 %tobool126.not, label %do.body189, label %for.cond128.preheader

for.cond128.preheader:                            ; preds = %if.end123
  %82 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nr, align 2
  %conv131 = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp132323.not = icmp eq i8 %83, 0
  br i1 %cmp132323.not, label %for.cond128.preheader.lor.lhs.false222_crit_edge, label %for.cond128.preheader.for.body134_crit_edge

for.cond128.preheader.for.body134_crit_edge:      ; preds = %for.cond128.preheader
  br label %for.body134

for.cond128.preheader.lor.lhs.false222_crit_edge: ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false222

for.cond128:                                      ; preds = %for.body134
  %inc = add nuw nsw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, %conv131
  br i1 %exitcond.not, label %for.cond128.lor.lhs.false222_crit_edge, label %for.cond128.for.body134_crit_edge

for.cond128.for.body134_crit_edge:                ; preds = %for.cond128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body134

for.cond128.lor.lhs.false222_crit_edge:           ; preds = %for.cond128
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false222

for.body134:                                      ; preds = %for.cond128.for.body134_crit_edge, %for.cond128.preheader.for.body134_crit_edge
  %i.0324 = phi i32 [ %inc, %for.cond128.for.body134_crit_edge ], [ 0, %for.cond128.preheader.for.body134_crit_edge ]
  %84 = lshr i32 %i.0324, 1
  %arrayidx136 = getelementptr [3 x i8], ptr %stat, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %86 to i32
  %and138 = shl i32 %i.0324, 2
  %mul139 = and i32 %and138, 4
  %shr140 = lshr i32 %conv137, %mul139
  %87 = and i32 %shr140, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %87)
  %.not = icmp eq i32 %87, 7
  br i1 %.not, label %for.cond128, label %do.body155

do.body155:                                       ; preds = %for.body134
  %88 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %disp, align 4
  %debug162 = getelementptr inbounds %struct.nvkm_disp, ptr %89, i32 0, i32 1, i32 1, i32 5
  %90 = ptrtoint ptr %debug162 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp163 = icmp ugt i32 %91, 3
  br i1 %cmp163, label %do.end168, label %do.body155.if.then227_crit_edge

do.body155.if.then227_crit_edge:                  ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then227

do.end168:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  %conv142.le = and i32 %shr140, 15
  %device169 = getelementptr inbounds %struct.nvkm_disp, ptr %89, i32 0, i32 1, i32 1, i32 1
  %92 = ptrtoint ptr %device169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device169, align 4
  %dev170 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev170, align 8
  %name171 = getelementptr inbounds %struct.nvkm_disp, ptr %89, i32 0, i32 1, i32 1, i32 4
  %index173 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %96 = ptrtoint ptr %index173 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index173, align 4
  %hasht175 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %hasht175 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %hasht175, align 4
  %conv176 = zext i16 %99 to i32
  %hashm178 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %hashm178 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %hashm178, align 2
  %conv179 = zext i16 %101 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.31, ptr noundef %name171, i32 noundef %97, i32 noundef %conv176, i32 noundef %conv179, i32 noundef %conv142.le) #9
  br label %if.then227

do.body189:                                       ; preds = %if.end123
  %102 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %disp, align 4
  %debug196 = getelementptr inbounds %struct.nvkm_disp, ptr %103, i32 0, i32 1, i32 1, i32 5
  %104 = ptrtoint ptr %debug196 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp197 = icmp ugt i32 %105, 3
  br i1 %cmp197, label %do.end202, label %do.body189.if.then227_crit_edge

do.body189.if.then227_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then227

do.end202:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #7
  %device203 = getelementptr inbounds %struct.nvkm_disp, ptr %103, i32 0, i32 1, i32 1, i32 1
  %106 = ptrtoint ptr %device203 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %device203, align 4
  %dev204 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev204, align 8
  %name205 = getelementptr inbounds %struct.nvkm_disp, ptr %103, i32 0, i32 1, i32 1, i32 4
  %index207 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %110 = ptrtoint ptr %index207 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index207, align 4
  %hasht209 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %112 = ptrtoint ptr %hasht209 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %hasht209, align 4
  %conv210 = zext i16 %113 to i32
  %hashm212 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %hashm212 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %hashm212, align 2
  %conv213 = zext i16 %115 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.34, ptr noundef %name205, i32 noundef %111, i32 noundef %conv210, i32 noundef %conv213) #9
  br label %if.then227

lor.lhs.false222:                                 ; preds = %for.cond128.lor.lhs.false222_crit_edge, %for.cond128.preheader.lor.lhs.false222_crit_edge
  %lt223 = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lt223, i32 noundef 4) #5
  %116 = ptrtoint ptr %lt223 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %lt223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool226.not = icmp eq i32 %117, 0
  br i1 %tobool226.not, label %lor.lhs.false222.if.then227_crit_edge, label %lor.lhs.false222.cleanup231_crit_edge

lor.lhs.false222.cleanup231_crit_edge:            ; preds = %lor.lhs.false222
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup231

lor.lhs.false222.if.then227_crit_edge:            ; preds = %lor.lhs.false222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then227

if.then227:                                       ; preds = %lor.lhs.false222.if.then227_crit_edge, %do.end202, %do.body189.if.then227_crit_edge, %do.end168, %do.body155.if.then227_crit_edge, %do.end106, %do.body93.if.then227_crit_edge, %do.end72, %do.body59.if.then227_crit_edge
  %118 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ior1, align 4
  %arrayidx.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 6, i32 2
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i, align 1
  %122 = and i8 %121, 31
  %arrayidx4.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 6, i32 1
  %123 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx4.i, align 1
  %link_nr.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13, i32 0, i32 1
  %125 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %link_nr.i, align 4
  %link_bw.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13, i32 0, i32 2
  %127 = ptrtoint ptr %link_bw.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %link_bw.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr.i) #5
  %129 = ptrtoint ptr %pwr.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -1, ptr %pwr.i, align 1, !annotation !119
  %conv9.i = and i32 %126, 255
  %conv12.i = and i32 %128, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.then227
  %cfg.0395.i = phi ptr [ @nvkm_dp_rates, %if.then227 ], [ %cfg.0395.i.be, %for.body.i.backedge ]
  %failsafe.0394.i = phi ptr [ null, %if.then227 ], [ %failsafe.0394.i.be, %for.body.i.backedge ]
  %nr.i = getelementptr inbounds %struct.dp_rates, ptr %cfg.0395.i, i32 0, i32 2
  %130 = ptrtoint ptr %nr.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %nr.i, align 1
  %conv8.i = zext i8 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %conv8.i)
  %cmp.not.i = icmp ult i32 %conv9.i, %conv8.i
  br i1 %cmp.not.i, label %for.body.i.if.end28.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end28.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bw.i = getelementptr inbounds %struct.dp_rates, ptr %cfg.0395.i, i32 0, i32 1
  %132 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bw.i, align 4
  %conv11.i = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv11.i)
  %cmp13.not.i = icmp ult i32 %conv12.i, %conv11.i
  br i1 %cmp13.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %if.then.i303

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then.i303:                                     ; preds = %land.lhs.true.i
  %tobool15.not.i = icmp eq ptr %failsafe.0394.i, null
  br i1 %tobool15.not.i, label %if.then.i303.if.end28.i_crit_edge, label %lor.lhs.false.i

if.then.i303.if.end28.i_crit_edge:                ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

lor.lhs.false.i:                                  ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %122)
  %cmp19.not.i = icmp ugt i8 %131, %122
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %124)
  %cmp25.not.i = icmp ugt i8 %133, %124
  %or.cond.i = select i1 %cmp19.not.i, i1 true, i1 %cmp25.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.land.lhs.true30.i_crit_edge, label %lor.lhs.false.i.if.end28.i_crit_edge

lor.lhs.false.i.if.end28.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

lor.lhs.false.i.land.lhs.true30.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true30.i

if.end28.i:                                       ; preds = %lor.lhs.false.i.if.end28.i_crit_edge, %if.then.i303.if.end28.i_crit_edge, %land.lhs.true.i.if.end28.i_crit_edge, %for.body.i.if.end28.i_crit_edge
  %failsafe.1.i = phi ptr [ %failsafe.0394.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %failsafe.0394.i, %for.body.i.if.end28.i_crit_edge ], [ %cfg.0395.i, %lor.lhs.false.i.if.end28.i_crit_edge ], [ %cfg.0395.i, %if.then.i303.if.end28.i_crit_edge ]
  %tobool29.not.i = icmp eq ptr %failsafe.1.i, null
  br i1 %tobool29.not.i, label %for.inc.thread.i, label %if.end28.i.land.lhs.true30.i_crit_edge

if.end28.i.land.lhs.true30.i_crit_edge:           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.end28.i.land.lhs.true30.i_crit_edge, %lor.lhs.false.i.land.lhs.true30.i_crit_edge
  %failsafe.1382.i = phi ptr [ %failsafe.1.i, %if.end28.i.land.lhs.true30.i_crit_edge ], [ %failsafe.0394.i, %lor.lhs.false.i.land.lhs.true30.i_crit_edge ]
  %arrayidx31.i = getelementptr %struct.dp_rates, ptr %cfg.0395.i, i32 1
  %134 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %div25301)
  %cmp33.i = icmp ult i32 %135, %div25301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i304 = icmp eq i32 %135, 0
  %or.cond315 = or i1 %cmp33.i, %tobool.not.i304
  br i1 %or.cond315, label %if.end62.i, label %land.lhs.true30.i.for.body.i.backedge_crit_edge

land.lhs.true30.i.for.body.i.backedge_crit_edge:  ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.thread.i.for.body.i.backedge_crit_edge, %land.lhs.true30.i.for.body.i.backedge_crit_edge
  %cfg.0395.i.be = phi ptr [ %incdec.ptr408.i, %for.inc.thread.i.for.body.i.backedge_crit_edge ], [ %arrayidx31.i, %land.lhs.true30.i.for.body.i.backedge_crit_edge ]
  %failsafe.0394.i.be = phi ptr [ null, %for.inc.thread.i.for.body.i.backedge_crit_edge ], [ %failsafe.1382.i, %land.lhs.true30.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc.thread.i:                                 ; preds = %if.end28.i
  %incdec.ptr408.i = getelementptr %struct.dp_rates, ptr %cfg.0395.i, i32 1
  %136 = ptrtoint ptr %incdec.ptr408.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %incdec.ptr408.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not409.i = icmp eq i32 %137, 0
  br i1 %tobool.not409.i, label %do.end.i305, label %for.inc.thread.i.for.body.i.backedge_crit_edge

for.inc.thread.i.for.body.i.backedge_crit_edge:   ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.backedge

do.end.i305:                                      ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 402, i32 noundef 9, ptr noundef null) #5
  br label %nvkm_dp_train.exit

if.end62.i:                                       ; preds = %land.lhs.true30.i
  %aux.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 3
  %138 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i.i) #5
  %140 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %size.addr.i.i, align 1
  %call.i.i306 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i306)
  %cmp.i.i = icmp eq i32 %call.i.i306, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %nvkm_rdaux.exit.thread.i

nvkm_rdaux.exit.thread.i:                         ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i.i) #5
  br label %do.body79.i

if.then.i.i:                                      ; preds = %if.end62.i
  %call1.i.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %139, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 1536, ptr noundef nonnull %pwr.i, ptr noundef nonnull %size.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %nvkm_rdaux.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %141 = ptrtoint ptr %size.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %size.addr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %142)
  %cmp3.not.i.i = icmp eq i8 %142, 1
  br i1 %cmp3.not.i.i, label %land.rhs.i.i.if.then64.i_crit_edge, label %do.end.i.i, !prof !121

land.rhs.i.i.if.then64.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %if.then64.i

nvkm_rdaux.exit.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_i2c_aux_release(ptr noundef %139) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i.i) #5
  br label %do.body79.i

if.then64.i:                                      ; preds = %do.end.i.i, %land.rhs.i.i.if.then64.i_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %139) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i.i) #5
  %143 = ptrtoint ptr %pwr.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %pwr.i, align 1
  %145 = and i8 %144, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %145)
  %cmp67.not.i = icmp eq i8 %145, 1
  br i1 %cmp67.not.i, label %if.then64.i.do.body79.i_crit_edge, label %if.then69.i

if.then64.i.do.body79.i_crit_edge:                ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body79.i

if.then69.i:                                      ; preds = %if.then64.i
  %and71.i = and i8 %144, -4
  %146 = or i8 %and71.i, 1
  %147 = ptrtoint ptr %pwr.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %pwr.i, align 1
  %148 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i330.i) #5
  %150 = ptrtoint ptr %size.addr.i330.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %size.addr.i330.i, align 1
  %call.i331.i = call i32 @nvkm_i2c_aux_acquire(ptr noundef %149) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i331.i)
  %cmp.i332.i = icmp eq i32 %call.i331.i, 0
  br i1 %cmp.i332.i, label %if.then.i334.i, label %if.then69.i.nvkm_wraux.exit.i_crit_edge

if.then69.i.nvkm_wraux.exit.i_crit_edge:          ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_wraux.exit.i

if.then.i334.i:                                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i333.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %149, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 1536, ptr noundef nonnull %pwr.i, ptr noundef nonnull %size.addr.i330.i) #5
  call void @nvkm_i2c_aux_release(ptr noundef %149) #5
  br label %nvkm_wraux.exit.i

nvkm_wraux.exit.i:                                ; preds = %if.then.i334.i, %if.then69.i.nvkm_wraux.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i330.i) #5
  br label %do.body79.i

do.body79.i:                                      ; preds = %nvkm_wraux.exit.i, %if.then64.i.do.body79.i_crit_edge, %nvkm_rdaux.exit.i, %nvkm_rdaux.exit.thread.i
  %151 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %disp, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_disp, ptr %152, i32 0, i32 1, i32 1, i32 5
  %153 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %154)
  %cmp81.i = icmp ugt i32 %154, 3
  br i1 %cmp81.i, label %do.end86.i, label %do.body79.i.if.end95.i_crit_edge

do.body79.i.if.end95.i_crit_edge:                 ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

do.end86.i:                                       ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #7
  %device.i = getelementptr inbounds %struct.nvkm_disp, ptr %152, i32 0, i32 1, i32 1, i32 1
  %155 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_disp, ptr %152, i32 0, i32 1, i32 1, i32 4
  %index.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %159 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %index.i, align 4
  %hasht.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %161 = ptrtoint ptr %hasht.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %hasht.i, align 4
  %conv88.i = zext i16 %162 to i32
  %hashm.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %163 = ptrtoint ptr %hashm.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %hashm.i, align 2
  %conv90.i = zext i16 %164 to i32
  %nr91.i = getelementptr inbounds %struct.dp_rates, ptr %failsafe.1382.i, i32 0, i32 2
  %165 = ptrtoint ptr %nr91.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %nr91.i, align 1
  %conv92.i = zext i8 %166 to i32
  %bw93.i = getelementptr inbounds %struct.dp_rates, ptr %failsafe.1382.i, i32 0, i32 1
  %167 = ptrtoint ptr %bw93.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bw93.i, align 4
  %conv94.i = zext i8 %168 to i32
  %mul.i = mul nuw nsw i32 %conv94.i, 27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.36, ptr noundef %name.i, i32 noundef %160, i32 noundef %conv88.i, i32 noundef %conv90.i, i32 noundef %conv92.i, i32 noundef %mul.i) #9
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end86.i, %do.body79.i.if.end95.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 6, i32 3
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i.i, align 1
  %171 = and i8 %170, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i337.i = icmp eq i8 %171, 0
  br i1 %tobool.not.i337.i, label %if.else.i.i, label %if.then.i339.i

if.then.i339.i:                                   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init.i.i) #5
  %172 = getelementptr inbounds i8, ptr %init.i.i, i32 24
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 33554431, ptr %172, align 4, !annotation !119
  %174 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %disp, align 4
  %subdev1.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %175, i32 0, i32 1, i32 1
  %176 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %subdev1.i.i, ptr %init.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 1
  %arrayidx2.i.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 1, i32 3, i32 2
  %177 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx2.i.i, align 4
  %179 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %offset.i.i, align 4
  %outp.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 2
  %or.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 3
  %link.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 4
  %head.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 5
  %180 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %head.i.i, align 4
  %nested.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i.i, i32 0, i32 7
  %info3.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %181 = call ptr @memset(ptr %nested.i.i, i32 0, i32 16)
  %182 = ptrtoint ptr %outp.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %info3.i.i, ptr %outp.i.i, align 4
  %183 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ior1, align 4
  %id.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %id.i.i, align 4
  %187 = ptrtoint ptr %or.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %or.i.i, align 4
  %link7.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %184, i32 0, i32 8, i32 2
  %188 = ptrtoint ptr %link7.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %bf.load.i.i = load i32, ptr %link7.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 23
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 3
  %189 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %bf.clear.i.i, ptr %link.i.i, align 4
  %call.i338.i = call i32 @nvbios_exec(ptr noundef nonnull %init.i.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init.i.i) #5
  br label %if.end.i341.i

if.else.i.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init9.i.i) #5
  %190 = getelementptr inbounds i8, ptr %init9.i.i, i32 24
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 33554431, ptr %190, align 4, !annotation !119
  %192 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %disp, align 4
  %subdev13.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %193, i32 0, i32 1, i32 1
  %194 = ptrtoint ptr %init9.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %subdev13.i.i, ptr %init9.i.i, align 4
  %offset14.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 1
  %arrayidx17.i.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 1, i32 3, i32 3
  %195 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx17.i.i, align 4
  %197 = ptrtoint ptr %offset14.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %offset14.i.i, align 4
  %outp18.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 2
  %or19.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 3
  %link20.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 4
  %head21.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 5
  %198 = ptrtoint ptr %head21.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -1, ptr %head21.i.i, align 4
  %nested23.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init9.i.i, i32 0, i32 7
  %info27.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %199 = call ptr @memset(ptr %nested23.i.i, i32 0, i32 16)
  %200 = ptrtoint ptr %outp18.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %info27.i.i, ptr %outp18.i.i, align 4
  %201 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ior1, align 4
  %id30.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %id30.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %id30.i.i, align 4
  %205 = ptrtoint ptr %or19.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %or19.i.i, align 4
  %link34.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %202, i32 0, i32 8, i32 2
  %206 = ptrtoint ptr %link34.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %bf.load35.i.i = load i32, ptr %link34.i.i, align 4
  %bf.lshr36.i.i = lshr i32 %bf.load35.i.i, 23
  %bf.clear37.i.i = and i32 %bf.lshr36.i.i, 3
  %207 = ptrtoint ptr %link20.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %bf.clear37.i.i, ptr %link20.i.i, align 4
  %call40.i.i = call i32 @nvbios_exec(ptr noundef nonnull %init9.i.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init9.i.i) #5
  br label %if.end.i341.i

if.end.i341.i:                                    ; preds = %if.else.i.i, %if.then.i339.i
  %208 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %disp, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %209, i32 0, i32 1, i32 1, i32 1
  %210 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %device.i.i, align 4
  %card_type.i.i = getelementptr inbounds %struct.nvkm_device, ptr %211, i32 0, i32 15
  %212 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %213)
  %cmp.i340.i = icmp ugt i32 %213, 367
  br i1 %cmp.i340.i, label %if.end.i341.i.nvkm_dp_train_init.exit.i_crit_edge, label %if.then45.i.i

if.end.i341.i.nvkm_dp_train_init.exit.i_crit_edge: ; preds = %if.end.i341.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_init.exit.i

if.then45.i.i:                                    ; preds = %if.end.i341.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init46.i.i) #5
  %214 = getelementptr inbounds i8, ptr %init46.i.i, i32 24
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 33554431, ptr %214, align 4, !annotation !119
  %subdev50.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %209, i32 0, i32 1, i32 1
  %216 = ptrtoint ptr %init46.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %subdev50.i.i, ptr %init46.i.i, align 4
  %offset51.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 1
  %script53.i.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 1, i32 3
  %217 = ptrtoint ptr %script53.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %script53.i.i, align 4
  %219 = ptrtoint ptr %offset51.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %offset51.i.i, align 4
  %outp55.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 2
  %or56.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 3
  %link57.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 4
  %head58.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 5
  %220 = ptrtoint ptr %head58.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %head58.i.i, align 4
  %nested60.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init46.i.i, i32 0, i32 7
  %info64.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %221 = call ptr @memset(ptr %nested60.i.i, i32 0, i32 16)
  %222 = ptrtoint ptr %outp55.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %info64.i.i, ptr %outp55.i.i, align 4
  %223 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ior1, align 4
  %id67.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %id67.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %id67.i.i, align 4
  %227 = ptrtoint ptr %or56.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %or56.i.i, align 4
  %link71.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %224, i32 0, i32 8, i32 2
  %228 = ptrtoint ptr %link71.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %bf.load72.i.i = load i32, ptr %link71.i.i, align 4
  %bf.lshr73.i.i = lshr i32 %bf.load72.i.i, 23
  %bf.clear74.i.i = and i32 %bf.lshr73.i.i, 3
  %229 = ptrtoint ptr %link57.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %bf.clear74.i.i, ptr %link57.i.i, align 4
  %call77.i.i = call i32 @nvbios_exec(ptr noundef nonnull %init46.i.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init46.i.i) #5
  br label %nvkm_dp_train_init.exit.i

nvkm_dp_train_init.exit.i:                        ; preds = %if.then45.i.i, %if.end.i341.i.nvkm_dp_train_init.exit.i_crit_edge
  %cmp103.not399.i = icmp ult ptr %failsafe.1382.i, @nvkm_dp_rates
  br i1 %cmp103.not399.i, label %nvkm_dp_train_init.exit.i.for.end184.i_crit_edge, label %for.body105.lr.ph.i

nvkm_dp_train_init.exit.i.for.end184.i_crit_edge: ; preds = %nvkm_dp_train_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end184.i

for.body105.lr.ph.i:                              ; preds = %nvkm_dp_train_init.exit.i
  %index152.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %hasht154.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %hashm157.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %mst.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8, i32 1
  %dp166.i = getelementptr inbounds %struct.nvkm_ior, ptr %119, i32 0, i32 9
  %ef.i = getelementptr inbounds %struct.nvkm_ior, ptr %119, i32 0, i32 9, i32 1
  %bw177.i = getelementptr inbounds %struct.nvkm_ior, ptr %119, i32 0, i32 9, i32 3
  %nr180.i = getelementptr inbounds %struct.nvkm_ior, ptr %119, i32 0, i32 9, i32 2
  %230 = getelementptr inbounds i8, ptr %lt.i.i, i32 4
  %231 = getelementptr inbounds [2 x i8], ptr %sink.i.i, i32 0, i32 1
  %pc2.i.i = getelementptr inbounds %struct.lt_state, ptr %lt.i.i, i32 0, i32 3
  %232 = getelementptr inbounds i8, ptr %init.i342.i, i32 24
  %offset.i350.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 1
  %outp.i351.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 2
  %or.i352.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 3
  %link.i353.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 4
  %head.i354.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 5
  %nested.i356.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i342.i, i32 0, i32 7
  %info58.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %version.i.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 2
  %233 = getelementptr inbounds i8, ptr %init104.i.i, i32 24
  %offset106.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 1
  %outp107.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 2
  %or108.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 3
  %link109.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 4
  %head110.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 5
  %nested112.i.i = getelementptr inbounds %struct.nvbios_init, ptr %init104.i.i, i32 0, i32 7
  %conf.i.i.i = getelementptr inbounds %struct.lt_state, ptr %lt.i.i, i32 0, i32 2
  %arrayidx10.i.i.i = getelementptr inbounds %struct.lt_state, ptr %lt.i.i, i32 0, i32 1, i32 2
  br label %for.body105.i

for.body105.i:                                    ; preds = %for.inc182.i.for.body105.i_crit_edge, %for.body105.lr.ph.i
  %ret.0403.i = phi i32 [ -22, %for.body105.lr.ph.i ], [ %ret.1.i, %for.inc182.i.for.body105.i_crit_edge ]
  %cfg.1400.i = phi ptr [ @nvkm_dp_rates, %for.body105.lr.ph.i ], [ %incdec.ptr183.i, %for.inc182.i.for.body105.i_crit_edge ]
  %nr106.i = getelementptr inbounds %struct.dp_rates, ptr %cfg.1400.i, i32 0, i32 2
  %234 = ptrtoint ptr %nr106.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %nr106.i, align 1
  %conv107.i = zext i8 %235 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %conv107.i)
  %cmp109.i = icmp ult i32 %conv9.i, %conv107.i
  br i1 %cmp109.i, label %for.body105.i.if.then129.i_crit_edge, label %lor.lhs.false111.i

for.body105.i.if.then129.i_crit_edge:             ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129.i

lor.lhs.false111.i:                               ; preds = %for.body105.i
  %bw112.i = getelementptr inbounds %struct.dp_rates, ptr %cfg.1400.i, i32 0, i32 1
  %236 = ptrtoint ptr %bw112.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %bw112.i, align 4
  %conv113.i = zext i8 %237 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv113.i)
  %cmp115.i = icmp ult i32 %conv12.i, %conv113.i
  call void @__sanitizer_cov_trace_cmp1(i8 %235, i8 %122)
  %cmp121.i = icmp ugt i8 %235, %122
  %or.cond328.i = select i1 %cmp115.i, i1 true, i1 %cmp121.i
  call void @__sanitizer_cov_trace_cmp1(i8 %237, i8 %124)
  %cmp127.i = icmp ugt i8 %237, %124
  %or.cond329.i = select i1 %or.cond328.i, i1 true, i1 %cmp127.i
  br i1 %or.cond329.i, label %lor.lhs.false111.i.if.then129.i_crit_edge, label %lor.lhs.false111.i.if.end164.i_crit_edge

lor.lhs.false111.i.if.end164.i_crit_edge:         ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164.i

lor.lhs.false111.i.if.then129.i_crit_edge:        ; preds = %lor.lhs.false111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then129.i

if.then129.i:                                     ; preds = %lor.lhs.false111.i.if.then129.i_crit_edge, %for.body105.i.if.then129.i_crit_edge
  %cmp130.not.i = icmp eq ptr %cfg.1400.i, %failsafe.1382.i
  br i1 %cmp130.not.i, label %do.body134.i, label %if.then129.i.for.inc182.i_crit_edge

if.then129.i.for.inc182.i_crit_edge:              ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc182.i

do.body134.i:                                     ; preds = %if.then129.i
  %238 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %disp, align 4
  %debug141.i = getelementptr inbounds %struct.nvkm_disp, ptr %239, i32 0, i32 1, i32 1, i32 5
  %240 = ptrtoint ptr %debug141.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %debug141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp142.not.i = icmp eq i32 %241, 0
  br i1 %cmp142.not.i, label %do.body134.i.if.end164.i_crit_edge, label %do.end147.i

do.body134.i.if.end164.i_crit_edge:               ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164.i

do.end147.i:                                      ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #7
  %device148.i = getelementptr inbounds %struct.nvkm_disp, ptr %239, i32 0, i32 1, i32 1, i32 1
  %242 = ptrtoint ptr %device148.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %device148.i, align 4
  %dev149.i = getelementptr inbounds %struct.nvkm_device, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %dev149.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev149.i, align 8
  %name150.i = getelementptr inbounds %struct.nvkm_disp, ptr %239, i32 0, i32 1, i32 1, i32 4
  %246 = ptrtoint ptr %index152.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %index152.i, align 4
  %248 = ptrtoint ptr %hasht154.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %hasht154.i, align 4
  %conv155.i = zext i16 %249 to i32
  %250 = ptrtoint ptr %hashm157.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %hashm157.i, align 2
  %conv158.i = zext i16 %251 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull @.str.39, ptr noundef %name150.i, i32 noundef %247, i32 noundef %conv155.i, i32 noundef %conv158.i) #9
  br label %if.end164.i

if.end164.i:                                      ; preds = %do.end147.i, %do.body134.i.if.end164.i_crit_edge, %lor.lhs.false111.i.if.end164.i_crit_edge
  %252 = ptrtoint ptr %mst.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %mst.i, align 4, !range !120
  %254 = ptrtoint ptr %dp166.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %253, ptr %dp166.i, align 4
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.i, align 1
  %.lobit.i = lshr i8 %256, 7
  %257 = ptrtoint ptr %ef.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %.lobit.i, ptr %ef.i, align 1
  %bw175.i = getelementptr inbounds %struct.dp_rates, ptr %cfg.1400.i, i32 0, i32 1
  %258 = ptrtoint ptr %bw175.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %bw175.i, align 4
  %260 = ptrtoint ptr %bw177.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %bw177.i, align 1
  %261 = ptrtoint ptr %nr106.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %nr106.i, align 1
  %263 = ptrtoint ptr %nr180.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %nr180.i, align 2
  %264 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ior1, align 4
  %266 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %disp, align 4
  %subdev3.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %267, i32 0, i32 1, i32 1
  %device.i343.i = getelementptr inbounds %struct.nvkm_disp, ptr %267, i32 0, i32 1, i32 1, i32 1
  %268 = ptrtoint ptr %device.i343.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %device.i343.i, align 4
  %bios4.i.i = getelementptr inbounds %struct.nvkm_device, ptr %269, i32 0, i32 21
  %270 = ptrtoint ptr %bios4.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %bios4.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lt.i.i) #5
  %272 = call ptr @memset(ptr %230, i32 0, i32 16)
  %273 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %outp, ptr %lt.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sink.i.i) #5
  %274 = ptrtoint ptr %sink.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 -1, ptr %sink.i.i, align 1, !annotation !119
  %275 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 -1, ptr %231, align 1, !annotation !119
  %debug.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %267, i32 0, i32 1, i32 1, i32 5
  %276 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %debug.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %277)
  %cmp.i344.i = icmp ugt i32 %277, 3
  br i1 %cmp.i344.i, label %do.end.i345.i, label %if.end164.i.if.end.i346.i_crit_edge

if.end164.i.if.end.i346.i_crit_edge:              ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i346.i

do.end.i345.i:                                    ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #7
  %278 = ptrtoint ptr %device.i343.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %device.i343.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %279, i32 0, i32 2
  %280 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %267, i32 0, i32 1, i32 1, i32 4
  %282 = ptrtoint ptr %index152.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %index152.i, align 4
  %284 = ptrtoint ptr %hasht154.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %hasht154.i, align 4
  %conv.i.i = zext i16 %285 to i32
  %286 = ptrtoint ptr %hashm157.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %hashm157.i, align 2
  %conv13.i.i = zext i16 %287 to i32
  %nr.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 2
  %288 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %nr.i.i, align 2
  %conv15.i.i = zext i8 %289 to i32
  %bw.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 3
  %290 = ptrtoint ptr %bw.i.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %bw.i.i, align 1
  %conv17.i.i = zext i8 %291 to i32
  %mul.i.i = mul nuw nsw i32 %conv17.i.i, 27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %281, ptr noundef nonnull @.str.47, ptr noundef %name.i.i, i32 noundef %283, i32 noundef %conv.i.i, i32 noundef %conv13.i.i, i32 noundef %conv15.i.i, i32 noundef %mul.i.i) #9
  br label %if.end.i346.i

if.end.i346.i:                                    ; preds = %do.end.i345.i, %if.end164.i.if.end.i346.i_crit_edge
  %292 = ptrtoint ptr %device.i343.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %device.i343.i, align 4
  %chipset.i.i = getelementptr inbounds %struct.nvkm_device, ptr %293, i32 0, i32 16
  %294 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %chipset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %295)
  %cmp25.i.i = icmp ult i32 %295, 208
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.end.i346.i.if.end30.i.i_crit_edge

if.end.i346.i.if.end30.i.i_crit_edge:             ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #7
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx.i, align 1
  %298 = and i8 %297, -65
  store i8 %298, ptr %arrayidx.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.end.i346.i.if.end30.i.i_crit_edge
  %299 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx.i, align 1
  %301 = lshr i8 %300, 6
  %.lobit.i.i = and i8 %301, 1
  %302 = ptrtoint ptr %pc2.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %.lobit.i.i, ptr %pc2.i.i, align 2
  %303 = ptrtoint ptr %device.i343.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %device.i343.i, align 4
  %card_type.i348.i = getelementptr inbounds %struct.nvkm_device, ptr %304, i32 0, i32 15
  %305 = ptrtoint ptr %card_type.i348.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %card_type.i348.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %306)
  %cmp38.i.i = icmp ugt i32 %306, 367
  br i1 %cmp38.i.i, label %land.lhs.true.i.i, label %if.end30.i.i.if.end64.i.i_crit_edge

if.end30.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i.i

land.lhs.true.i.i:                                ; preds = %if.end30.i.i
  %307 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %lt.i.i, align 4
  %script.i.i = getelementptr inbounds %struct.nvkm_dp, ptr %308, i32 0, i32 1, i32 3
  %309 = ptrtoint ptr %script.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %script.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool43.not.i.i = icmp eq i32 %310, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true.i.i.if.end64.i.i_crit_edge, label %while.cond.preheader.i.i

land.lhs.true.i.i.if.end64.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i.i

while.cond.preheader.i.i:                         ; preds = %land.lhs.true.i.i
  %bw46.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %lnkcmp.0.i.i = phi i32 [ %add.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %310, %while.cond.preheader.i.i ]
  %311 = ptrtoint ptr %bw46.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %bw46.i.i, align 1
  %call.i349.i = call zeroext i8 @nvbios_rd08(ptr noundef %271, i32 noundef %lnkcmp.0.i.i) #5
  %cmp49.i.i = icmp ult i8 %312, %call.i349.i
  %add.i.i = add i32 %lnkcmp.0.i.i, 3
  br i1 %cmp49.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add51.i.i = add i32 %lnkcmp.0.i.i, 1
  %call52.i.i = call zeroext i16 @nvbios_rd16(ptr noundef %271, i32 noundef %add51.i.i) #5
  %conv53.i.i = zext i16 %call52.i.i to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init.i342.i) #5
  %313 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 33554431, ptr %232, align 4, !annotation !119
  %314 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %disp, align 4
  %subdev57.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %315, i32 0, i32 1, i32 1
  %316 = ptrtoint ptr %init.i342.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %subdev57.i.i, ptr %init.i342.i, align 4
  %317 = ptrtoint ptr %offset.i350.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %conv53.i.i, ptr %offset.i350.i, align 4
  %318 = ptrtoint ptr %head.i354.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 -1, ptr %head.i354.i, align 4
  %319 = call ptr @memset(ptr %nested.i356.i, i32 0, i32 16)
  %320 = ptrtoint ptr %outp.i351.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %info58.i.i, ptr %outp.i351.i, align 4
  %id.i357.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 3
  %321 = ptrtoint ptr %id.i357.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %id.i357.i, align 4
  %323 = ptrtoint ptr %or.i352.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %or.i352.i, align 4
  %link61.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 8, i32 2
  %324 = ptrtoint ptr %link61.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %bf.load.i358.i = load i32, ptr %link61.i.i, align 4
  %bf.lshr.i359.i = lshr i32 %bf.load.i358.i, 23
  %bf.clear.i360.i = and i32 %bf.lshr.i359.i, 3
  %325 = ptrtoint ptr %link.i353.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %bf.clear.i360.i, ptr %link.i353.i, align 4
  %call63.i.i = call i32 @nvbios_exec(ptr noundef nonnull %init.i342.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init.i342.i) #5
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %while.end.i.i, %land.lhs.true.i.i.if.end64.i.i_crit_edge, %if.end30.i.i.if.end64.i.i_crit_edge
  %326 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %lt.i.i, align 4
  %lnkcmp67.i.i = getelementptr inbounds %struct.nvkm_dp, ptr %327, i32 0, i32 1, i32 4
  %328 = ptrtoint ptr %lnkcmp67.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %lnkcmp67.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool68.not.i.i = icmp eq i32 %329, 0
  br i1 %tobool68.not.i.i, label %if.end64.i.i.if.end128.i.i_crit_edge, label %if.then69.i.i

if.end64.i.i.if.end128.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128.i.i

if.then69.i.i:                                    ; preds = %if.end64.i.i
  %330 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %331)
  %cmp71.i.i = icmp ult i8 %331, 48
  %bw76.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 3
  br i1 %cmp71.i.i, label %if.then69.i.i.while.cond74.i.i_crit_edge, label %if.then69.i.i.while.cond89.i.i_crit_edge

if.then69.i.i.while.cond89.i.i_crit_edge:         ; preds = %if.then69.i.i
  br label %while.cond89.i.i

if.then69.i.i.while.cond74.i.i_crit_edge:         ; preds = %if.then69.i.i
  br label %while.cond74.i.i

while.cond74.i.i:                                 ; preds = %while.cond74.i.i.while.cond74.i.i_crit_edge, %if.then69.i.i.while.cond74.i.i_crit_edge
  %lnkcmp.1.i.i = phi i32 [ %add84.i.i, %while.cond74.i.i.while.cond74.i.i_crit_edge ], [ %329, %if.then69.i.i.while.cond74.i.i_crit_edge ]
  %332 = ptrtoint ptr %bw76.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %bw76.i.i, align 1
  %conv77.i.i = zext i8 %333 to i32
  %mul78.i.i = mul nuw nsw i32 %conv77.i.i, 2700
  %call79.i.i = call zeroext i16 @nvbios_rd16(ptr noundef %271, i32 noundef %lnkcmp.1.i.i) #5
  %conv80.i.i = zext i16 %call79.i.i to i32
  %cmp81.i.i = icmp ult i32 %mul78.i.i, %conv80.i.i
  %add84.i.i = add i32 %lnkcmp.1.i.i, 4
  br i1 %cmp81.i.i, label %while.cond74.i.i.while.cond74.i.i_crit_edge, label %while.end85.i.i

while.cond74.i.i.while.cond74.i.i_crit_edge:      ; preds = %while.cond74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond74.i.i

while.end85.i.i:                                  ; preds = %while.cond74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add86.i.i = add i32 %lnkcmp.1.i.i, 2
  br label %if.end103.i.i

while.cond89.i.i:                                 ; preds = %while.cond89.i.i.while.cond89.i.i_crit_edge, %if.then69.i.i.while.cond89.i.i_crit_edge
  %lnkcmp.2.i.i = phi i32 [ %add98.i.i, %while.cond89.i.i.while.cond89.i.i_crit_edge ], [ %329, %if.then69.i.i.while.cond89.i.i_crit_edge ]
  %334 = ptrtoint ptr %bw76.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %bw76.i.i, align 1
  %call93.i.i = call zeroext i8 @nvbios_rd08(ptr noundef %271, i32 noundef %lnkcmp.2.i.i) #5
  %cmp95.i.i = icmp ult i8 %335, %call93.i.i
  %add98.i.i = add i32 %lnkcmp.2.i.i, 3
  br i1 %cmp95.i.i, label %while.cond89.i.i.while.cond89.i.i_crit_edge, label %while.end99.i.i

while.cond89.i.i.while.cond89.i.i_crit_edge:      ; preds = %while.cond89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond89.i.i

while.end99.i.i:                                  ; preds = %while.cond89.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add100.i.i = add i32 %lnkcmp.2.i.i, 1
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %while.end99.i.i, %while.end85.i.i
  %add100.sink.i.i = phi i32 [ %add100.i.i, %while.end99.i.i ], [ %add86.i.i, %while.end85.i.i ]
  %call101.i.i = call zeroext i16 @nvbios_rd16(ptr noundef %271, i32 noundef %add100.sink.i.i) #5
  %lnkcmp.3.i.i = zext i16 %call101.i.i to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init104.i.i) #5
  %336 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 33554431, ptr %233, align 4, !annotation !119
  %337 = ptrtoint ptr %init104.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %subdev3.i.i, ptr %init104.i.i, align 4
  %338 = ptrtoint ptr %offset106.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %lnkcmp.3.i.i, ptr %offset106.i.i, align 4
  %339 = ptrtoint ptr %head110.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 -1, ptr %head110.i.i, align 4
  %340 = call ptr @memset(ptr %nested112.i.i, i32 0, i32 16)
  %341 = ptrtoint ptr %outp107.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %info58.i.i, ptr %outp107.i.i, align 4
  %id118.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 3
  %342 = ptrtoint ptr %id118.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %id118.i.i, align 4
  %344 = ptrtoint ptr %or108.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %or108.i.i, align 4
  %link121.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 8, i32 2
  %345 = ptrtoint ptr %link121.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %bf.load122.i.i = load i32, ptr %link121.i.i, align 4
  %bf.lshr123.i.i = lshr i32 %bf.load122.i.i, 23
  %bf.clear124.i.i = and i32 %bf.lshr123.i.i, 3
  %346 = ptrtoint ptr %link109.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store i32 %bf.clear124.i.i, ptr %link109.i.i, align 4
  %call127.i.i = call i32 @nvbios_exec(ptr noundef nonnull %init104.i.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init104.i.i) #5
  br label %if.end128.i.i

if.end128.i.i:                                    ; preds = %if.end103.i.i, %if.end64.i.i.if.end128.i.i_crit_edge
  %347 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %265, align 4
  %links.i.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %348, i32 0, i32 8, i32 1
  %349 = ptrtoint ptr %links.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %links.i.i, align 4
  %351 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %aux.i, align 4
  %call130.i.i = call i32 %350(ptr noundef %265, ptr noundef %352) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i.i)
  %tobool131.not.i.i = icmp eq i32 %call130.i.i, 0
  br i1 %tobool131.not.i.i, label %if.end167.i.i, label %if.then132.i.i

if.then132.i.i:                                   ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i.i)
  %cmp133.i.i = icmp slt i32 %call130.i.i, 0
  br i1 %cmp133.i.i, label %do.body136.i.i, label %if.then132.i.i.nvkm_dp_train_links.exit.i_crit_edge

if.then132.i.i.nvkm_dp_train_links.exit.i_crit_edge: ; preds = %if.then132.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_links.exit.i

do.body136.i.i:                                   ; preds = %if.then132.i.i
  %353 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %disp, align 4
  %debug143.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %354, i32 0, i32 1, i32 1, i32 5
  %355 = ptrtoint ptr %debug143.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %debug143.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %cmp144.not.i.i = icmp eq i32 %356, 0
  br i1 %cmp144.not.i.i, label %do.body136.i.i.nvkm_dp_train_links.exit.i_crit_edge, label %do.end149.i.i

do.body136.i.i.nvkm_dp_train_links.exit.i_crit_edge: ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_links.exit.i

do.end149.i.i:                                    ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %device150.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %354, i32 0, i32 1, i32 1, i32 1
  %357 = ptrtoint ptr %device150.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %device150.i.i, align 4
  %dev151.i.i = getelementptr inbounds %struct.nvkm_device, ptr %358, i32 0, i32 2
  %359 = ptrtoint ptr %dev151.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dev151.i.i, align 8
  %name152.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %354, i32 0, i32 1, i32 1, i32 4
  %361 = ptrtoint ptr %index152.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %index152.i, align 4
  %363 = ptrtoint ptr %hasht154.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %hasht154.i, align 4
  %conv157.i.i = zext i16 %364 to i32
  %365 = ptrtoint ptr %hashm157.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %hashm157.i, align 2
  %conv160.i.i = zext i16 %366 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %360, ptr noundef nonnull @.str.50, ptr noundef %name152.i.i, i32 noundef %362, i32 noundef %conv157.i.i, i32 noundef %conv160.i.i, i32 noundef %call130.i.i) #9
  br label %nvkm_dp_train_links.exit.i

if.end167.i.i:                                    ; preds = %if.end128.i.i
  %367 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %265, align 4
  %power.i.i = getelementptr inbounds %struct.nvkm_ior_func, ptr %368, i32 0, i32 8, i32 2
  %369 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %power.i.i, align 4
  %nr171.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 2
  %371 = ptrtoint ptr %nr171.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %nr171.i.i, align 2
  %conv172.i.i = zext i8 %372 to i32
  call void %370(ptr noundef %265, i32 noundef %conv172.i.i) #5
  %bw174.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 3
  %373 = ptrtoint ptr %bw174.i.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %bw174.i.i, align 1
  %375 = ptrtoint ptr %sink.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %374, ptr %sink.i.i, align 1
  %376 = ptrtoint ptr %nr171.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %nr171.i.i, align 2
  %378 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %231, align 1
  %ef.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %265, i32 0, i32 9, i32 1
  %379 = ptrtoint ptr %ef.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %ef.i.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool180.not.i.i = icmp eq i8 %380, 0
  br i1 %tobool180.not.i.i, label %if.end167.i.i.if.end186.i.i_crit_edge, label %if.then181.i.i

if.end167.i.i.if.end186.i.i_crit_edge:            ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186.i.i

if.then181.i.i:                                   ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %381 = or i8 %377, -128
  %382 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %381, ptr %231, align 1
  br label %if.end186.i.i

if.end186.i.i:                                    ; preds = %if.then181.i.i, %if.end167.i.i.if.end186.i.i_crit_edge
  %383 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %aux.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i.i.i) #5
  %385 = ptrtoint ptr %size.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 2, ptr %size.addr.i.i.i, align 1
  %call.i.i361.i = call i32 @nvkm_i2c_aux_acquire(ptr noundef %384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i361.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i361.i, 0
  br i1 %cmp.i.i.i, label %nvkm_wraux.exit.i.i, label %nvkm_wraux.exit.thread.i.i

nvkm_wraux.exit.thread.i.i:                       ; preds = %if.end186.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i.i.i) #5
  br label %nvkm_dp_train_links.exit.i

nvkm_wraux.exit.i.i:                              ; preds = %if.end186.i.i
  %call1.i.i.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %384, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 256, ptr noundef nonnull %sink.i.i, ptr noundef nonnull %size.addr.i.i.i) #5
  call void @nvkm_i2c_aux_release(ptr noundef %384) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool190.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool190.not.i.i, label %if.end192.i.i, label %nvkm_wraux.exit.i.i.nvkm_dp_train_links.exit.i_crit_edge

nvkm_wraux.exit.i.i.nvkm_dp_train_links.exit.i_crit_edge: ; preds = %nvkm_wraux.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_links.exit.i

if.end192.i.i:                                    ; preds = %nvkm_wraux.exit.i.i
  %386 = call ptr @memset(ptr %230, i32 0, i32 6)
  %387 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %conf.i.i.i, align 2
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %lt.i.i, i8 noundef zeroext 1) #5
  %call88.i.i.i = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %lt.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i.i.i)
  %tobool.not89.i.i.i = icmp eq i32 %call88.i.i.i, 0
  br i1 %tobool.not89.i.i.i, label %lor.lhs.false.preheader.i.i.i, label %if.end192.i.i.if.end199.i.i_crit_edge

if.end192.i.i.if.end199.i.i_crit_edge:            ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199.i.i

lor.lhs.false.preheader.i.i.i:                    ; preds = %if.end192.i.i
  %call1.i272299.i.i = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %lt.i.i, i1 noundef zeroext false, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272299.i.i)
  %tobool2.not.i300.i.i = icmp eq i32 %call1.i272299.i.i, 0
  br i1 %tobool2.not.i300.i.i, label %for.cond.preheader.i.lr.ph.i.i, label %lor.lhs.false.preheader.i.i.i.if.end199.i.i_crit_edge

lor.lhs.false.preheader.i.i.i.if.end199.i.i_crit_edge: ; preds = %lor.lhs.false.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199.i.i

for.cond.preheader.i.lr.ph.i.i:                   ; preds = %lor.lhs.false.preheader.i.i.i
  %389 = and i8 %388, 3
  %and.i.i.i = zext i8 %389 to i32
  br label %for.cond.preheader.i.i.i

do.body.i.i.i:                                    ; preds = %for.end.i.i.i
  %call.i271.i.i = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %lt.i.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i271.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %do.body.i.i.i.if.end199.i.i_crit_edge

do.body.i.i.i.if.end199.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.body.i.i.i
  %call1.i272.i.i = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %lt.i.i, i1 noundef zeroext false, i32 noundef 100) #5
  %tobool2.not.i.i.i = icmp eq i32 %call1.i272.i.i, 0
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.for.cond.preheader.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.if.end199.i.i_crit_edge

lor.lhs.false.i.i.i.if.end199.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199.i.i

lor.lhs.false.i.i.i.for.cond.preheader.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i.for.cond.preheader.i.i.i_crit_edge, %for.cond.preheader.i.lr.ph.i.i
  %voltage.090.i302.i.i = phi i32 [ %and.i.i.i, %for.cond.preheader.i.lr.ph.i.i ], [ %and27.i.i.i, %lor.lhs.false.i.i.i.for.cond.preheader.i.i.i_crit_edge ]
  %tries.091.i301.i.i = phi i32 [ 0, %for.cond.preheader.i.lr.ph.i.i ], [ %inc38.i.i.i, %lor.lhs.false.i.i.i.for.cond.preheader.i.i.i_crit_edge ]
  %390 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %lt.i.i, align 4
  %ior.i.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %391, i32 0, i32 9
  %392 = ptrtoint ptr %ior.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ior.i.i.i, align 4
  %nr.i.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %393, i32 0, i32 9, i32 2
  %394 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %nr.i.i.i, align 2
  %conv4.i.i.i = zext i8 %395 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %395)
  %cmp85.not.i.i.i = icmp eq i8 %395, 0
  br i1 %cmp85.not.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.preheader.i.i

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.body.i.preheader.i.i:                         ; preds = %for.cond.preheader.i.i.i
  %396 = ptrtoint ptr %230 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %230, align 4
  %398 = and i8 %397, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool14.not.i296.i.i = icmp eq i8 %398, 0
  br i1 %tobool14.not.i296.i.i, label %for.body.i.preheader.i.i.cleanup.i.i.i_crit_edge, label %for.body.i.preheader.i.i.for.inc.i.i.i_crit_edge

for.body.i.preheader.i.i.for.inc.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  br label %for.inc.i.i.i

for.body.i.preheader.i.i.cleanup.i.i.i_crit_edge: ; preds = %for.body.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i
  %399 = lshr i32 %inc.i.i.i, 1
  %arrayidx6.i.i.i = getelementptr %struct.lt_state, ptr %lt.i.i, i32 0, i32 1, i32 %399
  %400 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx6.i.i.i, align 1
  %conv7.i.i.i = zext i8 %401 to i32
  %and8.i.i.i = shl i32 %inc.i.i.i, 2
  %mul.i.i.i = and i32 %and8.i.i.i, 4
  %402 = shl nuw nsw i32 1, %mul.i.i.i
  %403 = and i32 %402, %conv7.i.i.i
  %tobool14.not.i.i.i = icmp eq i32 %403, 0
  br i1 %tobool14.not.i.i.i, label %cleanup.i.loopexit.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

cleanup.i.loopexit.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %conv4.i.i.i)
  %cmp.i273.le.i.i = icmp ult i32 %inc.i.i.i, %conv4.i.i.i
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %cleanup.i.loopexit.i.i, %for.body.i.preheader.i.i.cleanup.i.i.i_crit_edge
  %cmp87.i.lcssa.i.i = phi i1 [ true, %for.body.i.preheader.i.i.cleanup.i.i.i_crit_edge ], [ %cmp.i273.le.i.i, %cleanup.i.loopexit.i.i ]
  %i.086.i.lcssa.i.i = phi i32 [ 0, %for.body.i.preheader.i.i.cleanup.i.i.i_crit_edge ], [ %inc.i.i.i, %cleanup.i.loopexit.i.i ]
  %arrayidx17.i.i.i = getelementptr %struct.lt_state, ptr %lt.i.i, i32 0, i32 2, i32 %i.086.i.lcssa.i.i
  %404 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx17.i.i.i, align 1
  %406 = and i8 %405, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool20.not.i.i.i = icmp ne i8 %406, 0
  br label %for.end.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.preheader.i.i.for.inc.i.i.i_crit_edge
  %i.086.i297.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.for.inc.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.086.i297.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %conv4.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv4.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %cleanup.i.i.i, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %cmp83.i.i.i = phi i1 [ %cmp87.i.lcssa.i.i, %cleanup.i.i.i ], [ false, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ false, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %abort.4.off0.i.i.i = phi i1 [ %tobool20.not.i.i.i, %cleanup.i.i.i ], [ false, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge ], [ false, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %407 = ptrtoint ptr %conf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %conf.i.i.i, align 2
  %409 = and i8 %408, 3
  %and27.i.i.i = zext i8 %409 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %voltage.090.i302.i.i, i32 %and27.i.i.i)
  %cmp28.not.i.i.i = icmp eq i32 %voltage.090.i302.i.i, %and27.i.i.i
  %abort.4.off0.not.i.i.i = xor i1 %abort.4.off0.i.i.i, true
  %brmerge.not.i.i.i = select i1 %cmp83.i.i.i, i1 %abort.4.off0.not.i.i.i, i1 false
  %tries.0.op.i.i.i = add i32 %tries.091.i301.i.i, 1
  %inc38.i.i.i = select i1 %cmp28.not.i.i.i, i32 %tries.0.op.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc38.i.i.i)
  %cmp39.i.i.i = icmp slt i32 %inc38.i.i.i, 5
  %or.cond.i.i.i = select i1 %brmerge.not.i.i.i, i1 %cmp39.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %do.body.i.i.i, label %nvkm_dp_train_cr.exit.i.i

nvkm_dp_train_cr.exit.i.i:                        ; preds = %for.end.i.i.i
  br i1 %cmp83.i.i.i, label %nvkm_dp_train_cr.exit.i.i.if.end199.i.i_crit_edge, label %if.then197.i.i

nvkm_dp_train_cr.exit.i.i.if.end199.i.i_crit_edge: ; preds = %nvkm_dp_train_cr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199.i.i

if.then197.i.i:                                   ; preds = %nvkm_dp_train_cr.exit.i.i
  %arrayidx.i.i.i = getelementptr %struct.nvkm_dp, ptr %391, i32 0, i32 6, i32 2
  %410 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx.i.i.i, align 1
  %412 = and i8 %411, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool.not.i274.i.i = icmp eq i8 %412, 0
  %..i.i.i = select i1 %tobool.not.i274.i.i, i8 2, i8 3
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %lt.i.i, i8 noundef zeroext %..i.i.i) #5
  br label %do.body.i275.i.i

do.body.i275.i.i:                                 ; preds = %do.cond.i.i.i.do.body.i275.i.i_crit_edge, %if.then197.i.i
  %eq_done.0.off0.i.i.i = phi i1 [ false, %if.then197.i.i ], [ %extract.t72.i.i.i, %do.cond.i.i.i.do.body.i275.i.i_crit_edge ]
  %tries.0.i.i.i = phi i32 [ 0, %if.then197.i.i ], [ %inc47.i.i.i, %do.cond.i.i.i.do.body.i275.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %tries.0.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.body.i275.i.i.lor.lhs.false.i277.i.i_crit_edge, label %land.lhs.true.i.i.i

do.body.i275.i.i.lor.lhs.false.i277.i.i_crit_edge: ; preds = %do.body.i275.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i277.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i275.i.i
  %413 = ptrtoint ptr %pc2.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %pc2.i.i, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %tobool2.i.i.i = icmp ne i8 %414, 0
  %call.i276.i.i = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %lt.i.i, i1 noundef zeroext %tobool2.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i276.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false.i277.i.i_crit_edge, label %land.lhs.true.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge

land.lhs.true.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_eq.exit.i.i

land.lhs.true.i.i.i.lor.lhs.false.i277.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i277.i.i

lor.lhs.false.i277.i.i:                           ; preds = %land.lhs.true.i.i.i.lor.lhs.false.i277.i.i_crit_edge, %do.body.i275.i.i.lor.lhs.false.i277.i.i_crit_edge
  %415 = ptrtoint ptr %pc2.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %pc2.i.i, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool5.i.i.i = icmp ne i8 %416, 0
  %call6.i.i.i = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %lt.i.i, i1 noundef zeroext %tobool5.i.i.i, i32 noundef 400) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %lor.lhs.false.i277.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge

lor.lhs.false.i277.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i277.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_eq.exit.i.i

if.end9.i.i.i:                                    ; preds = %lor.lhs.false.i277.i.i
  %417 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx10.i.i.i, align 2
  %419 = and i8 %418, 1
  %420 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %lt.i.i, align 4
  %ior.i278.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %421, i32 0, i32 9
  %422 = ptrtoint ptr %ior.i278.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ior.i278.i.i, align 4
  %nr.i279.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %423, i32 0, i32 9, i32 2
  %424 = ptrtoint ptr %nr.i279.i.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %nr.i279.i.i, align 2
  %conv17.i.i.i = zext i8 %425 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %cmp81.i.i.i = icmp eq i8 %425, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool19.not82.i.i.i = icmp eq i8 %419, 0
  %or.cond83.i.i.i = select i1 %cmp81.i.i.i, i1 true, i1 %tobool19.not82.i.i.i
  br i1 %or.cond83.i.i.i, label %if.end9.i.i.i.do.cond.i.i.i_crit_edge, label %if.end9.i.i.i.for.body.i285.i.i_crit_edge

if.end9.i.i.i.for.body.i285.i.i_crit_edge:        ; preds = %if.end9.i.i.i
  br label %for.body.i285.i.i

if.end9.i.i.i.do.cond.i.i.i_crit_edge:            ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i.i.i

for.body.i285.i.i:                                ; preds = %for.body.i285.i.i.for.body.i285.i.i_crit_edge, %if.end9.i.i.i.for.body.i285.i.i_crit_edge
  %i.086.i280.i.i = phi i32 [ %inc.i282.i.i, %for.body.i285.i.i.for.body.i285.i.i_crit_edge ], [ 0, %if.end9.i.i.i.for.body.i285.i.i_crit_edge ]
  %cr_done.1.off085.i.i.i = phi i1 [ %spec.select.i.i.i, %for.body.i285.i.i.for.body.i285.i.i_crit_edge ], [ true, %if.end9.i.i.i.for.body.i285.i.i_crit_edge ]
  %426 = lshr i32 %i.086.i280.i.i, 1
  %arrayidx22.i.i.i = getelementptr %struct.lt_state, ptr %lt.i.i, i32 0, i32 1, i32 %426
  %427 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx22.i.i.i, align 1
  %conv23.i.i.i = zext i8 %428 to i32
  %and24.i.i.i = shl i32 %i.086.i280.i.i, 2
  %mul.i281.i.i = and i32 %and24.i.i.i, 4
  %shr25.i.i.i = lshr i32 %conv23.i.i.i, %mul.i281.i.i
  %and29.i.i.i = and i32 %shr25.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool30.not.i.i.i = icmp ne i32 %and29.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool30.not.i.i.i, i1 %cr_done.1.off085.i.i.i, i1 false
  %429 = and i32 %shr25.i.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %429)
  %.not.i.i.i = icmp eq i32 %429, 6
  %inc.i282.i.i = add nuw nsw i32 %i.086.i280.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i282.i.i, i32 %conv17.i.i.i)
  %cmp.i283.i.i = icmp uge i32 %inc.i282.i.i, %conv17.i.i.i
  %tobool19.not.i.i.i = xor i1 %.not.i.i.i, true
  %or.cond.i284.i.i = select i1 %cmp.i283.i.i, i1 true, i1 %tobool19.not.i.i.i
  br i1 %or.cond.i284.i.i, label %do.cond.i.loopexit.i.i, label %for.body.i285.i.i.for.body.i285.i.i_crit_edge

for.body.i285.i.i.for.body.i285.i.i_crit_edge:    ; preds = %for.body.i285.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i285.i.i

do.cond.i.loopexit.i.i:                           ; preds = %for.body.i285.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %eq_done.2.i.le.i.i = zext i1 %.not.i.i.i to i8
  br label %do.cond.i.i.i

do.cond.i.i.i:                                    ; preds = %do.cond.i.loopexit.i.i, %if.end9.i.i.i.do.cond.i.i.i_crit_edge
  %cr_done.1.off0.lcssa.i.i.i = phi i1 [ true, %if.end9.i.i.i.do.cond.i.i.i_crit_edge ], [ %spec.select.i.i.i, %do.cond.i.loopexit.i.i ]
  %.lcssa.i.i.i = phi i8 [ %419, %if.end9.i.i.i.do.cond.i.i.i_crit_edge ], [ %eq_done.2.i.le.i.i, %do.cond.i.loopexit.i.i ]
  %tobool19.not.lcssa.i.i.i = phi i1 [ %tobool19.not82.i.i.i, %if.end9.i.i.i.do.cond.i.i.i_crit_edge ], [ %tobool19.not.i.i.i, %do.cond.i.loopexit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa.i.i.i)
  %extract.t72.i.i.i = icmp ne i8 %.lcssa.i.i.i, 0
  %430 = select i1 %tobool19.not.lcssa.i.i.i, i1 %cr_done.1.off0.lcssa.i.i.i, i1 false
  %inc47.i.i.i = add nuw nsw i32 %tries.0.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tries.0.i.i.i)
  %cmp48.i.i.i = icmp ult i32 %tries.0.i.i.i, 5
  %or.cond80.i.i.i = select i1 %430, i1 %cmp48.i.i.i, i1 false
  br i1 %or.cond80.i.i.i, label %do.cond.i.i.i.do.body.i275.i.i_crit_edge, label %do.cond.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge

do.cond.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge: ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_dp_train_eq.exit.i.i

do.cond.i.i.i.do.body.i275.i.i_crit_edge:         ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i275.i.i

nvkm_dp_train_eq.exit.i.i:                        ; preds = %do.cond.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge, %lor.lhs.false.i277.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge, %land.lhs.true.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge
  %eq_done.3.off0.i.i.i = phi i1 [ %eq_done.0.off0.i.i.i, %land.lhs.true.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge ], [ %eq_done.0.off0.i.i.i, %lor.lhs.false.i277.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge ], [ %extract.t72.i.i.i, %do.cond.i.i.i.nvkm_dp_train_eq.exit.i.i_crit_edge ]
  %not.eq_done.3.off0.i.i.i = xor i1 %eq_done.3.off0.i.i.i, true
  %cond.i286.i.i = sext i1 %not.eq_done.3.off0.i.i.i to i32
  br label %if.end199.i.i

if.end199.i.i:                                    ; preds = %nvkm_dp_train_eq.exit.i.i, %nvkm_dp_train_cr.exit.i.i.if.end199.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end199.i.i_crit_edge, %do.body.i.i.i.if.end199.i.i_crit_edge, %lor.lhs.false.preheader.i.i.i.if.end199.i.i_crit_edge, %if.end192.i.i.if.end199.i.i_crit_edge
  %ret.0.i362.i = phi i32 [ %cond.i286.i.i, %nvkm_dp_train_eq.exit.i.i ], [ -1, %nvkm_dp_train_cr.exit.i.i.if.end199.i.i_crit_edge ], [ -1, %if.end192.i.i.if.end199.i.i_crit_edge ], [ -1, %lor.lhs.false.preheader.i.i.i.if.end199.i.i_crit_edge ], [ -1, %do.body.i.i.i.if.end199.i.i_crit_edge ], [ -1, %lor.lhs.false.i.i.i.if.end199.i.i_crit_edge ]
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %lt.i.i, i8 noundef zeroext 0) #5
  br label %nvkm_dp_train_links.exit.i

nvkm_dp_train_links.exit.i:                       ; preds = %if.end199.i.i, %nvkm_wraux.exit.i.i.nvkm_dp_train_links.exit.i_crit_edge, %nvkm_wraux.exit.thread.i.i, %do.end149.i.i, %do.body136.i.i.nvkm_dp_train_links.exit.i_crit_edge, %if.then132.i.i.nvkm_dp_train_links.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i362.i, %if.end199.i.i ], [ %call130.i.i, %do.end149.i.i ], [ %call130.i.i, %do.body136.i.i.nvkm_dp_train_links.exit.i_crit_edge ], [ 0, %if.then132.i.i.nvkm_dp_train_links.exit.i_crit_edge ], [ %call1.i.i.i, %nvkm_wraux.exit.i.i.nvkm_dp_train_links.exit.i_crit_edge ], [ %call.i.i361.i, %nvkm_wraux.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sink.i.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lt.i.i) #5
  br label %for.inc182.i

for.inc182.i:                                     ; preds = %nvkm_dp_train_links.exit.i, %if.then129.i.for.inc182.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0403.i, %if.then129.i.for.inc182.i_crit_edge ], [ %retval.0.i.i, %nvkm_dp_train_links.exit.i ]
  %incdec.ptr183.i = getelementptr %struct.dp_rates, ptr %cfg.1400.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp101.i = icmp slt i32 %ret.1.i, 0
  %cmp101.not.i = xor i1 %cmp101.i, true
  %cmp103.not.i = icmp ugt ptr %incdec.ptr183.i, %failsafe.1382.i
  %or.cond327.i = select i1 %cmp101.not.i, i1 true, i1 %cmp103.not.i
  br i1 %or.cond327.i, label %for.inc182.i.for.end184.i_crit_edge, label %for.inc182.i.for.body105.i_crit_edge

for.inc182.i.for.body105.i_crit_edge:             ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body105.i

for.inc182.i.for.end184.i_crit_edge:              ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end184.i

for.end184.i:                                     ; preds = %for.inc182.i.for.end184.i_crit_edge, %nvkm_dp_train_init.exit.i.for.end184.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ -22, %nvkm_dp_train_init.exit.i.for.end184.i_crit_edge ], [ %ret.1.i, %for.inc182.i.for.end184.i_crit_edge ]
  %cmp101.lcssa.i = phi i1 [ true, %nvkm_dp_train_init.exit.i.for.end184.i_crit_edge ], [ %cmp101.i, %for.inc182.i.for.end184.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %init.i363.i) #5
  %431 = getelementptr inbounds i8, ptr %init.i363.i, i32 24
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 33554431, ptr %431, align 4, !annotation !119
  %433 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %disp, align 4
  %subdev1.i365.i = getelementptr inbounds %struct.nvkm_disp, ptr %434, i32 0, i32 1, i32 1
  %435 = ptrtoint ptr %init.i363.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %subdev1.i365.i, ptr %init.i363.i, align 4
  %offset.i366.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 1
  %arrayidx.i367.i = getelementptr %struct.nvkm_dp, ptr %outp, i32 0, i32 1, i32 3, i32 1
  %436 = ptrtoint ptr %arrayidx.i367.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %arrayidx.i367.i, align 4
  %438 = ptrtoint ptr %offset.i366.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %437, ptr %offset.i366.i, align 4
  %outp.i368.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 2
  %or.i369.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 3
  %link.i370.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 4
  %head.i371.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 5
  %439 = ptrtoint ptr %head.i371.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 -1, ptr %head.i371.i, align 4
  %nested.i373.i = getelementptr inbounds %struct.nvbios_init, ptr %init.i363.i, i32 0, i32 7
  %info2.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3
  %440 = call ptr @memset(ptr %nested.i373.i, i32 0, i32 16)
  %441 = ptrtoint ptr %outp.i368.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %info2.i.i, ptr %outp.i368.i, align 4
  %442 = ptrtoint ptr %ior1 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ior1, align 4
  %id.i375.i = getelementptr inbounds %struct.nvkm_ior, ptr %443, i32 0, i32 3
  %444 = ptrtoint ptr %id.i375.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %id.i375.i, align 4
  %446 = ptrtoint ptr %or.i369.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %or.i369.i, align 4
  %link6.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %443, i32 0, i32 8, i32 2
  %447 = ptrtoint ptr %link6.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %bf.load.i376.i = load i32, ptr %link6.i.i, align 4
  %bf.lshr.i377.i = lshr i32 %bf.load.i376.i, 23
  %bf.clear.i378.i = and i32 %bf.lshr.i377.i, 3
  %448 = ptrtoint ptr %link.i370.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %bf.clear.i378.i, ptr %link.i370.i, align 4
  %call.i379.i = call i32 @nvbios_exec(ptr noundef nonnull %init.i363.i) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %init.i363.i) #5
  %449 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %disp, align 4
  %debug195.i = getelementptr inbounds %struct.nvkm_disp, ptr %450, i32 0, i32 1, i32 1, i32 5
  %451 = ptrtoint ptr %debug195.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %debug195.i, align 4
  br i1 %cmp101.lcssa.i, label %do.body188.i, label %do.body218.i

do.body188.i:                                     ; preds = %for.end184.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %cmp196.not.i = icmp eq i32 %452, 0
  br i1 %cmp196.not.i, label %do.body188.i.if.end248.i_crit_edge, label %do.end201.i

do.body188.i.if.end248.i_crit_edge:               ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248.i

do.end201.i:                                      ; preds = %do.body188.i
  call void @__sanitizer_cov_trace_pc() #7
  %device202.i = getelementptr inbounds %struct.nvkm_disp, ptr %450, i32 0, i32 1, i32 1, i32 1
  %453 = ptrtoint ptr %device202.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %device202.i, align 4
  %dev203.i = getelementptr inbounds %struct.nvkm_device, ptr %454, i32 0, i32 2
  %455 = ptrtoint ptr %dev203.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev203.i, align 8
  %name204.i = getelementptr inbounds %struct.nvkm_disp, ptr %450, i32 0, i32 1, i32 1, i32 4
  %index206.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %457 = ptrtoint ptr %index206.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %index206.i, align 4
  %hasht208.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %459 = ptrtoint ptr %hasht208.i to i32
  call void @__asan_load2_noabort(i32 %459)
  %460 = load i16, ptr %hasht208.i, align 4
  %conv209.i = zext i16 %460 to i32
  %hashm211.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %461 = ptrtoint ptr %hashm211.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %hashm211.i, align 2
  %conv212.i = zext i16 %462 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %456, ptr noundef nonnull @.str.42, ptr noundef %name204.i, i32 noundef %458, i32 noundef %conv209.i, i32 noundef %conv212.i) #9
  br label %if.end248.i

do.body218.i:                                     ; preds = %for.end184.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %452)
  %cmp226.i = icmp ugt i32 %452, 3
  br i1 %cmp226.i, label %do.end231.i, label %do.body218.i.if.end248.i_crit_edge

do.body218.i.if.end248.i_crit_edge:               ; preds = %do.body218.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248.i

do.end231.i:                                      ; preds = %do.body218.i
  call void @__sanitizer_cov_trace_pc() #7
  %device232.i = getelementptr inbounds %struct.nvkm_disp, ptr %450, i32 0, i32 1, i32 1, i32 1
  %463 = ptrtoint ptr %device232.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %device232.i, align 4
  %dev233.i = getelementptr inbounds %struct.nvkm_device, ptr %464, i32 0, i32 2
  %465 = ptrtoint ptr %dev233.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %dev233.i, align 8
  %name234.i = getelementptr inbounds %struct.nvkm_disp, ptr %450, i32 0, i32 1, i32 1, i32 4
  %index236.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 2
  %467 = ptrtoint ptr %index236.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %index236.i, align 4
  %hasht238.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 1
  %469 = ptrtoint ptr %hasht238.i to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %hasht238.i, align 4
  %conv239.i = zext i16 %470 to i32
  %hashm241.i = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 2
  %471 = ptrtoint ptr %hashm241.i to i32
  call void @__asan_load2_noabort(i32 %471)
  %472 = load i16, ptr %hashm241.i, align 2
  %conv242.i = zext i16 %472 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %466, ptr noundef nonnull @.str.45, ptr noundef %name234.i, i32 noundef %468, i32 noundef %conv239.i, i32 noundef %conv242.i) #9
  br label %if.end248.i

if.end248.i:                                      ; preds = %do.end231.i, %do.body218.i.if.end248.i_crit_edge, %do.end201.i, %do.body188.i.if.end248.i_crit_edge
  %lt249.i = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lt249.i, i32 noundef 4) #5
  %473 = ptrtoint ptr %lt249.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store volatile i32 1, ptr %lt249.i, align 4
  br label %nvkm_dp_train.exit

nvkm_dp_train.exit:                               ; preds = %if.end248.i, %do.end.i305
  %retval.0.i = phi i32 [ -22, %do.end.i305 ], [ %ret.0.lcssa.i, %if.end248.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr.i) #5
  br label %cleanup231

cleanup231:                                       ; preds = %nvkm_dp_train.exit, %lor.lhs.false222.cleanup231_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %nvkm_dp_train.exit ], [ 0, %lor.lhs.false222.cleanup231_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %stat) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_dp_release(ptr noundef %outp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lt = getelementptr inbounds %struct.nvkm_dp, ptr %outp, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lt, i32 noundef 4) #5
  %0 = ptrtoint ptr %lt to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %lt, align 4
  %ior = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 9
  %1 = ptrtoint ptr %ior to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ior, align 4
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %2, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %nr, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %dp, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %size.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aux1 = getelementptr inbounds %struct.nvkm_dp, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux1, align 4
  br i1 %enable, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then:                                          ; preds = %entry
  %present = getelementptr inbounds %struct.nvkm_dp, ptr %dp, i32 0, i32 5
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %present, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %do.body, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body:                                          ; preds = %if.then
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 1
  %4 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hasht, align 4
  %conv = zext i16 %15 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hashm, align 2
  %conv8 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %13, i32 noundef %conv, i32 noundef %conv8) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body.if.end_crit_edge
  tail call void @nvkm_i2c_aux_monitor(ptr noundef %1, i1 noundef zeroext true) #5
  %18 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %present, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i)
  %19 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %size.addr.i, align 1
  %call.i = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %nvkm_rdaux.exit.thread

nvkm_rdaux.exit.thread:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %if.end19

if.then.i:                                        ; preds = %if.end14
  %dpcd = getelementptr inbounds %struct.nvkm_dp, ptr %dp, i32 0, i32 6
  %call1.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 0, ptr noundef %dpcd, ptr noundef nonnull %size.addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %nvkm_rdaux.exit

land.rhs.i:                                       ; preds = %if.then.i
  %20 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %size.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %21)
  %cmp3.not.i = icmp eq i8 %21, 16
  br i1 %cmp3.not.i, label %land.rhs.i.nvkm_rdaux.exit.thread77_crit_edge, label %do.end.i, !prof !121

land.rhs.i.nvkm_rdaux.exit.thread77_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdaux.exit.thread77

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %nvkm_rdaux.exit.thread77

nvkm_rdaux.exit.thread77:                         ; preds = %do.end.i, %land.rhs.i.nvkm_rdaux.exit.thread77_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %cleanup

nvkm_rdaux.exit:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_i2c_aux_release(ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %if.end19

if.end19:                                         ; preds = %nvkm_rdaux.exit, %nvkm_rdaux.exit.thread, %entry.if.end19_crit_edge
  %present20 = getelementptr inbounds %struct.nvkm_dp, ptr %dp, i32 0, i32 5
  %22 = ptrtoint ptr %present20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %present20, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %tobool21.not, label %if.end19.if.end54_crit_edge, label %do.body23

if.end19.if.end54_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.body23:                                        ; preds = %if.end19
  %disp27 = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 1
  %24 = ptrtoint ptr %disp27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disp27, align 4
  %debug30 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 5
  %26 = ptrtoint ptr %debug30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp31 = icmp ugt i32 %27, 3
  br i1 %cmp31, label %do.end36, label %do.body23.if.end48_crit_edge

do.body23.if.end48_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end36:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %device37 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %device37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device37, align 4
  %dev38 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 8
  %name39 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 4
  %index41 = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 2
  %32 = ptrtoint ptr %index41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index41, align 4
  %hasht43 = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %hasht43 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hasht43, align 4
  %conv44 = zext i16 %35 to i32
  %hashm46 = getelementptr inbounds %struct.nvkm_outp, ptr %dp, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %hashm46 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hashm46, align 2
  %conv47 = zext i16 %37 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef %name39, i32 noundef %33, i32 noundef %conv44, i32 noundef %conv47) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end36, %do.body23.if.end48_crit_edge
  call void @nvkm_i2c_aux_monitor(ptr noundef %1, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %present20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %present20, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.end19.if.end54_crit_edge
  %lt = getelementptr inbounds %struct.nvkm_dp, ptr %dp, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lt, i32 noundef 4) #5
  %39 = ptrtoint ptr %lt to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %lt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %nvkm_rdaux.exit.thread77
  %retval.0 = phi i1 [ false, %if.end54 ], [ true, %nvkm_rdaux.exit.thread77 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_monitor(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_dp_train_pattern(ptr nocapture noundef readonly %lt, i8 noundef zeroext %pattern) unnamed_addr #0 align 64 {
entry:
  %size.addr.i34 = alloca i8, align 1
  %size.addr.i = alloca i8, align 1
  %sink_tp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lt, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sink_tp) #5
  %2 = ptrtoint ptr %sink_tp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sink_tp, align 1, !annotation !119
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp ugt i32 %6, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = zext i8 %pattern to i32
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %4, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hasht, align 4
  %conv = zext i16 %14 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hashm, align 2
  %conv5 = zext i16 %16 to i32
  %conv6 = zext i8 %pattern to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %12, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv14.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv6, %do.end ]
  %ior = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %ior to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ior, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %pattern12 = getelementptr inbounds %struct.nvkm_ior_func, ptr %20, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %pattern12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pattern12, align 4
  tail call void %22(ptr noundef %18, i32 noundef %conv14.pre-phi) #5
  %aux = getelementptr inbounds %struct.nvkm_dp, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i)
  %25 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %size.addr.i, align 1
  %call.i = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.nvkm_rdaux.exit_crit_edge

if.end.nvkm_rdaux.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdaux.exit

if.then.i:                                        ; preds = %if.end
  %call1.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %24, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 258, ptr noundef nonnull %sink_tp, ptr noundef nonnull %size.addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then.i
  %26 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %size.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp3.not.i = icmp eq i8 %27, 1
  br i1 %cmp3.not.i, label %land.rhs.i.if.end.i_crit_edge, label %do.end.i, !prof !121

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %24) #5
  br label %nvkm_rdaux.exit

nvkm_rdaux.exit:                                  ; preds = %if.end.i, %if.end.nvkm_rdaux.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  %28 = ptrtoint ptr %sink_tp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sink_tp, align 1
  %30 = and i8 %29, -4
  %or33 = or i8 %30, %pattern
  store i8 %or33, ptr %sink_tp, align 1
  %31 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i34)
  %33 = ptrtoint ptr %size.addr.i34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %size.addr.i34, align 1
  %call.i35 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp eq i32 %call.i35, 0
  br i1 %cmp.i36, label %if.then.i38, label %nvkm_rdaux.exit.nvkm_wraux.exit_crit_edge

nvkm_rdaux.exit.nvkm_wraux.exit_crit_edge:        ; preds = %nvkm_rdaux.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_wraux.exit

if.then.i38:                                      ; preds = %nvkm_rdaux.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i37 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %32, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 258, ptr noundef nonnull %sink_tp, ptr noundef nonnull %size.addr.i34) #5
  call void @nvkm_i2c_aux_release(ptr noundef %32) #5
  br label %nvkm_wraux.exit

nvkm_wraux.exit:                                  ; preds = %if.then.i38, %nvkm_rdaux.exit.nvkm_wraux.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i34)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sink_tp) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_dp_train_drive(ptr noundef %lt, i1 noundef zeroext %pc) unnamed_addr #0 align 64 {
entry:
  %size.addr.i201 = alloca i8, align 1
  %size.addr.i = alloca i8, align 1
  %info = alloca %struct.nvbios_dpout, align 4
  %ocfg = alloca %struct.nvbios_dpcfg, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lt, align 4
  %ior2 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ior2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ior2, align 4
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp, align 4
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %5, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #5
  %10 = call ptr @memset(ptr %info, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocfg) #5
  %11 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %ocfg, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %ocfg, i32 0, i32 2
  %13 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %ocfg, i32 0, i32 3
  %14 = ptrtoint ptr %ocfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %ocfg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #5
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %ver, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #5
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %hdr, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #5
  %17 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %cnt, align 1, !annotation !119
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #5
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %len, align 1, !annotation !119
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %3, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp213.not = icmp eq i8 %20, 0
  br i1 %cmp213.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pc2stat = getelementptr inbounds %struct.lt_state, ptr %lt, i32 0, i32 4
  %disp68 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 1
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 2
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 1
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %21 = lshr i32 %i.0214, 1
  %add = add nuw nsw i32 %21, 4
  %arrayidx = getelementptr %struct.lt_state, ptr %lt, i32 0, i32 1, i32 %add
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %23 to i32
  %and = shl i32 %i.0214, 2
  %mul = and i32 %and, 4
  %shr7 = lshr i32 %conv6, %mul
  %24 = ptrtoint ptr %pc2stat to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pc2stat, align 1
  %conv10 = zext i8 %25 to i32
  %mul11 = shl nuw i32 %i.0214, 1
  %shr12 = lshr i32 %conv10, %mul11
  %26 = trunc i32 %shr12 to i8
  %conv14 = and i8 %26, 3
  %27 = trunc i32 %shr7 to i8
  %28 = lshr i8 %27, 2
  %conv18 = and i8 %28, 3
  %conv22 = and i8 %27, 3
  %sub = xor i8 %conv18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv14)
  %cmp27 = icmp eq i8 %conv14, 3
  %spec.select = select i1 %cmp27, i8 7, i8 %conv14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv18)
  %cmp33 = icmp eq i8 %conv18, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %conv22, i8 %sub)
  %cmp45.not = icmp ult i8 %conv22, %sub
  %29 = or i8 %sub, 4
  %spec.select200 = select i1 %cmp45.not, i8 %conv22, i8 %29
  %lpre.0 = select i1 %cmp33, i8 7, i8 %conv18
  %lvsw.0 = select i1 %cmp33, i8 0, i8 %spec.select200
  %shl = shl nuw nsw i8 %lpre.0, 3
  %or55 = or i8 %lvsw.0, %shl
  %arrayidx57 = getelementptr %struct.lt_state, ptr %lt, i32 0, i32 2, i32 %i.0214
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or55, ptr %arrayidx57, align 1
  %conv58 = zext i8 %spec.select to i32
  %shl61 = shl nuw nsw i32 %conv58, %mul
  %arrayidx63 = getelementptr %struct.lt_state, ptr %lt, i32 0, i32 5, i32 %21
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63, align 1
  %33 = trunc i32 %shl61 to i8
  %conv66 = or i8 %32, %33
  store i8 %conv66, ptr %arrayidx63, align 1
  %34 = ptrtoint ptr %disp68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %disp68, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %35, i32 0, i32 1, i32 1, i32 5
  %36 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp71 = icmp ugt i32 %37, 4
  br i1 %cmp71, label %do.end, label %for.body.if.end84_crit_edge

for.body.if.end84_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %device75 = getelementptr inbounds %struct.nvkm_disp, ptr %35, i32 0, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %device75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device75, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %35, i32 0, i32 1, i32 1, i32 4
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  %44 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hasht, align 4
  %conv77 = zext i16 %45 to i32
  %46 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hashm, align 2
  %conv79 = zext i16 %47 to i32
  %48 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx57, align 1
  %conv82 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %43, i32 noundef %conv77, i32 noundef %conv79, i32 noundef %i.0214, i32 noundef %conv82, i32 noundef %conv58) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end, %for.body.if.end84_crit_edge
  %50 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %hasht, align 4
  %52 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hashm, align 2
  %call = call zeroext i16 @nvbios_dpout_match(ptr noundef %9, i16 noundef zeroext %51, i16 noundef zeroext %53, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %info) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end84.cleanup_crit_edge, label %if.end95

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end95:                                         ; preds = %if.end84
  %and98 = and i8 %spec.select, 3
  %54 = and i8 %lvsw.0, 3
  %55 = and i8 %lpre.0, 3
  %call106 = call zeroext i16 @nvbios_dpcfg_match(ptr noundef %9, i16 noundef zeroext %call, i8 noundef zeroext %and98, i8 noundef zeroext %54, i8 noundef zeroext %55, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef nonnull %ocfg) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call106)
  %tobool108.not = icmp eq i16 %call106, 0
  br i1 %tobool108.not, label %if.end95.cleanup_crit_edge, label %if.end110

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end110:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %drive = getelementptr inbounds %struct.nvkm_ior_func, ptr %57, i32 0, i32 8, i32 4
  %58 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drive, align 4
  %60 = ptrtoint ptr %ocfg to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ocfg, align 4
  %conv113 = zext i8 %61 to i32
  %62 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %11, align 1
  %conv114 = zext i8 %63 to i32
  %64 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %12, align 2
  %conv115 = zext i8 %65 to i32
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %13, align 1
  %conv116 = zext i8 %67 to i32
  call void %59(ptr noundef %3, i32 noundef %i.0214, i32 noundef %conv113, i32 noundef %conv114, i32 noundef %conv115, i32 noundef %conv116) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end95.cleanup_crit_edge, %if.end84.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0214, 1
  %68 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nr, align 2
  %conv = zext i8 %69 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %aux = getelementptr inbounds %struct.nvkm_dp, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i)
  %72 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %size.addr.i, align 1
  %call.i = call i32 @nvkm_i2c_aux_acquire(ptr noundef %71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %nvkm_wraux.exit, label %nvkm_wraux.exit.thread

nvkm_wraux.exit.thread:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %cleanup139

nvkm_wraux.exit:                                  ; preds = %for.end
  %conf123 = getelementptr inbounds %struct.lt_state, ptr %lt, i32 0, i32 2
  %call1.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %71, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 259, ptr noundef %conf123, ptr noundef nonnull %size.addr.i) #5
  call void @nvkm_i2c_aux_release(ptr noundef %71) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool126.not = icmp eq i32 %call1.i, 0
  br i1 %tobool126.not, label %if.end128, label %nvkm_wraux.exit.cleanup139_crit_edge

nvkm_wraux.exit.cleanup139_crit_edge:             ; preds = %nvkm_wraux.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup139

if.end128:                                        ; preds = %nvkm_wraux.exit
  br i1 %pc, label %if.then130, label %if.end128.if.end138_crit_edge

if.end128.if.end138_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

if.then130:                                       ; preds = %if.end128
  %73 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %aux, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i201)
  %75 = ptrtoint ptr %size.addr.i201 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %size.addr.i201, align 1
  %call.i202 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %74) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp.i203 = icmp eq i32 %call.i202, 0
  br i1 %cmp.i203, label %nvkm_wraux.exit207, label %nvkm_wraux.exit207.thread

nvkm_wraux.exit207.thread:                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i201)
  br label %cleanup139

nvkm_wraux.exit207:                               ; preds = %if.then130
  %pc2conf132 = getelementptr inbounds %struct.lt_state, ptr %lt, i32 0, i32 5
  %call1.i204 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %74, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 271, ptr noundef %pc2conf132, ptr noundef nonnull %size.addr.i201) #5
  call void @nvkm_i2c_aux_release(ptr noundef %74) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i201)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %tobool135.not = icmp eq i32 %call1.i204, 0
  br i1 %tobool135.not, label %nvkm_wraux.exit207.if.end138_crit_edge, label %nvkm_wraux.exit207.cleanup139_crit_edge

nvkm_wraux.exit207.cleanup139_crit_edge:          ; preds = %nvkm_wraux.exit207
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup139

nvkm_wraux.exit207.if.end138_crit_edge:           ; preds = %nvkm_wraux.exit207
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

if.end138:                                        ; preds = %nvkm_wraux.exit207.if.end138_crit_edge, %if.end128.if.end138_crit_edge
  br label %cleanup139

cleanup139:                                       ; preds = %if.end138, %nvkm_wraux.exit207.cleanup139_crit_edge, %nvkm_wraux.exit207.thread, %nvkm_wraux.exit.cleanup139_crit_edge, %nvkm_wraux.exit.thread
  %retval.0 = phi i32 [ 0, %if.end138 ], [ %call1.i, %nvkm_wraux.exit.cleanup139_crit_edge ], [ %call1.i204, %nvkm_wraux.exit207.cleanup139_crit_edge ], [ %call.i, %nvkm_wraux.exit.thread ], [ %call.i202, %nvkm_wraux.exit207.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocfg) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_dp_train_sense(ptr noundef %lt, i1 noundef zeroext %pc, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  %size.addr.i148 = alloca i8, align 1
  %size.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lt, align 4
  %arrayidx = getelementptr %struct.nvkm_dp, ptr %1, i32 0, i32 6, i32 14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %cond.false50, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then
  %__ms.0168 = phi i32 [ %mul, %if.then ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0168, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #5
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.false50:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %delay) #5
  br label %if.end

if.end:                                           ; preds = %cond.false50, %while.body.if.end_crit_edge
  %aux = getelementptr inbounds %struct.nvkm_dp, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aux, align 4
  %stat = getelementptr inbounds %struct.lt_state, ptr %lt, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i)
  %8 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %size.addr.i, align 1
  %call.i = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %nvkm_rdaux.exit.thread

nvkm_rdaux.exit.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call1.i = call i32 @nvkm_i2c_aux_xfer(ptr noundef %7, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 514, ptr noundef %stat, ptr noundef nonnull %size.addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %nvkm_rdaux.exit

land.rhs.i:                                       ; preds = %if.then.i
  %9 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %10)
  %cmp3.not.i = icmp eq i8 %10, 6
  br i1 %cmp3.not.i, label %land.rhs.i.if.end54_crit_edge, label %do.end.i, !prof !121

land.rhs.i.if.end54_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %if.end54

nvkm_rdaux.exit:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_i2c_aux_release(ptr noundef %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br label %cleanup

if.end54:                                         ; preds = %do.end.i, %land.rhs.i.if.end54_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i)
  br i1 %pc, label %if.then56, label %do.body82

if.then56:                                        ; preds = %if.end54
  %11 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aux, align 4
  %pc2stat = getelementptr inbounds %struct.lt_state, ptr %lt, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size.addr.i148)
  %13 = ptrtoint ptr %size.addr.i148 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %size.addr.i148, align 1
  %call.i149 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp.i150 = icmp eq i32 %call.i149, 0
  br i1 %cmp.i150, label %if.then.i153, label %nvkm_rdaux.exit159.thread

nvkm_rdaux.exit159.thread:                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i148)
  br label %if.then60

if.then.i153:                                     ; preds = %if.then56
  %call1.i151 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %12, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 524, ptr noundef %pc2stat, ptr noundef nonnull %size.addr.i148) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool.not.i152 = icmp eq i32 %call1.i151, 0
  br i1 %tobool.not.i152, label %land.rhs.i155, label %nvkm_rdaux.exit159

land.rhs.i155:                                    ; preds = %if.then.i153
  %14 = ptrtoint ptr %size.addr.i148 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %size.addr.i148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp3.not.i154 = icmp eq i8 %15, 1
  br i1 %cmp3.not.i154, label %land.rhs.i155.nvkm_rdaux.exit159.thread166_crit_edge, label %do.end.i156, !prof !121

land.rhs.i155.nvkm_rdaux.exit159.thread166_crit_edge: ; preds = %land.rhs.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_rdaux.exit159.thread166

do.end.i156:                                      ; preds = %land.rhs.i155
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 173, i32 noundef 9, ptr noundef null) #5
  br label %nvkm_rdaux.exit159.thread166

nvkm_rdaux.exit159.thread166:                     ; preds = %do.end.i156, %land.rhs.i155.nvkm_rdaux.exit159.thread166_crit_edge
  call void @nvkm_i2c_aux_release(ptr noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i148)
  br label %do.body

nvkm_rdaux.exit159:                               ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_i2c_aux_release(ptr noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size.addr.i148)
  br label %if.then60

if.then60:                                        ; preds = %nvkm_rdaux.exit159, %nvkm_rdaux.exit159.thread
  %16 = ptrtoint ptr %pc2stat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pc2stat, align 1
  br label %do.body

do.body:                                          ; preds = %if.then60, %nvkm_rdaux.exit159.thread166
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %disp, align 4
  %debug = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp64 = icmp ugt i32 %20, 4
  br i1 %cmp64, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_disp, ptr %18, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hasht, align 4
  %conv69 = zext i16 %28 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hashm, align 2
  %conv71 = zext i16 %30 to i32
  %31 = ptrtoint ptr %pc2stat to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pc2stat, align 1
  %conv75 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.54, ptr noundef %name, i32 noundef %26, i32 noundef %conv69, i32 noundef %conv71, ptr noundef %stat, i32 noundef %conv75) #9
  br label %cleanup

do.body82:                                        ; preds = %if.end54
  %disp86 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %disp86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disp86, align 4
  %debug89 = getelementptr inbounds %struct.nvkm_disp, ptr %34, i32 0, i32 1, i32 1, i32 5
  %35 = ptrtoint ptr %debug89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp90 = icmp ugt i32 %36, 4
  br i1 %cmp90, label %do.end95, label %do.body82.cleanup_crit_edge

do.body82.cleanup_crit_edge:                      ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end95:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  %device96 = getelementptr inbounds %struct.nvkm_disp, ptr %34, i32 0, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %device96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device96, align 4
  %dev97 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev97, align 8
  %name98 = getelementptr inbounds %struct.nvkm_disp, ptr %34, i32 0, i32 1, i32 1, i32 4
  %index100 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %index100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index100, align 4
  %hasht102 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %hasht102 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hasht102, align 4
  %conv103 = zext i16 %44 to i32
  %hashm105 = getelementptr inbounds %struct.nvkm_outp, ptr %1, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %hashm105 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hashm105, align 2
  %conv106 = zext i16 %46 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.57, ptr noundef %name98, i32 noundef %42, i32 noundef %conv103, i32 noundef %conv106, ptr noundef %stat) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %do.body82.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %nvkm_rdaux.exit, %nvkm_rdaux.exit.thread
  %retval.0 = phi i32 [ %call1.i, %nvkm_rdaux.exit ], [ 0, %do.body82.cleanup_crit_edge ], [ 0, %do.end95 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ %call.i, %nvkm_rdaux.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dpcfg_match(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 664, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_dp_ctor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_dp_ctor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 673, i32 3}
!10 = !{ptr @nvkm_dp_ctor._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvkm_dp_ctor._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 677, i32 2}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nvkm_dp_ctor._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvkm_dp_ctor._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 691, i32 3}
!19 = !{ptr @nvkm_dp_ctor._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_dp_ctor._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @nvkm_dp_ctor.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 695, i32 2}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvkm_dp_func, !25, !"nvkm_dp_func", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 638, i32 1}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 536, i32 4}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvkm_dp_enable._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_dp_enable._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 547, i32 3}
!33 = !{ptr @nvkm_dp_enable._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvkm_dp_enable._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/subdev/i2c.h", i32 173, i32 3}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 491, i32 2}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nvkm_dp_acquire._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvkm_dp_acquire._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 494, i32 3}
!44 = !{ptr @nvkm_dp_acquire._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvkm_dp_acquire._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 501, i32 3}
!48 = !{ptr @nvkm_dp_acquire._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvkm_dp_acquire._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 512, i32 5}
!52 = !{ptr @nvkm_dp_acquire._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvkm_dp_acquire._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 519, i32 3}
!56 = !{ptr @nvkm_dp_acquire._entry.33, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvkm_dp_acquire._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 415, i32 2}
!60 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nvkm_dp_train._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @nvkm_dp_train._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 424, i32 4}
!65 = !{ptr @nvkm_dp_train._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @nvkm_dp_train._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 436, i32 3}
!69 = !{ptr @nvkm_dp_train._entry.41, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @nvkm_dp_train._entry_ptr.43, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 438, i32 3}
!73 = !{ptr @nvkm_dp_train._entry.44, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nvkm_dp_train._entry_ptr.46, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @nvkm_dp_rates, !76, !"nvkm_dp_rates", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 352, i32 3}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 239, i32 2}
!79 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @nvkm_dp_train_links._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @nvkm_dp_train_links._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 282, i32 4}
!84 = !{ptr @nvkm_dp_train_links._entry.49, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nvkm_dp_train_links._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 113, i32 3}
!88 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @nvkm_dp_train_drive._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @nvkm_dp_train_drive._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 70, i32 3}
!93 = !{ptr @.str.55, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @nvkm_dp_train_sense._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @nvkm_dp_train_sense._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 73, i32 3}
!98 = !{ptr @nvkm_dp_train_sense._entry.56, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @nvkm_dp_train_sense._entry_ptr.58, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 151, i32 2}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nvkm_dp_train_pattern._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @nvkm_dp_train_pattern._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c", i32 565, i32 2}
!107 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @nvkm_dp_hpd._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @nvkm_dp_hpd._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i8 0, i8 2}
!121 = !{!"branch_weights", i32 2000, i32 1}
