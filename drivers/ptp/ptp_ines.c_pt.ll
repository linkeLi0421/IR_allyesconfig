; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_ines.c_pt.bc'
source_filename = "../drivers/ptp/ptp_ines.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mii_timestamping_ctrl = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ines_clock = type { [3 x %struct.ines_port], ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ines_port = type { ptr, %struct.mii_timestamper, ptr, i8, i8, i32, %struct.delayed_work, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, [100 x %struct.ines_timestamp] }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ines_timestamp = type { %struct.list_head, i32, i16, i64, i64, i64, i16, i16 }
%struct.ines_global_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.ines_port_registers = type { i32, i32, i32, i32, i32, i32 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }

@__UNIQUE_ID_description351 = internal constant [72 x i8] c"ptp_ines.description=Driver for the ZHAW InES PTP time stamping IP core\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [59 x i8] c"ptp_ines.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version353 = internal constant [21 x i8] c"ptp_ines.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ptp_ines\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file354 = internal constant [35 x i8] c"ptp_ines.file=drivers/ptp/ptp_ines\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [21 x i8] c"ptp_ines.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ptp_ines__365_798_ines_ptp_ctrl_driver_init6 = internal global ptr @ines_ptp_ctrl_driver_init, section ".initcall6.init", align 4
@ines_ptp_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ines_ptp_ctrl_probe, ptr @ines_ptp_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ines_ptp_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ines_ptp_ctrl_driver_exit = internal global ptr @ines_ptp_ctrl_driver_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ines_ptp_ctrl\00", [18 x i8] zeroinitializer }, align 32
@ines_ptp_ctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ines,ptp-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ines_ctrl = internal global { %struct.mii_timestamping_ctrl, [24 x i8] } { %struct.mii_timestamping_ctrl { ptr @ines_ptp_probe_channel, ptr @ines_ptp_release_channel }, [24 x i8] zeroinitializer }, align 32
@ines_clocks_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ines_clocks_lock, i64 52), ptr getelementptr (i8, ptr @ines_clocks_lock, i64 52) }, ptr @ines_clocks_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.41, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ines_clocks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ines_clocks, ptr @ines_clocks }, [24 x i8] zeroinitializer }, align 32
@ines_clock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&port->ts_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@ines_clock_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&port->ts_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@ines_clock_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@ines_clock_init.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ines_clock_init\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ptp/ptp_ines.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ID      0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@ines_clock_init.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.12, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST    0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@ines_clock_init.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.13, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VERSION 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@ines_clock_init.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.10, ptr @.str.14, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST2   0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@ines_find_txts.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.10, ptr @.str.16, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ines_find_txts\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tx timestamp FIFO unexpectedly empty\0A\00", [58 x i8] zeroinitializer }, align 32
@ines_find_txts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.10, i32 310, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unexpected Tx read pos %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ines_find_txts._entry_ptr = internal global ptr @ines_find_txts._entry, section ".printk_index", align 4
@ines_match.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.10, ptr @.str.21, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ines_match\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msgtype mismatch ts %hhu != skb %hhu\0A\00", [58 x i8] zeroinitializer }, align 32
@ines_match.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.10, ptr @.str.22, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clkid mismatch ts %llx != skb %llx\0A\00", [60 x i8] zeroinitializer }, align 32
@ines_match.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.10, ptr @.str.23, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"portn mismatch ts %hu != skb %hu\0A\00", [62 x i8] zeroinitializer }, align 32
@ines_match.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.10, ptr @.str.24, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"seqid mismatch ts %hu != skb %hu\0A\00", [62 x i8] zeroinitializer }, align 32
@ines_ptp_probe_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 708, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad port index %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ines_ptp_probe_channel\00", [41 x i8] zeroinitializer }, align 32
@ines_ptp_probe_channel._entry_ptr = internal global ptr @ines_ptp_probe_channel._entry, section ".printk_index", align 4
@ines_ptp_probe_channel._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.10, i32 713, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing port index %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ines_ptp_probe_channel._entry_ptr.29 = internal global ptr @ines_ptp_probe_channel._entry.27, section ".printk_index", align 4
@ines_rxfifo_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.10, i32 506, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"event pool is empty\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ines_rxfifo_read\00", [47 x i8] zeroinitializer }, align 32
@ines_rxfifo_read._entry_ptr = internal global ptr @ines_rxfifo_read._entry, section ".printk_index", align 4
@ines_rxfifo_read._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.10, i32 518, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unexpected Rx read pos %u\0A\00", [37 x i8] zeroinitializer }, align 32
@ines_rxfifo_read._entry_ptr.34 = internal global ptr @ines_rxfifo_read._entry.32, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ines_link_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.10, i32 417, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad speed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ines_link_state\00", [16 x i8] zeroinitializer }, align 32
@ines_link_state._entry_ptr = internal global ptr @ines_link_state._entry, section ".printk_index", align 4
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ines_clocks_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ines_clocks_lock\00", [47 x i8] zeroinitializer }, align 32
@switch.table.ines_match = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\0F\0F\0F\0F\00\02\03", [24 x i8] zeroinitializer }, align 32
@switch.table.ines_match.42 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 15, i32 15, i32 15, i32 15, i32 0, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 25, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"ines_ptp_ctrl_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 790, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 794, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"ines_ptp_ctrl_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 783, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"ines_ctrl\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 730, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"ines_clocks_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"ines_clocks\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 111, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 212, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 213, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 223, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 224, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 225, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 226, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 301, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 309, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 452, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 457, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 462, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 467, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 708, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 713, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 506, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 517, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 417, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [26 x i8] c"../drivers/ptp/ptp_ines.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 112, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"switch.table.ines_match\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"switch.table.ines_match.42\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__UNIQUE_ID_version353, ptr @__exitcall_ines_ptp_ctrl_driver_exit, ptr @__initcall__kmod_ptp_ines__365_798_ines_ptp_ctrl_driver_init6, ptr @__modver_attr, ptr @ines_find_txts._entry, ptr @ines_find_txts._entry_ptr, ptr @ines_link_state._entry, ptr @ines_link_state._entry_ptr, ptr @ines_ptp_ctrl_driver_exit, ptr @ines_ptp_probe_channel._entry, ptr @ines_ptp_probe_channel._entry.27, ptr @ines_ptp_probe_channel._entry_ptr, ptr @ines_ptp_probe_channel._entry_ptr.29, ptr @ines_rxfifo_read._entry, ptr @ines_rxfifo_read._entry.32, ptr @ines_rxfifo_read._entry_ptr, ptr @ines_rxfifo_read._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ines_ptp_ctrl_driver, ptr @.str.3, ptr @ines_ptp_ctrl_of_match, ptr @ines_ctrl, ptr @ines_clocks_lock, ptr @ines_clocks, ptr @ines_clock_init.__key, ptr @.str.4, ptr @ines_clock_init.__key.5, ptr @.str.6, ptr @ines_clock_init.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.ines_match, ptr @switch.table.ines_match.42], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_ptp_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_ptp_ctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_ctrl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_clocks_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_clock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_clock_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_clock_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_find_txts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_ptp_probe_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_ptp_probe_channel._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_rxfifo_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_rxfifo_read._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ines_link_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ines_match to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ines_match.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ines_ptp_ctrl_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ines_ptp_ctrl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ines_ptp_ctrl_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @ines_ptp_ctrl_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ines_ptp_ctrl_probe(ptr noundef %pld) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pld, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %out

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 15048, i32 noundef 3520, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pld, i32 0, i32 3
  tail call fastcc void @ines_clock_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %dev, ptr noundef %call)
  %call11 = tail call i32 @register_mii_tstamp_controller(ptr noundef %dev, ptr noundef nonnull @ines_ctrl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %out

if.end14:                                         ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef nonnull @ines_clocks_lock, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.ines_clock, ptr %call1.i.i.i, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ines_clock, ptr %call1.i.i.i, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @ines_clocks, ptr noundef %2, ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ines_clocks, ptr %prev.i, align 4
  store ptr %list, ptr @ines_clocks, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @ines_clocks, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr @ines_clocks, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ines_clocks_lock) #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pld, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.i.i.i, ptr %driver_data.i, align 4
  br label %out

out:                                              ; preds = %list_add_tail.exit, %if.then13, %if.end.out_crit_edge, %if.then
  %err.0 = phi i32 [ %0, %if.then ], [ %call11, %if.then13 ], [ 0, %list_add_tail.exit ], [ -12, %if.end.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ines_ptp_ctrl_remove(ptr noundef %pld) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pld, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pld, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @unregister_mii_tstamp_controller(ptr noundef %dev) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @ines_clocks_lock, i32 noundef 0) #9
  %list = getelementptr inbounds %struct.ines_clock, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ines_clock, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ines_clock, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ines_clocks_lock) #9
  %ts_work.i = getelementptr [3 x %struct.ines_port], ptr %1, i32 0, i32 0, i32 6
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ts_work.i) #9
  %ts_work.1.i = getelementptr [3 x %struct.ines_port], ptr %1, i32 0, i32 1, i32 6
  %call.1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ts_work.1.i) #9
  %ts_work.2.i = getelementptr [3 x %struct.ines_port], ptr %1, i32 0, i32 2, i32 6
  %call.2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ts_work.2.i) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ines_clock_init(ptr noundef %clock, ptr noundef %device, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %list = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 5
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %node1 = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 3
  %4 = ptrtoint ptr %node1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %node1, align 8
  %dev = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %device, ptr %dev, align 4
  %base = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %addr, ptr %base, align 4
  %regs = getelementptr inbounds %struct.ines_clock, ptr %clock, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %regs, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc34, %for.inc33.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %9 to i32
  %mul = shl i32 %i.018, 5
  %add = add nuw nsw i32 %mul, 32
  %add5 = add i32 %add, %10
  %11 = inttoptr i32 %add5 to ptr
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx, align 8
  %clock7 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 2
  %13 = ptrtoint ptr %clock7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clock, ptr %clock7, align 4
  %index = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 5
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.018, ptr %index, align 4
  %ts_work = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 6
  tail call void @__init_work(ptr noundef %ts_work, i32 noundef 0) #9
  %15 = ptrtoint ptr %ts_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %ts_work, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %ts_work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ines_clock_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry15 = getelementptr inbounds %struct.work_struct, ptr %ts_work, i32 0, i32 1
  %16 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i10 = getelementptr inbounds %struct.work_struct, ptr %ts_work, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry15, ptr %prev.i10, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %ts_work, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ines_txtstamp_work, ptr %func, align 4
  %timer = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @ines_clock_init.__key.5) #9
  %lock = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ines_clock_init.__key.7, i16 noundef signext 3) #9
  %events = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 9
  %19 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %events, ptr %events, align 4
  %prev.i11 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 9, i32 1
  %20 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %events, ptr %prev.i11, align 4
  %pool = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 10
  %21 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %pool, ptr %pool, align 4
  %prev.i12 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pool, ptr %prev.i12, align 4
  br label %for.body29

for.body29:                                       ; preds = %list_add.exit.for.body29_crit_edge, %for.body
  %j.017 = phi i32 [ 0, %for.body ], [ %inc, %list_add.exit.for.body29_crit_edge ]
  %arrayidx30 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 %i.018, i32 11, i32 %j.017
  %23 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx30, ptr noundef %pool, ptr noundef %24) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body29.list_add.exit_crit_edge

for.body29.list_add.exit_crit_edge:               ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx30, ptr %prev1.i.i, align 4
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %arrayidx30, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx30, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pool, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx30, ptr %pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body29.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %j.017, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc33, label %list_add.exit.for.body29_crit_edge

list_add.exit.for.body29_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29

for.inc33:                                        ; preds = %list_add.exit
  %inc34 = add nuw nsw i32 %i.018, 1
  %exitcond20.not = icmp eq i32 %inc34, 3
  br i1 %exitcond20.not, label %for.end35, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end35:                                        ; preds = %for.inc33
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %test = getelementptr inbounds %struct.ines_global_regs, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %test, i32 48879) #9, !srcloc !115
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 8
  %test2 = getelementptr inbounds %struct.ines_global_regs, ptr %32, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %test2, i32 48879) #9, !srcloc !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_clock_init.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_clock_init, %if.then)) #9
          to label %do.body46 [label %if.then], !srcloc !116

if.then:                                          ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !117
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_clock_init.__UNIQUE_ID_ddebug356, ptr noundef %device, ptr noundef nonnull @.str.11, i32 noundef %35) #9
  br label %do.body46

do.body46:                                        ; preds = %if.then, %for.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_clock_init.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_clock_init, %if.then58)) #9
          to label %do.body65 [label %if.then58], !srcloc !116

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %test60 = getelementptr inbounds %struct.ines_global_regs, ptr %37, i32 0, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %test60) #9, !srcloc !117
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_clock_init.__UNIQUE_ID_ddebug357, ptr noundef %device, ptr noundef nonnull @.str.12, i32 noundef %38) #9
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_clock_init.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_clock_init, %if.then77)) #9
          to label %do.body83 [label %if.then77], !srcloc !116

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %version = getelementptr inbounds %struct.ines_global_regs, ptr %40, i32 0, i32 3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version) #9, !srcloc !117
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_clock_init.__UNIQUE_ID_ddebug358, ptr noundef %device, ptr noundef nonnull @.str.13, i32 noundef %41) #9
  br label %do.body83

do.body83:                                        ; preds = %if.then77, %do.body65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_clock_init.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_clock_init, %if.then95)) #9
          to label %do.end101 [label %if.then95], !srcloc !116

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %test297 = getelementptr inbounds %struct.ines_global_regs, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %test297) #9, !srcloc !117
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_clock_init.__UNIQUE_ID_ddebug359, ptr noundef %device, ptr noundef nonnull @.str.14, i32 noundef %44) #9
  br label %do.end101

do.end101:                                        ; preds = %if.then95, %do.body83
  %45 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 33) #9, !srcloc !115
  %arrayidx106.1 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx106.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx106.1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 33) #9, !srcloc !115
  %arrayidx106.2 = getelementptr [3 x %struct.ines_port], ptr %clock, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx106.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx106.2, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 33) #9, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mii_tstamp_controller(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ines_txtstamp_work(ptr noundef %work) #2 align 64 {
entry:
  %ssh = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssh) #9
  %lock = getelementptr i8, ptr %work, i32 100
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_skb = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 8
  store ptr null, ptr %tx_skb, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %call8 = tail call fastcc i64 @ines_find_txts(ptr noundef %add.ptr, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8)
  %tobool.not = icmp eq i64 %call8, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ssh to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call8, ptr %ssh, align 8
  call void @skb_complete_tx_timestamp(ptr noundef %1, ptr noundef nonnull %ssh) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssh) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @ines_find_txts(ptr noundef %port, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  %ts = alloca %struct.ines_timestamp, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ptp_classify_raw(ptr noundef %skb) #9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts) #9
  %0 = call ptr @memset(ptr %ts, i32 255, i32 48)
  %index = getelementptr inbounds %struct.ines_port, ptr %port, i32 0, i32 5
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %2
  %lock = getelementptr inbounds %struct.ines_port, ptr %port, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %clock = getelementptr inbounds %struct.ines_port, ptr %port, i32 0, i32 2
  %tag = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 2
  %sec = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 3
  %nsec = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 4
  %clkid = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 5
  %portnum = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 6
  %seqid = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %if.end32
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 90
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0103 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clock, align 4
  %regs = getelementptr inbounds %struct.ines_clock, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %buf_stat8 = getelementptr inbounds %struct.ines_global_regs, ptr %6, i32 0, i32 7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %buf_stat8) #9, !srcloc !117
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body10, label %if.end20

do.body10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_find_txts.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_find_txts, %if.then16)) #9
          to label %for.end [label %if.then16], !srcloc !116

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock, align 4
  %dev = getelementptr inbounds %struct.ines_clock, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_find_txts.__UNIQUE_ID_ddebug360, ptr noundef %11, ptr noundef nonnull @.str.16) #9
  br label %for.end

if.end20:                                         ; preds = %for.body
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 8
  %ts_stat_tx22 = getelementptr inbounds %struct.ines_port_registers, ptr %13, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_stat_tx22) #9, !srcloc !117
  %shr = lshr i32 %14, 8
  %and24 = and i32 %shr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock, align 4
  %dev31 = getelementptr inbounds %struct.ines_clock, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %and24) #13
  br label %for.end

if.end32:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %ts_tx = getelementptr inbounds %struct.ines_port_registers, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx) #9, !srcloc !117
  %conv35 = trunc i32 %21 to i16
  %22 = ptrtoint ptr %tag to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv35, ptr %tag, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %ts_tx.i = getelementptr inbounds %struct.ines_port_registers, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx.i) #9, !srcloc !117
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 8
  %ts_tx4.i = getelementptr inbounds %struct.ines_port_registers, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i) #9, !srcloc !117
  %29 = shl i32 %25, 16
  %conv6.mask.i = and i32 %28, 65535
  %or.i108 = or i32 %29, %conv6.mask.i
  %or.i = zext i32 %or.i108 to i64
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  %ts_tx4.i.1 = getelementptr inbounds %struct.ines_port_registers, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i.1) #9, !srcloc !117
  %shl.i.1 = shl nuw nsw i64 %or.i, 16
  %conv6.mask.i.1 = and i32 %32, 65535
  %conv7.i.1 = zext i32 %conv6.mask.i.1 to i64
  %or.i.1 = or i64 %shl.i.1, %conv7.i.1
  %33 = ptrtoint ptr %sec to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or.i.1, ptr %sec, align 8
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 8
  %ts_tx.i71 = getelementptr inbounds %struct.ines_port_registers, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx.i71) #9, !srcloc !117
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %ts_tx4.i76 = getelementptr inbounds %struct.ines_port_registers, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i76) #9, !srcloc !117
  %40 = shl i32 %36, 16
  %conv6.mask.i78 = and i32 %39, 65535
  %or.i80109 = or i32 %40, %conv6.mask.i78
  %or.i80 = zext i32 %or.i80109 to i64
  %41 = ptrtoint ptr %nsec to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %or.i80, ptr %nsec, align 8
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %ts_tx.i85 = getelementptr inbounds %struct.ines_port_registers, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx.i85) #9, !srcloc !117
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 8
  %ts_tx4.i90 = getelementptr inbounds %struct.ines_port_registers, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i90) #9, !srcloc !117
  %48 = shl i32 %44, 16
  %conv6.mask.i92 = and i32 %47, 65535
  %or.i94110 = or i32 %48, %conv6.mask.i92
  %or.i94 = zext i32 %or.i94110 to i64
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port, align 8
  %ts_tx4.i90.1 = getelementptr inbounds %struct.ines_port_registers, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i90.1) #9, !srcloc !117
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port, align 8
  %ts_tx4.i90.2 = getelementptr inbounds %struct.ines_port_registers, ptr %53, i32 0, i32 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx4.i90.2) #9, !srcloc !117
  %55 = shl nuw i64 %or.i94, 32
  %56 = shl i32 %51, 16
  %57 = zext i32 %56 to i64
  %shl.i91.2 = or i64 %55, %57
  %conv6.mask.i92.2 = and i32 %54, 65535
  %conv7.i93.2 = zext i32 %conv6.mask.i92.2 to i64
  %or.i94.2 = or i64 %shl.i91.2, %conv7.i93.2
  %58 = ptrtoint ptr %clkid to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %or.i94.2, ptr %clkid, align 8
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %port, align 8
  %ts_tx40 = getelementptr inbounds %struct.ines_port_registers, ptr %60, i32 0, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx40) #9, !srcloc !117
  %conv42 = trunc i32 %61 to i16
  %62 = ptrtoint ptr %portnum to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv42, ptr %portnum, align 8
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port, align 8
  %ts_tx44 = getelementptr inbounds %struct.ines_port_registers, ptr %64, i32 0, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_tx44) #9, !srcloc !117
  %conv46 = trunc i32 %65 to i16
  %66 = ptrtoint ptr %seqid to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv46, ptr %seqid, align 2
  %67 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clock, align 4
  %dev48 = getelementptr inbounds %struct.ines_clock, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev48, align 4
  %call49 = call fastcc zeroext i1 @ines_match(ptr noundef %skb, i32 noundef %call, ptr noundef nonnull %ts, ptr noundef %70)
  br i1 %call49, label %if.then50, label %for.cond

if.then50:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i64 %or.i.1, 1000000000
  %add = add i64 %mul, %or.i80
  br label %for.end

for.end:                                          ; preds = %if.then50, %do.end29, %if.then16, %do.body10, %for.cond.for.end_crit_edge
  %ns.0 = phi i64 [ 0, %do.end29 ], [ %add, %if.then50 ], [ 0, %if.then16 ], [ 0, %do.body10 ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts) #9
  ret i64 %ns.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ines_match(ptr noundef %skb, i32 noundef %ptp_class, ptr nocapture noundef readonly %ts, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ptp_class, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !118

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %ptp_class) #9
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %ptp_get_msgtype.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ptp_get_msgtype.exit:                             ; preds = %if.end
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  %2 = and i8 %1, 15
  %source_port_identity = getelementptr inbounds %struct.ptp_header, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %source_port_identity to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %source_port_identity, align 8
  %port_number = getelementptr inbounds %struct.ptp_header, ptr %call, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %port_number to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %port_number, align 1
  %sequence_id = getelementptr inbounds %struct.ptp_header, ptr %call, i32 0, i32 9
  %7 = ptrtoint ptr %sequence_id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %sequence_id, align 1
  %tag = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 2
  %9 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tag, align 4
  %11 = and i16 %10, 7
  %12 = xor i16 %11, 4
  %13 = zext i16 %12 to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.ines_match, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %14)
  %switch.load = load i8, ptr %switch.gep, align 1
  %conv13 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %switch.load, i8 %2)
  %cmp.not = icmp eq i8 %switch.load, %2
  br i1 %cmp.not, label %if.end33, label %do.body

do.body:                                          ; preds = %ptp_get_msgtype.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_match.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_match, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !116

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tag, align 4
  %17 = and i16 %16, 7
  %18 = xor i16 %17, 4
  %19 = zext i16 %18 to i32
  %switch.gep153 = getelementptr inbounds [8 x i32], ptr @switch.table.ines_match.42, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_match.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %switch.load154, i32 noundef %conv13) #9
  br label %cleanup

if.end33:                                         ; preds = %ptp_get_msgtype.exit
  %clkid34 = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 5
  %21 = ptrtoint ptr %clkid34 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %clkid34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %4)
  %cmp35.not = icmp eq i64 %22, %4
  br i1 %cmp35.not, label %if.end55, label %do.body38

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_match.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_match, %if.then50)) #9
          to label %cleanup [label %if.then50], !srcloc !116

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %clkid34 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %clkid34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_match.__UNIQUE_ID_ddebug362, ptr noundef %dev, ptr noundef nonnull @.str.22, i64 noundef %24, i64 noundef %4) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end33
  %portnum = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 6
  %25 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %portnum, align 8
  %conv57 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %6)
  %cmp58.not = icmp eq i16 %26, %6
  br i1 %cmp58.not, label %if.end80, label %do.body61

do.body61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_match.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_match, %if.then73)) #9
          to label %cleanup [label %if.then73], !srcloc !116

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %portnum to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %portnum, align 8
  %conv75 = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_match.__UNIQUE_ID_ddebug363, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv75, i32 noundef %conv57) #9
  br label %cleanup

if.end80:                                         ; preds = %if.end55
  %seqid81 = getelementptr inbounds %struct.ines_timestamp, ptr %ts, i32 0, i32 7
  %29 = ptrtoint ptr %seqid81 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %seqid81, align 2
  %conv83 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %8)
  %cmp84.not = icmp eq i16 %30, %8
  br i1 %cmp84.not, label %if.end80.cleanup_crit_edge, label %do.body87

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ines_match.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ines_match, %if.then99)) #9
          to label %cleanup [label %if.then99], !srcloc !116

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %seqid81 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %seqid81, align 2
  %conv101 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ines_match.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv101, i32 noundef %conv83) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body87, %if.end80.cleanup_crit_edge, %if.then73, %do.body61, %if.then50, %do.body38, %if.then24, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then24 ], [ false, %if.then50 ], [ false, %if.then73 ], [ false, %if.then99 ], [ true, %if.end80.cleanup_crit_edge ], [ false, %do.body ], [ false, %do.body38 ], [ false, %do.body61 ], [ false, %do.body87 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ines_ptp_probe_channel(ptr noundef %device, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp = icmp ugt i32 %index, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.25, i32 noundef %index) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ines_clocks_lock, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %this.0.in.i = phi ptr [ @ines_clocks, %if.end ], [ %this.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %this.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %this.0.i = load ptr, ptr %this.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %this.0.i, @ines_clocks
  br i1 %cmp.i.not.i, label %ines_find_port.exit.thread, label %for.body.i

ines_find_port.exit.thread:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull @ines_clocks_lock) #9
  br label %do.end5

for.body.i:                                       ; preds = %for.cond.i
  %node1.i = getelementptr i8, ptr %this.0.i, i32 -8
  %3 = ptrtoint ptr %node1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node1.i, align 8
  %cmp.i = icmp eq ptr %4, %1
  br i1 %cmp.i, label %ines_find_port.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ines_find_port.exit:                              ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %this.0.i, i32 -15040
  %arrayidx.i = getelementptr [3 x %struct.ines_port], ptr %add.ptr.i, i32 0, i32 %index
  tail call void @mutex_unlock(ptr noundef nonnull @ines_clocks_lock) #9
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %ines_find_port.exit.do.end5_crit_edge, label %if.end7

ines_find_port.exit.do.end5_crit_edge:            ; preds = %ines_find_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end5:                                          ; preds = %ines_find_port.exit.do.end5_crit_edge, %ines_find_port.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.28, i32 noundef %index) #13
  br label %cleanup

if.end7:                                          ; preds = %ines_find_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mii_ts = getelementptr inbounds %struct.ines_port, ptr %arrayidx.i, i32 0, i32 1
  %5 = ptrtoint ptr %mii_ts to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ines_rxtstamp, ptr %mii_ts, align 4
  %txtstamp = getelementptr inbounds %struct.ines_port, ptr %arrayidx.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %txtstamp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ines_txtstamp, ptr %txtstamp, align 4
  %hwtstamp = getelementptr inbounds %struct.ines_port, ptr %arrayidx.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ines_hwtstamp, ptr %hwtstamp, align 4
  %link_state = getelementptr inbounds %struct.ines_port, ptr %arrayidx.i, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ines_link_state, ptr %link_state, align 4
  %ts_info = getelementptr inbounds %struct.ines_port, ptr %arrayidx.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %ts_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ines_ts_info, ptr %ts_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %mii_ts, %if.end7 ], [ inttoptr (i32 -19 to ptr), %do.end5 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ines_ptp_release_channel(ptr nocapture noundef %device, ptr nocapture noundef %mii_ts) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ines_rxtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rxts_enabled = getelementptr i8, ptr %mii_ts, i32 28
  %0 = ptrtoint ptr %rxts_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rxts_enabled, align 8, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %do.body1.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1.i:                                       ; preds = %if.end
  %lock.i = getelementptr i8, ptr %mii_ts, i32 136
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %index.i.i = getelementptr i8, ptr %mii_ts, i32 32
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl i32 8, %3
  %pool.i.i = getelementptr i8, ptr %mii_ts, i32 192
  %clock1.i.i = getelementptr i8, ptr %mii_ts, i32 24
  %events.i.i = getelementptr i8, ptr %mii_ts, i32 184
  %prev.i.i.i = getelementptr i8, ptr %mii_ts, i32 188
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %do.body1.i
  %i.031.i.i = phi i32 [ 0, %do.body1.i ], [ %inc.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pool.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %pool.i.i
  %6 = ptrtoint ptr %clock1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock1.i.i, align 4
  br i1 %cmp.i.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.ines_clock, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30) #13
  br label %ines_rxfifo_read.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %regs.i.i = getelementptr inbounds %struct.ines_clock, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %buf_stat2.i.i = getelementptr inbounds %struct.ines_global_regs, ptr %11, i32 0, i32 7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %buf_stat2.i.i) #9, !srcloc !117
  %and.i.i = and i32 %12, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.ines_rxfifo_read.exit.i_crit_edge, label %if.end6.i.i

if.end.i.i.ines_rxfifo_read.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ines_rxfifo_read.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %ts_stat_rx8.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %14, i32 0, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_stat_rx8.i.i) #9, !srcloc !117
  %shr.i.i = lshr i32 %15, 8
  %and10.i.i = and i32 %shr.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end18.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %clock1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock1.i.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.ines_clock, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.33, i32 noundef %and10.i.i) #13
  br label %ines_rxfifo_read.exit.i

if.end18.i.i:                                     ; preds = %if.end6.i.i
  %20 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pool.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %22, 100
  %tmo.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i.i, ptr %tmo.i.i, align 8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %ts_rx.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %25, i32 0, i32 5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx.i.i) #9, !srcloc !117
  %conv.i.i = trunc i32 %26 to i16
  %tag.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %tag.i.i, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %ts_rx.i.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %29, i32 0, i32 5
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx.i.i.i) #9, !srcloc !117
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %32, i32 0, i32 5
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i.i.i) #9, !srcloc !117
  %34 = shl i32 %30, 16
  %conv6.mask.i.i.i = and i32 %33, 65535
  %or.i32.i.i = or i32 %conv6.mask.i.i.i, %34
  %or.i.i.i = zext i32 %or.i32.i.i to i64
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i.1.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %36, i32 0, i32 5
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i.1.i.i) #9, !srcloc !117
  %shl.i.1.i.i = shl nuw nsw i64 %or.i.i.i, 16
  %conv6.mask.i.1.i.i = and i32 %37, 65535
  %conv7.i.1.i.i = zext i32 %conv6.mask.i.1.i.i to i64
  %or.i.1.i.i = or i64 %shl.i.1.i.i, %conv7.i.1.i.i
  %sec.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 3
  %38 = ptrtoint ptr %sec.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %or.i.1.i.i, ptr %sec.i.i, align 8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %ts_rx.i1.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %40, i32 0, i32 5
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx.i1.i.i) #9, !srcloc !117
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i6.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %43, i32 0, i32 5
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i6.i.i) #9, !srcloc !117
  %45 = shl i32 %41, 16
  %conv6.mask.i8.i.i = and i32 %44, 65535
  %or.i1033.i.i = or i32 %conv6.mask.i8.i.i, %45
  %or.i10.i.i = zext i32 %or.i1033.i.i to i64
  %nsec.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 4
  %46 = ptrtoint ptr %nsec.i.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %or.i10.i.i, ptr %nsec.i.i, align 8
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 8
  %ts_rx.i15.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %48, i32 0, i32 5
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx.i15.i.i) #9, !srcloc !117
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i20.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %51, i32 0, i32 5
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i20.i.i) #9, !srcloc !117
  %53 = shl i32 %49, 16
  %conv6.mask.i22.i.i = and i32 %52, 65535
  %or.i2434.i.i = or i32 %conv6.mask.i22.i.i, %53
  %or.i24.i.i = zext i32 %or.i2434.i.i to i64
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i20.1.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %55, i32 0, i32 5
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i20.1.i.i) #9, !srcloc !117
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 8
  %ts_rx4.i20.2.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %58, i32 0, i32 5
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx4.i20.2.i.i) #9, !srcloc !117
  %60 = shl nuw i64 %or.i24.i.i, 32
  %61 = shl i32 %56, 16
  %62 = zext i32 %61 to i64
  %shl.i21.2.i.i = or i64 %60, %62
  %conv6.mask.i22.2.i.i = and i32 %59, 65535
  %conv7.i23.2.i.i = zext i32 %conv6.mask.i22.2.i.i to i64
  %or.i24.2.i.i = or i64 %shl.i21.2.i.i, %conv7.i23.2.i.i
  %clkid.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 5
  %63 = ptrtoint ptr %clkid.i.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %or.i24.2.i.i, ptr %clkid.i.i, align 8
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 8
  %ts_rx26.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %65, i32 0, i32 5
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx26.i.i) #9, !srcloc !117
  %conv28.i.i = trunc i32 %66 to i16
  %portnum.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 6
  %67 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv28.i.i, ptr %portnum.i.i, align 8
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr, align 8
  %ts_rx30.i.i = getelementptr inbounds %struct.ines_port_registers, ptr %69, i32 0, i32 5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ts_rx30.i.i) #9, !srcloc !117
  %conv32.i.i = trunc i32 %70 to i16
  %seqid.i.i = getelementptr inbounds %struct.ines_timestamp, ptr %21, i32 0, i32 7
  %71 = ptrtoint ptr %seqid.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv32.i.i, ptr %seqid.i.i, align 2
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end18.i.i.list_del_init.exit.i.i_crit_edge

if.end18.i.i.list_del_init.exit.i.i_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %21, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end18.i.i.list_del_init.exit.i.i_crit_edge
  %78 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %21, ptr %prev.i3.i.i.i, align 4
  %80 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i29.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %21, ptr noundef %81, ptr noundef %events.i.i) #9
  br i1 %call.i.i29.i.i, label %if.end.i.i30.i.i, label %list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge

list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i30.i.i:                                 ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %21, ptr %prev.i.i.i, align 4
  %83 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %events.i.i, ptr %21, align 4
  %84 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev.i3.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %21, ptr %81, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i30.i.i, %list_del_init.exit.i.i.list_add_tail.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 90
  br i1 %exitcond.not.i.i, label %list_add_tail.exit.i.i.ines_rxfifo_read.exit.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

list_add_tail.exit.i.i.ines_rxfifo_read.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ines_rxfifo_read.exit.i

ines_rxfifo_read.exit.i:                          ; preds = %list_add_tail.exit.i.i.ines_rxfifo_read.exit.i_crit_edge, %do.end15.i.i, %if.end.i.i.ines_rxfifo_read.exit.i_crit_edge, %do.end.i.i
  %86 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %events.i.i, align 4
  %cmp.i.not67.i = icmp eq ptr %87, %events.i.i
  br i1 %cmp.i.not67.i, label %ines_rxfifo_read.exit.i.ines_find_rxts.exit.thread15_crit_edge, label %ines_rxfifo_read.exit.i.for.body.i_crit_edge

ines_rxfifo_read.exit.i.for.body.i_crit_edge:     ; preds = %ines_rxfifo_read.exit.i
  br label %for.body.i

ines_rxfifo_read.exit.i.ines_find_rxts.exit.thread15_crit_edge: ; preds = %ines_rxfifo_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ines_find_rxts.exit.thread15

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %ines_rxfifo_read.exit.i.for.body.i_crit_edge
  %this.068.i = phi ptr [ %next.069.i, %for.inc.i.for.body.i_crit_edge ], [ %87, %ines_rxfifo_read.exit.i.for.body.i_crit_edge ]
  %88 = ptrtoint ptr %this.068.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %next.069.i = load ptr, ptr %this.068.i, align 4
  %tmo.i47.i = getelementptr inbounds %struct.ines_timestamp, ptr %this.068.i, i32 0, i32 1
  %89 = ptrtoint ptr %tmo.i47.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmo.i47.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i48.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i48.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.068.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then13.i.list_del_init.exit.i_crit_edge

if.then13.i.list_del_init.exit.i_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i49.i = getelementptr inbounds %struct.list_head, ptr %this.068.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i49.i, align 4
  %94 = ptrtoint ptr %this.068.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %this.068.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then13.i.list_del_init.exit.i_crit_edge
  %98 = ptrtoint ptr %this.068.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %this.068.i, ptr %this.068.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %this.068.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %this.068.i, ptr %prev.i3.i.i, align 4
  %100 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pool.i.i, align 4
  %call.i.i50.i = tail call zeroext i1 @__list_add_valid(ptr noundef %this.068.i, ptr noundef %pool.i.i, ptr noundef %101) #9
  br i1 %call.i.i50.i, label %if.end.i.i51.i, label %list_del_init.exit.i.for.inc.i_crit_edge

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i51.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %this.068.i, ptr %prev1.i.i.i, align 4
  %103 = ptrtoint ptr %this.068.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %101, ptr %this.068.i, align 4
  %104 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %pool.i.i, ptr %prev.i3.i.i, align 4
  %105 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %this.068.i, ptr %pool.i.i, align 4
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  %106 = ptrtoint ptr %clock1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clock1.i.i, align 4
  %dev.i = getelementptr inbounds %struct.ines_clock, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  %call16.i = tail call fastcc zeroext i1 @ines_match(ptr noundef %skb, i32 noundef %type, ptr noundef %this.068.i, ptr noundef %109) #9
  br i1 %call16.i, label %if.then17.i, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end15.i
  %sec.i = getelementptr inbounds %struct.ines_timestamp, ptr %this.068.i, i32 0, i32 3
  %110 = ptrtoint ptr %sec.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %sec.i, align 8
  %mul.i = mul i64 %111, 1000000000
  %nsec.i = getelementptr inbounds %struct.ines_timestamp, ptr %this.068.i, i32 0, i32 4
  %112 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %mul.i, %113
  %call.i.i52.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.068.i) #9
  br i1 %call.i.i52.i, label %if.end.i.i55.i, label %if.then17.i.list_del_init.exit57.i_crit_edge

if.then17.i.list_del_init.exit57.i_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit57.i

if.end.i.i55.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i53.i = getelementptr inbounds %struct.list_head, ptr %this.068.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i53.i, align 4
  %116 = ptrtoint ptr %this.068.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %this.068.i, align 4
  %prev1.i.i.i54.i = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i54.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %list_del_init.exit57.i

list_del_init.exit57.i:                           ; preds = %if.end.i.i55.i, %if.then17.i.list_del_init.exit57.i_crit_edge
  %120 = ptrtoint ptr %this.068.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %this.068.i, ptr %this.068.i, align 4
  %prev.i3.i56.i = getelementptr inbounds %struct.list_head, ptr %this.068.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i3.i56.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %this.068.i, ptr %prev.i3.i56.i, align 4
  %122 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pool.i.i, align 4
  %call.i.i58.i = tail call zeroext i1 @__list_add_valid(ptr noundef %this.068.i, ptr noundef %pool.i.i, ptr noundef %123) #9
  br i1 %call.i.i58.i, label %if.end.i.i61.i, label %list_del_init.exit57.i.ines_find_rxts.exit_crit_edge

list_del_init.exit57.i.ines_find_rxts.exit_crit_edge: ; preds = %list_del_init.exit57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ines_find_rxts.exit

if.end.i.i61.i:                                   ; preds = %list_del_init.exit57.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i59.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %this.068.i, ptr %prev1.i.i59.i, align 4
  %125 = ptrtoint ptr %this.068.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %123, ptr %this.068.i, align 4
  %126 = ptrtoint ptr %prev.i3.i56.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %pool.i.i, ptr %prev.i3.i56.i, align 4
  %127 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %this.068.i, ptr %pool.i.i, align 4
  br label %ines_find_rxts.exit

for.inc.i:                                        ; preds = %if.end15.i.for.inc.i_crit_edge, %if.end.i.i51.i, %list_del_init.exit.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %next.069.i, %events.i.i
  br i1 %cmp.i.not.i, label %for.inc.i.ines_find_rxts.exit.thread15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ines_find_rxts.exit.thread15_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ines_find_rxts.exit.thread15

ines_find_rxts.exit.thread15:                     ; preds = %for.inc.i.ines_find_rxts.exit.thread15_crit_edge, %ines_rxfifo_read.exit.i.ines_find_rxts.exit.thread15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  br label %cleanup

ines_find_rxts.exit:                              ; preds = %if.end.i.i61.i, %list_del_init.exit57.i.ines_find_rxts.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %tobool1.not = icmp eq i64 %add.i, 0
  br i1 %tobool1.not, label %ines_find_rxts.exit.cleanup_crit_edge, label %if.end3

ines_find_rxts.exit.cleanup_crit_edge:            ; preds = %ines_find_rxts.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %ines_find_rxts.exit
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %128 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %129, i32 0, i32 7
  %130 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %add.i, ptr %hwtstamps.i, align 8
  %call6 = tail call i32 @netif_rx(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ines_find_rxts.exit.cleanup_crit_edge, %ines_find_rxts.exit.thread15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %entry.cleanup_crit_edge ], [ false, %ines_find_rxts.exit.cleanup_crit_edge ], [ false, %ines_find_rxts.exit.thread15 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ines_txtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %txts_enabled = getelementptr i8, ptr %mii_ts, i32 29
  %0 = ptrtoint ptr %txts_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txts_enabled, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  %lock.i = getelementptr i8, ptr %mii_ts, i32 136
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !117
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.do.body1_crit_edge, label %if.then.i

lor.lhs.false.do.body1_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then.i:                                        ; preds = %lor.lhs.false
  %call.i.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.do.body1_crit_edge, label %if.end.i.i

if.then.i.do.body1_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.end.i.i:                                       ; preds = %if.then.i
  %and.i.i.i = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !118

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %control.i.i.i = getelementptr inbounds %struct.ptp_header, ptr %call.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %control.i.i.i, align 1
  br label %ines_txts_onestep.exit

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i.i, align 1
  %9 = and i8 %8, 15
  br label %ines_txts_onestep.exit

ines_txts_onestep.exit:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %msgtype.0.i.i.i = phi i8 [ %6, %if.then.i.i.i ], [ %9, %if.else.i.i.i ]
  %10 = zext i8 %msgtype.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %msgtype.0.i.i.i, label %ines_txts_onestep.exit.do.body1_crit_edge [
    i8 3, label %ines_txts_onestep.exit.if.then_crit_edge
    i8 0, label %ines_txts_onestep.exit.if.then_crit_edge27
  ]

ines_txts_onestep.exit.if.then_crit_edge27:       ; preds = %ines_txts_onestep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ines_txts_onestep.exit.if.then_crit_edge:         ; preds = %ines_txts_onestep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ines_txts_onestep.exit.do.body1_crit_edge:        ; preds = %ines_txts_onestep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %ines_txts_onestep.exit.if.then_crit_edge, %ines_txts_onestep.exit.if.then_crit_edge27, %entry.if.then_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

do.body1:                                         ; preds = %ines_txts_onestep.exit.do.body1_crit_edge, %if.then.i.do.body1_crit_edge, %lor.lhs.false.do.body1_crit_edge
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %tx_skb = getelementptr i8, ptr %mii_ts, i32 180
  %11 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_skb, align 8
  store ptr %skb, ptr %tx_skb, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4) #9
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #9
  %ts_work = getelementptr i8, ptr %mii_ts, i32 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %ts_work, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ines_hwtstamp(ptr noundef %mii_ts, ptr nocapture noundef readonly %ifr) #2 align 64 {
entry:
  %cfg = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #9
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg, align 4, !annotation !120
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !120
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !120
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #14, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !118

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 12) #9
  %8 = call i32 @llvm.read_register.i32(metadata !105) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !122
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %6, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !118

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 3, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %cm_one_step.0 = phi i32 [ 64, %sw.bb2 ], [ 0, %sw.bb1 ], [ %13, %if.end.sw.epilog_crit_edge ]
  %cmp25 = phi i1 [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ false, %if.end.sw.epilog_crit_edge ]
  %ts_stat_tx.0 = phi i32 [ 32768, %sw.bb2 ], [ 32768, %sw.bb1 ], [ %13, %if.end.sw.epilog_crit_edge ]
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %16, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.if.then.i53_crit_edge
    i32 14, label %sw.epilog.sw.bb5_crit_edge
    i32 13, label %sw.epilog.sw.bb5_crit_edge63
    i32 12, label %sw.epilog.sw.bb5_crit_edge64
    i32 11, label %sw.epilog.sw.bb5_crit_edge65
    i32 6, label %sw.epilog.sw.bb5_crit_edge66
    i32 7, label %sw.epilog.sw.bb5_crit_edge67
    i32 8, label %sw.epilog.sw.bb5_crit_edge68
    i32 9, label %sw.epilog.sw.bb5_crit_edge69
    i32 10, label %sw.epilog.sw.bb5_crit_edge70
  ]

sw.epilog.sw.bb5_crit_edge70:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge69:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge68:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge67:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge66:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge65:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge64:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge63:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.epilog.if.then.i53_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i53

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge63, %sw.epilog.sw.bb5_crit_edge64, %sw.epilog.sw.bb5_crit_edge65, %sw.epilog.sw.bb5_crit_edge66, %sw.epilog.sw.bb5_crit_edge67, %sw.epilog.sw.bb5_crit_edge68, %sw.epilog.sw.bb5_crit_edge69, %sw.epilog.sw.bb5_crit_edge70
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %3, align 4
  br label %if.then.i53

if.then.i53:                                      ; preds = %sw.bb5, %sw.epilog.if.then.i53_crit_edge
  %cmp23 = phi i1 [ true, %sw.bb5 ], [ false, %sw.epilog.if.then.i53_crit_edge ]
  %ts_stat_rx.0 = phi i32 [ 32768, %sw.bb5 ], [ %16, %sw.epilog.if.then.i53_crit_edge ]
  %lock = getelementptr i8, ptr %mii_ts, i32 136
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !117
  %and = and i32 %21, -65
  %or = or i32 %and, %cm_one_step.0
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %or) #9, !srcloc !115
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %ts_stat_rx20 = getelementptr inbounds %struct.ines_port_registers, ptr %25, i32 0, i32 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ts_stat_rx20, i32 %ts_stat_rx.0) #9, !srcloc !115
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %ts_stat_tx22 = getelementptr inbounds %struct.ines_port_registers, ptr %27, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ts_stat_tx22, i32 %ts_stat_tx.0) #9, !srcloc !115
  %rxts_enabled = getelementptr i8, ptr %mii_ts, i32 28
  %frombool = zext i1 %cmp23 to i8
  %28 = ptrtoint ptr %rxts_enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %rxts_enabled, align 8
  %txts_enabled = getelementptr i8, ptr %mii_ts, i32 29
  %frombool27 = zext i1 %cmp25 to i8
  %29 = ptrtoint ptr %txts_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool27, ptr %txts_enabled, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #9
  %30 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.37, i32 noundef 174) #9
  %call.i.i52 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i52, label %if.then.i53.cleanup_crit_edge, label %if.end.i.i56

if.then.i53.cleanup_crit_edge:                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i56:                                     ; preds = %if.then.i53
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 12, i32 -1226833920) #14, !srcloc !125
  %asmresult.i.i54 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i54)
  %cmp.i.i55 = icmp eq i32 %asmresult.i.i54, 0
  br i1 %cmp.i.i55, label %copy_to_user.exit, label %if.end.i.i56.cleanup_crit_edge

if.end.i.i56.cleanup_crit_edge:                   ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i57 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg, i32 noundef 12) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %31, ptr noundef nonnull %cfg, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool31.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i56.cleanup_crit_edge, %if.then.i53.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ -34, %sw.epilog.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i53.cleanup_crit_edge ], [ -14, %if.end.i.i56.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ines_link_state(ptr noundef %mii_ts, ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -4
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %do.end [
    i32 10, label %entry.do.body5_crit_edge
    i32 100, label %sw.bb1
    i32 1000, label %sw.bb2
  ]

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clock = getelementptr i8, ptr %mii_ts, i32 24
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clock, align 4
  %dev = getelementptr inbounds %struct.ines_clock, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %1) #13
  br label %cleanup

do.body5:                                         ; preds = %sw.bb2, %sw.bb1, %entry.do.body5_crit_edge
  %speed_conf.0 = phi i32 [ 32, %sw.bb2 ], [ 16, %sw.bb1 ], [ 0, %entry.do.body5_crit_edge ]
  %lock = getelementptr i8, ptr %mii_ts, i32 136
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !117
  %and = and i32 %9, -49
  %or = or i32 %and, %speed_conf.0
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %or) #9, !srcloc !115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ines_ts_info(ptr nocapture noundef readnone %mii_ts, ptr nocapture noundef writeonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 95, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 11, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4097, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mii_tstamp_controller(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__UNIQUE_ID_description351, !1, !"__UNIQUE_ID_description351", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_ines.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author352, !3, !"__UNIQUE_ID_author352", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_ines.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_version353, !5, !"__UNIQUE_ID_version353", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_ines.c", i32 25, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file354, !11, !"__UNIQUE_ID_file354", i1 false, i1 false}
!11 = !{!"../drivers/ptp/ptp_ines.c", i32 26, i32 1}
!12 = !{ptr @__UNIQUE_ID_license355, !11, !"__UNIQUE_ID_license355", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_ptp_ines__365_798_ines_ptp_ctrl_driver_init6, !14, !"__initcall__kmod_ptp_ines__365_798_ines_ptp_ctrl_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_ines.c", i32 798, i32 1}
!15 = !{ptr @__exitcall_ines_ptp_ctrl_driver_exit, !14, !"__exitcall_ines_ptp_ctrl_driver_exit", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ptp/ptp_ines.c", i32 794, i32 11}
!18 = !{ptr @ines_ptp_ctrl_driver, !19, !"ines_ptp_ctrl_driver", i1 false, i1 false}
!19 = !{!"../drivers/ptp/ptp_ines.c", i32 790, i32 31}
!20 = !{ptr @ines_clock_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/ptp/ptp_ines.c", i32 212, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ines_clock_init.__key.5, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ines_clock_init.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/ptp/ptp_ines.c", i32 213, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ptp/ptp_ines.c", i32 223, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ines_clock_init.__UNIQUE_ID_ddebug356, !29, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ptp/ptp_ines.c", i32 224, i32 2}
!35 = !{ptr @ines_clock_init.__UNIQUE_ID_ddebug357, !34, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ptp/ptp_ines.c", i32 225, i32 2}
!38 = !{ptr @ines_clock_init.__UNIQUE_ID_ddebug358, !37, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ptp/ptp_ines.c", i32 226, i32 2}
!41 = !{ptr @ines_clock_init.__UNIQUE_ID_ddebug359, !40, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ptp/ptp_ines.c", i32 301, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ines_find_txts.__UNIQUE_ID_ddebug360, !43, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ptp/ptp_ines.c", i32 309, i32 4}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ines_find_txts._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @ines_find_txts._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ptp/ptp_ines.c", i32 452, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ines_match.__UNIQUE_ID_ddebug361, !53, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ptp/ptp_ines.c", i32 457, i32 3}
!58 = !{ptr @ines_match.__UNIQUE_ID_ddebug362, !57, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ptp/ptp_ines.c", i32 462, i32 3}
!61 = !{ptr @ines_match.__UNIQUE_ID_ddebug363, !60, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ptp/ptp_ines.c", i32 467, i32 3}
!64 = !{ptr @ines_match.__UNIQUE_ID_ddebug364, !63, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!65 = !{ptr @ines_ctrl, !66, !"ines_ctrl", i1 false, i1 false}
!66 = !{!"../drivers/ptp/ptp_ines.c", i32 730, i32 37}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ptp/ptp_ines.c", i32 708, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ines_ptp_probe_channel._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ines_ptp_probe_channel._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ptp/ptp_ines.c", i32 713, i32 3}
!74 = !{ptr @ines_ptp_probe_channel._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ines_ptp_probe_channel._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ptp/ptp_ines.c", i32 506, i32 4}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ines_rxfifo_read._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ines_rxfifo_read._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ptp/ptp_ines.c", i32 517, i32 4}
!83 = !{ptr @ines_rxfifo_read._entry.32, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ines_rxfifo_read._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ptp/ptp_ines.c", i32 417, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ines_link_state._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @ines_link_state._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ptp/ptp_ines.c", i32 112, i32 8}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ines_clocks_lock, !98, !"ines_clocks_lock", i1 false, i1 false}
!101 = !{ptr @ines_clocks, !102, !"ines_clocks", i1 false, i1 false}
!102 = !{!"../drivers/ptp/ptp_ines.c", i32 111, i32 8}
!103 = !{ptr @ines_ptp_ctrl_of_match, !104, !"ines_ptp_ctrl_of_match", i1 false, i1 false}
!104 = !{!"../drivers/ptp/ptp_ines.c", i32 783, i32 34}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 6188985}
!116 = !{i64 2149042654, i64 2149042659, i64 2149042672, i64 2149042716, i64 2149042750, i64 2149042771}
!117 = !{i64 6189403}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i8 0, i8 2}
!120 = !{!"auto-init"}
!121 = !{i64 2152314639, i64 2152314664}
!122 = !{i64 4810194}
!123 = !{i64 4810391}
!124 = !{i64 2152295624}
!125 = !{i64 2152315320, i64 2152315345}
