; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdricoh_cs.c_pt.bc'
source_filename = "../drivers/mmc/host/sdricoh_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.sdricoh_host = type { ptr, ptr, ptr, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sdricoh_cs__292_527_sdricoh_driver_init6 = internal global ptr @sdricoh_driver_init, section ".initcall6.init", align 4
@sdricoh_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @sdricoh_pcmcia_probe, ptr @sdricoh_pcmcia_detach, ptr @sdricoh_pcmcia_suspend, ptr @sdricoh_pcmcia_resume, ptr null, ptr @pcmcia_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_sdricoh_driver_exit = internal global ptr @sdricoh_driver_exit, section ".exitcall.exit", align 4
@__param_str_switchlocked = internal constant [24 x i8] c"sdricoh_cs.switchlocked\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@switchlocked = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_switchlocked = internal constant %struct.kernel_param { ptr @__param_str_switchlocked, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @switchlocked } }, section "__param", align 4
@__UNIQUE_ID_switchlockedtype293 = internal constant [38 x i8] c"sdricoh_cs.parmtype=switchlocked:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [58 x i8] c"sdricoh_cs.author=Sascha Sommer <saschasommer@freenet.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [68 x i8] c"sdricoh_cs.description=Ricoh PCMCIA Secure Digital Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [44 x i8] c"sdricoh_cs.file=drivers/mmc/host/sdricoh_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"sdricoh_cs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_switchlocked298 = internal constant [120 x i8] c"sdricoh_cs.parm=switchlocked:Switch the cards locked status.Use this when unlocked cards are shown readonly (default 0)\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdricoh_cs\00", [21 x i8] zeroinitializer }, align 32
@pcmcia_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -638246163, i32 -1013968382, i32 0, i32 0], [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -638246163, i32 -1394079479, i32 0, i32 0], [4 x ptr] [ptr @.str.46, ptr @.str.48, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Searching MMC controller for pcmcia device %s %s ...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdricoh_pcmcia_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mmc/host/sdricoh_cs.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_probe._entry_ptr = internal global ptr @sdricoh_pcmcia_probe._entry, section ".printk_index", align 4
@sdricoh_pcmcia_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MMC controller found\0A\00", [42 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_probe._entry_ptr.8 = internal global ptr @sdricoh_pcmcia_probe._entry.6, section ".printk_index", align 4
@sdricoh_pcmcia_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 478, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No MMC controller was found.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_probe._entry_ptr.12 = internal global ptr @sdricoh_pcmcia_probe._entry.9, section ".printk_index", align 4
@sdricoh_init_mmc.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdricoh_init_mmc\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected pci resource len\0A\00", [35 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 403, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to map iobase\0A\00", [42 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc._entry_ptr = internal global ptr @sdricoh_init_mmc._entry, section ".printk_index", align 4
@sdricoh_init_mmc.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.16, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no supported mmc controller found\0A\00", [61 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 416, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_alloc_host failed\0A\00", [41 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc._entry_ptr.19 = internal global ptr @sdricoh_init_mmc._entry.17, section ".printk_index", align 4
@sdricoh_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @sdricoh_request, ptr null, ptr @sdricoh_set_ios, ptr @sdricoh_get_ro, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.20, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"could not reset\0A\00", [47 x i8] zeroinitializer }, align 32
@sdricoh_init_mmc.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.21, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc host registered\0A\00", [43 x i8] zeroinitializer }, align 32
@sdricoh_request.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdricoh_request\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"=============================\0A\00", [33 x i8] zeroinitializer }, align 32
@sdricoh_request.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdricoh_request opcode=%i\0A\00", [37 x i8] zeroinitializer }, align 32
@sdricoh_request.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.25, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"transfer: blksz %i blocks %i sg_len %i sg length %i\0A\00", [43 x i8] zeroinitializer }, align 32
@sdricoh_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.3, i32 323, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sdricoh_request: cmd %i block transfer failed\0A\00", [49 x i8] zeroinitializer }, align 32
@sdricoh_request._entry_ptr = internal global ptr @sdricoh_request._entry, section ".printk_index", align 4
@sdricoh_request._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.3, i32 333, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sdricoh_request: transfer end error\0A\00", [59 x i8] zeroinitializer }, align 32
@sdricoh_request._entry_ptr.29 = internal global ptr @sdricoh_request._entry.27, section ".printk_index", align 4
@sdricoh_request.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@sdricoh_query_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 145, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"query_status: timeout waiting for %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdricoh_query_status\00", [43 x i8] zeroinitializer }, align 32
@sdricoh_query_status._entry_ptr = internal global ptr @sdricoh_query_status._entry, section ".printk_index", align 4
@sdricoh_query_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 151, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"waiting for status bit %x failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sdricoh_query_status._entry_ptr.35 = internal global ptr @sdricoh_query_status._entry.33, section ".printk_index", align 4
@sdricoh_set_ios.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdricoh_set_ios\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_ios\0A\00", [23 x i8] zeroinitializer }, align 32
@sdricoh_reset.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdricoh_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_detach.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdricoh_pcmcia_detach\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"detach\0A\00", [24 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_suspend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdricoh_pcmcia_suspend\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@sdricoh_pcmcia_resume.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdricoh_pcmcia_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RICOH\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bay1Controller\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bay Controller\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"sdricoh_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 519, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"switchlocked\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 30, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 520, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"pcmcia_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 66, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 463, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 473, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 478, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 397, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 403, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 408, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 416, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"sdricoh_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 379, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 440, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 448, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 271, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 302, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 322, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 333, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 44, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 145, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 151, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 346, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 202, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 486, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 503, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 510, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 68, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [33 x i8] c"../drivers/mmc/host/sdricoh_cs.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 70, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_switchlocked298, ptr @__UNIQUE_ID_switchlockedtype293, ptr @__exitcall_sdricoh_driver_exit, ptr @__initcall__kmod_sdricoh_cs__292_527_sdricoh_driver_init6, ptr @__param_switchlocked, ptr @sdricoh_driver_exit, ptr @sdricoh_init_mmc._entry, ptr @sdricoh_init_mmc._entry.17, ptr @sdricoh_init_mmc._entry_ptr, ptr @sdricoh_init_mmc._entry_ptr.19, ptr @sdricoh_pcmcia_probe._entry, ptr @sdricoh_pcmcia_probe._entry.6, ptr @sdricoh_pcmcia_probe._entry.9, ptr @sdricoh_pcmcia_probe._entry_ptr, ptr @sdricoh_pcmcia_probe._entry_ptr.12, ptr @sdricoh_pcmcia_probe._entry_ptr.8, ptr @sdricoh_query_status._entry, ptr @sdricoh_query_status._entry.33, ptr @sdricoh_query_status._entry_ptr, ptr @sdricoh_query_status._entry_ptr.35, ptr @sdricoh_request._entry, ptr @sdricoh_request._entry.27, ptr @sdricoh_request._entry_ptr, ptr @sdricoh_request._entry_ptr.29, ptr @sdricoh_driver, ptr @switchlocked, ptr @.str, ptr @pcmcia_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @sdricoh_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switchlocked to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_pcmcia_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_pcmcia_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_pcmcia_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_init_mmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_init_mmc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_request._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_query_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdricoh_query_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdricoh_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @sdricoh_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdricoh_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @sdricoh_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdricoh_pcmcia_probe(ptr noundef %pcmcia_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia_dev, i32 0, i32 21
  %prod_id = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia_dev, i32 0, i32 19
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prod_id, align 8
  %arrayidx2 = getelementptr %struct.pcmcia_device, ptr %pcmcia_dev, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %3) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %pci_dev.0 = phi ptr [ null, %entry ], [ %call, %while.body.while.cond_crit_edge ]
  %call = tail call ptr @pci_get_device(i32 noundef 4480, i32 noundef 1142, ptr noundef %pci_dev.0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end11, label %while.body

while.body:                                       ; preds = %while.cond
  %call3 = tail call fastcc i32 @sdricoh_init_mmc(ptr noundef nonnull %call, ptr noundef %pcmcia_dev)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end7, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end7:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

do.end11:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end7
  %retval.0 = phi i32 [ 0, %do.end7 ], [ -19, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdricoh_pcmcia_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_pcmcia_detach.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_pcmcia_detach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_pcmcia_detach.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.41) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mmc_remove_host(ptr noundef nonnull %1) #5
  %pci_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %iobase = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  tail call void @pci_iounmap(ptr noundef %3, ptr noundef %5) #5
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 4
  tail call void @pci_dev_put(ptr noundef %7) #5
  tail call void @mmc_free_host(ptr noundef nonnull %1) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdricoh_pcmcia_suspend(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_pcmcia_suspend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_pcmcia_suspend, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_pcmcia_suspend.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.43) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdricoh_pcmcia_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_pcmcia_resume.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_pcmcia_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_pcmcia_resume.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.45) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %call4 = tail call fastcc i32 @sdricoh_reset(ptr noundef %private.i)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdricoh_init_mmc(ptr noundef %pci_dev, ptr noundef %pcmcia_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia_dev, i32 0, i32 21
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 0, i32 1
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %cond.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cond.false:                                       ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, 4095
  br i1 %phi.cmp, label %if.end11, label %cond.false.do.body_crit_edge

cond.false.do.body_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %cond.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_init_mmc, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !129

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_init_mmc.__UNIQUE_ID_ddebug285, ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  br label %cleanup

if.end11:                                         ; preds = %cond.false
  %call12 = tail call ptr @pci_iomap(ptr noundef %pci_dev, i32 noundef 0, i32 noundef 4096) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %call12, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %4)
  %cmp22.not = icmp eq i32 %4, 4194304
  br i1 %cmp22.not, label %if.end40, label %do.body24

do.body24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_init_mmc, %if.then36)) #5
          to label %unmap_io [label %if.then36], !srcloc !129

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_init_mmc.__UNIQUE_ID_ddebug286, ptr noundef %dev1, ptr noundef nonnull @.str.16) #5
  br label %unmap_io

if.end40:                                         ; preds = %if.end18
  %call42 = tail call ptr @mmc_alloc_host(i32 noundef 20, ptr noundef %dev1) #5
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %pcmcia_dev, i32 0, i32 22
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call42, ptr %priv, align 8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %unmap_io

if.end48:                                         ; preds = %if.end40
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 70
  %iobase50 = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 1, i32 1
  %6 = ptrtoint ptr %iobase50 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %iobase50, align 4
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %private.i, align 4
  %pci_dev52 = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %pci_dev52 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pci_dev, ptr %pci_dev52, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdricoh_ops, ptr %ops, align 4
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 5
  %10 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 450000, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 6
  %11 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 24000000, ptr %f_max, align 8
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 8
  %12 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 16
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps, align 32
  %or = or i32 %14, 1
  store i32 %or, ptr %caps, align 32
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 20
  %15 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 524288, ptr %max_seg_size, align 16
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call42, i32 0, i32 24
  %16 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %max_blk_size, align 4
  %call53 = tail call fastcc i32 @sdricoh_reset(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end72, label %do.body56

do.body56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_init_mmc, %if.then68)) #5
          to label %free_host [label %if.then68], !srcloc !129

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_init_mmc.__UNIQUE_ID_ddebug287, ptr noundef %dev1, ptr noundef nonnull @.str.20) #5
  br label %free_host

if.end72:                                         ; preds = %if.end48
  %call73 = tail call i32 @mmc_add_host(ptr noundef nonnull %call42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body76, label %if.end72.free_host_crit_edge

if.end72.free_host_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_host

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_init_mmc, %if.then88)) #5
          to label %cleanup [label %if.then88], !srcloc !129

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_init_mmc.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.21) #5
  br label %cleanup

free_host:                                        ; preds = %if.end72.free_host_crit_edge, %if.then68, %do.body56
  %result.0 = phi i32 [ %call73, %if.end72.free_host_crit_edge ], [ -5, %if.then68 ], [ -5, %do.body56 ]
  tail call void @mmc_free_host(ptr noundef nonnull %call42) #5
  br label %unmap_io

unmap_io:                                         ; preds = %free_host, %do.end47, %if.then36, %do.body24
  %result.1 = phi i32 [ %result.0, %free_host ], [ -12, %do.end47 ], [ -19, %if.then36 ], [ -19, %do.body24 ]
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %call12) #5
  br label %cleanup

cleanup:                                          ; preds = %unmap_io, %if.then88, %do.body76, %do.end17, %if.then10, %do.body
  %retval.0 = phi i32 [ %result.1, %unmap_io ], [ -19, %do.end17 ], [ -19, %if.then10 ], [ 0, %if.then88 ], [ -19, %do.body ], [ 0, %do.body76 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdricoh_reset(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_reset.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_reset, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_reset.__UNIQUE_ID_ddebug275, ptr noundef %1, ptr noundef nonnull @.str.39) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.sdricoh_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777472) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 256) #5, !srcloc !133
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %7, i32 736
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp.not = icmp eq i32 %8, 256
  br i1 %cmp.not, label %if.end5, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %10, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 117440768) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %12, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 2) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 -536870912) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 402653184) #5, !srcloc !133
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -5, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdricoh_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_request.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_request, %if.then)) #5
          to label %do.body7 [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_request.__UNIQUE_ID_ddebug280, ptr noundef %5, ptr noundef nonnull @.str.23) #5
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_request.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_request, %if.then19)) #5
          to label %do.end22 [label %if.then19], !srcloc !129

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_request.__UNIQUE_ID_ddebug281, ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %7) #5
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 402653184) #5, !srcloc !133
  %tobool23.not = icmp eq ptr %3, null
  br i1 %tobool23.not, label %do.end22.if.end25_crit_edge, label %if.then24

do.end22.if.end25_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blksz, align 4
  %conv = trunc i32 %11 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv) #5
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %14, i32 550
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i195, i16 %12) #5, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %16, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 0) #5, !srcloc !133
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end22.if.end25_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %conv.i = trunc i32 %18 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 402653184) #5, !srcloc !133
  %app_cmd.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %app_cmd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = or i8 %conv.i, 64
  br label %if.end9.sink.split.i

if.else.i:                                        ; preds = %if.end25
  %conv5.i = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %conv5.i)
  %cmp.i = icmp eq i32 %conv5.i, 55
  br i1 %cmp.i, label %if.else.i.if.end9.sink.split.i_crit_edge, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.else.i.if.end9.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.sink.split.i

if.end9.sink.split.i:                             ; preds = %if.else.i.if.end9.sink.split.i_crit_edge, %if.then.i
  %.sink.i = phi i32 [ 0, %if.then.i ], [ 1, %if.else.i.if.end9.sink.split.i_crit_edge ]
  %opcode.0.ph.i = phi i8 [ %conv3.i, %if.then.i ], [ %conv.i, %if.else.i.if.end9.sink.split.i_crit_edge ]
  %23 = ptrtoint ptr %app_cmd.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %app_cmd.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end9.sink.split.i, %if.else.i.if.end9.i_crit_edge
  %opcode.0.i = phi i8 [ %conv.i, %if.else.i.if.end9.i_crit_edge ], [ %opcode.0.ph.i, %if.end9.sink.split.i ]
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %28, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %26) #5, !srcloc !133
  %conv10.i = zext i8 %opcode.0.i to i32
  %or11.i = or i32 %conv10.i, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #5
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %31, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %29) #5, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opcode.0.i)
  %tobool12.not.i = icmp eq i8 %opcode.0.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.sdricoh_mmc_cmd.exit_crit_edge, label %if.end14.i

if.end9.i.sdricoh_mmc_cmd.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_mmc_cmd.exit

if.end14.i:                                       ; preds = %if.end9.i
  %busy_timeout.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %busy_timeout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %busy_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool15.not.i = icmp eq i32 %33, 0
  %mul.i = mul i32 %33, 1000
  %spec.select.i = select i1 %tobool15.not.i, i32 1000000, i32 %mul.i
  %conv17.i = zext i32 %spec.select.i to i64
  %call.i = tail call i64 @ktime_get() #5
  %mul.i.i = mul nuw nsw i64 %conv17.i, 1000
  %add.i.i = add i64 %mul.i.i, %call.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 188) #5
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i8189.i = getelementptr i8, ptr %35, i32 540
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8189.i) #5, !srcloc !130
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i90.i = getelementptr i8, ptr %39, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90.i, i32 %36) #5, !srcloc !133
  %and.i91.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.i.not92.i = icmp eq i32 %and.i91.i, 0
  br i1 %tobool.i.not92.i, label %if.end32.lr.ph.i, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end32.lr.ph.i:                                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool33.not.i = icmp eq i32 %spec.select.i, 0
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then42.i.if.end32.i_crit_edge, %if.end32.lr.ph.i
  br i1 %tobool33.not.i, label %if.end32.i.if.then42.i_crit_edge, label %land.lhs.true.i

if.end32.i.if.then42.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %call34.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call34.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call34.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then38.i, label %land.lhs.true.i.if.then42.i_crit_edge

land.lhs.true.i.if.then42.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %41, i32 540
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #5, !srcloc !130
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  br label %for.end.i

if.then42.i:                                      ; preds = %land.lhs.true.i.if.then42.i_crit_edge, %if.end32.i.if.then42.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 9, i32 noundef 32, i32 noundef 2) #5
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %45, i32 540
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i) #5, !srcloc !130
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %49, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %46) #5, !srcloc !133
  %and.i.i = and i32 %47, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then42.i.if.end32.i_crit_edge, label %if.then42.i.for.end.i_crit_edge

if.then42.i.for.end.i_crit_edge:                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then42.i.if.end32.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

for.end.i:                                        ; preds = %if.then42.i.for.end.i_crit_edge, %if.then38.i, %if.end14.i.for.end.i_crit_edge
  %status.0.i = phi i32 [ %43, %if.then38.i ], [ %37, %if.end14.i.for.end.i_crit_edge ], [ %47, %if.then42.i.for.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %status.0.i) #5
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i85.i = getelementptr i8, ptr %52, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85.i, i32 %50) #5, !srcloc !133
  %53 = and i32 %status.0.i, 4194305
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %54 = icmp eq i32 %53, 1
  %spec.select75.i = select i1 %54, i32 0, i32 -110
  br label %sdricoh_mmc_cmd.exit

sdricoh_mmc_cmd.exit:                             ; preds = %for.end.i, %if.end9.i.sdricoh_mmc_cmd.exit_crit_edge
  %retval.0.i198 = phi i32 [ 0, %if.end9.i.sdricoh_mmc_cmd.exit_crit_edge ], [ %spec.select75.i, %for.end.i ]
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i198, ptr %error, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %sdricoh_mmc_cmd.exit.if.end50_crit_edge, label %if.then28

sdricoh_mmc_cmd.exit.if.end50_crit_edge:          ; preds = %sdricoh_mmc_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then28:                                        ; preds = %sdricoh_mmc_cmd.exit
  %and30 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iobase.i, align 4
  br i1 %tobool31.not, label %if.else, label %for.inc.3

for.inc.3:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i200 = getelementptr i8, ptr %59, i32 536
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #5, !srcloc !130
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %shl = shl i32 %61, 8
  %arrayidx = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 0
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl, ptr %arrayidx, align 4
  %63 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %64, i32 535
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i202) #5, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i203 = zext i8 %65 to i32
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  %or = or i32 %67, %conv.i203
  store i32 %or, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i200.1 = getelementptr i8, ptr %69, i32 532
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.1) #5, !srcloc !130
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %shl.1 = shl i32 %71, 8
  %arrayidx.1 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl.1, ptr %arrayidx.1, align 4
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i202.1 = getelementptr i8, ptr %74, i32 531
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i202.1) #5, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i203.1 = zext i8 %75 to i32
  %76 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.1, align 4
  %or.1 = or i32 %77, %conv.i203.1
  store i32 %or.1, ptr %arrayidx.1, align 4
  %78 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i200.2 = getelementptr i8, ptr %79, i32 528
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.2) #5, !srcloc !130
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %shl.2 = shl i32 %81, 8
  %arrayidx.2 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shl.2, ptr %arrayidx.2, align 4
  %83 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i202.2 = getelementptr i8, ptr %84, i32 527
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i202.2) #5, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %conv.i203.2 = zext i8 %85 to i32
  %86 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.2, align 4
  %or.2 = or i32 %87, %conv.i203.2
  store i32 %or.2, ptr %arrayidx.2, align 4
  %88 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i200.3 = getelementptr i8, ptr %89, i32 524
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.3) #5, !srcloc !130
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %shl.3 = shl i32 %91, 8
  %arrayidx.3 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  %92 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %shl.3, ptr %arrayidx.3, align 4
  br label %if.end50

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i205 = getelementptr i8, ptr %59, i32 524
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #5, !srcloc !130
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %resp47 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %resp47 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %resp47, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %for.inc.3, %sdricoh_mmc_cmd.exit.if.end50_crit_edge
  br i1 %tobool23.not, label %if.end50.if.end112_crit_edge, label %land.lhs.true

if.end50.if.end112_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

land.lhs.true:                                    ; preds = %if.end50
  %96 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp53 = icmp eq i32 %97, 0
  br i1 %cmp53, label %do.body56, label %land.lhs.true.if.end112_crit_edge

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

do.body56:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_request.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_request, %if.then68)) #5
          to label %do.end72 [label %if.then68], !srcloc !129

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %blksz69 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %98 = ptrtoint ptr %blksz69 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %blksz69, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %100 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %blocks, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %102 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sg_len, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %104 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_request.__UNIQUE_ID_ddebug282, ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %107) #5
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %109, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 503545731) #5, !srcloc !133
  %blocks74 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %110 = ptrtoint ptr %blocks74 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %blocks74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp75234.not = icmp eq i32 %111, 0
  br i1 %cmp75234.not, label %do.end72.for.end103_crit_edge, label %for.body77.lr.ph

do.end72.for.end103_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.body77.lr.ph:                                 ; preds = %do.end72
  %blksz78 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %sg79 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %flags85 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  br label %for.body77

for.body77:                                       ; preds = %for.inc101.for.body77_crit_edge, %for.body77.lr.ph
  %i.1235 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc102, %for.inc101.for.body77_crit_edge ]
  %112 = ptrtoint ptr %blksz78 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %blksz78, align 4
  %114 = ptrtoint ptr %sg79 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sg79, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  %and.i.i208 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i208)
  %tobool.i.not.i209 = icmp eq i32 %and.i.i208, 0
  br i1 %tobool.i.not.i209, label %sg_page.exit, label %do.body2.i, !prof !139

do.body2.i:                                       ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !140
  unreachable

sg_page.exit:                                     ; preds = %for.body77
  %and.i = and i32 %117, -4
  %118 = inttoptr i32 %and.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 44) #5
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %shr.i.i = lshr i32 %120, 30
  %121 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %sg_page.exit.if.then.i210_crit_edge [
    i32 2, label %sg_page.exit.if.else.i211_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_page.exit.if.else.i211_crit_edge:              ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i211

sg_page.exit.if.then.i210_crit_edge:              ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i210

is_highmem_idx.exit.i:                            ; preds = %sg_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %122 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %122)
  %cmp2.i.not.i = icmp eq i32 %122, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i211_crit_edge, label %is_highmem_idx.exit.i.if.then.i210_crit_edge

is_highmem_idx.exit.i.if.then.i210_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i210

is_highmem_idx.exit.i.if.else.i211_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i211

if.then.i210:                                     ; preds = %is_highmem_idx.exit.i.if.then.i210_crit_edge, %sg_page.exit.if.then.i210_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %118) #5
  br label %kmap.exit

if.else.i211:                                     ; preds = %is_highmem_idx.exit.i.if.else.i211_crit_edge, %sg_page.exit.if.else.i211_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %118) #5
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i211, %if.then.i210
  %addr.0.i = phi ptr [ %call6.i, %if.else.i211 ], [ %call5.i, %if.then.i210 ]
  %123 = ptrtoint ptr %sg79 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sg79, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %126
  %mul83 = mul i32 %113, %i.1235
  %add.ptr84 = getelementptr i8, ptr %add.ptr, i32 %mul83
  %127 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags85, align 4
  %and86 = and i32 %128, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool.not.i212 = icmp eq i32 %and86, 0
  br i1 %tobool.not.i212, label %if.else.i218, label %if.then.i214

if.then.i214:                                     ; preds = %kmap.exit
  %call.i213 = tail call fastcc i32 @sdricoh_query_status(ptr noundef %private.i, i32 noundef 16777216) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool1.not.i = icmp eq i32 %call.i213, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i214.sdricoh_blockio.exit_crit_edge

if.then.i214.sdricoh_blockio.exit_crit_edge:      ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

if.end.i:                                         ; preds = %if.then.i214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i216 = getelementptr i8, ptr %130, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i216, i32 402653184) #5, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool3.not72.i = icmp eq i32 %113, 0
  br i1 %tobool3.not72.i, label %if.end.i.sdricoh_blockio.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.sdricoh_blockio.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

while.cond.loopexit.i:                            ; preds = %while.body7.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %buf.addr.1.lcssa.i = phi ptr [ %buf.addr.074.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %incdec.ptr.i, %while.body7.i.while.cond.loopexit.i_crit_edge ]
  %tobool3.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not.i, label %while.cond.loopexit.i.sdricoh_blockio.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.loopexit.i.sdricoh_blockio.exit_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %buf.addr.074.i = phi ptr [ %buf.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %add.ptr84, %if.end.i.while.body.i_crit_edge ]
  %len.addr.073.i = phi i32 [ %sub.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %113, %if.end.i.while.body.i_crit_edge ]
  %131 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %132, i32 560
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  %134 = tail call i32 @llvm.smin.i32(i32 %len.addr.073.i, i32 4) #5
  %sub.i = sub i32 %len.addr.073.i, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool6.not68.i = icmp eq i32 %134, 0
  br i1 %tobool6.not68.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body7.preheader.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit.i

while.body7.preheader.i:                          ; preds = %while.body.i
  %135 = tail call i32 @llvm.bswap.i32(i32 %133) #5
  br label %while.body7.i

while.body7.i:                                    ; preds = %while.body7.i.while.body7.i_crit_edge, %while.body7.preheader.i
  %buf.addr.171.i = phi ptr [ %incdec.ptr.i, %while.body7.i.while.body7.i_crit_edge ], [ %buf.addr.074.i, %while.body7.preheader.i ]
  %data.070.i = phi i32 [ %shr.i, %while.body7.i.while.body7.i_crit_edge ], [ %135, %while.body7.preheader.i ]
  %size.069.i = phi i32 [ %dec.i, %while.body7.i.while.body7.i_crit_edge ], [ %134, %while.body7.preheader.i ]
  %conv.i217 = trunc i32 %data.070.i to i8
  %136 = ptrtoint ptr %buf.addr.171.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv.i217, ptr %buf.addr.171.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.171.i, i32 1
  %shr.i = lshr i32 %data.070.i, 8
  %dec.i = add i32 %size.069.i, -1
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %while.body7.i.while.cond.loopexit.i_crit_edge, label %while.body7.i.while.body7.i_crit_edge

while.body7.i.while.body7.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body7.i

while.body7.i.while.cond.loopexit.i_crit_edge:    ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit.i

if.else.i218:                                     ; preds = %kmap.exit
  %call9.i = tail call fastcc i32 @sdricoh_query_status(ptr noundef %private.i, i32 noundef 33554432) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.else.i218.sdricoh_blockio.exit_crit_edge

if.else.i218.sdricoh_blockio.exit_crit_edge:      ; preds = %if.else.i218
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

if.end12.i:                                       ; preds = %if.else.i218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %138, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 402653184) #5, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool14.not81.i = icmp eq i32 %113, 0
  br i1 %tobool14.not81.i, label %if.end12.i.sdricoh_blockio.exit_crit_edge, label %if.end12.i.while.body15.i_crit_edge

if.end12.i.while.body15.i_crit_edge:              ; preds = %if.end12.i
  br label %while.body15.i

if.end12.i.sdricoh_blockio.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

while.body15.i:                                   ; preds = %while.end31.i.while.body15.i_crit_edge, %if.end12.i.while.body15.i_crit_edge
  %buf.addr.284.i = phi ptr [ %buf.addr.3.lcssa.i, %while.end31.i.while.body15.i_crit_edge ], [ %add.ptr84, %if.end12.i.while.body15.i_crit_edge ]
  %data.183.i = phi i32 [ %data.2.lcssa.i, %while.end31.i.while.body15.i_crit_edge ], [ 0, %if.end12.i.while.body15.i_crit_edge ]
  %len.addr.182.i = phi i32 [ %sub23.i, %while.end31.i.while.body15.i_crit_edge ], [ %113, %if.end12.i.while.body15.i_crit_edge ]
  %139 = tail call i32 @llvm.smin.i32(i32 %len.addr.182.i, i32 4) #5
  %sub23.i = sub i32 %len.addr.182.i, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool25.not75.i = icmp eq i32 %139, 0
  br i1 %tobool25.not75.i, label %while.body15.i.while.end31.i_crit_edge, label %while.body15.i.while.body26.i_crit_edge

while.body15.i.while.body26.i_crit_edge:          ; preds = %while.body15.i
  br label %while.body26.i

while.body15.i.while.end31.i_crit_edge:           ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end31.i

while.body26.i:                                   ; preds = %while.body26.i.while.body26.i_crit_edge, %while.body15.i.while.body26.i_crit_edge
  %buf.addr.378.i = phi ptr [ %incdec.ptr29.i, %while.body26.i.while.body26.i_crit_edge ], [ %buf.addr.284.i, %while.body15.i.while.body26.i_crit_edge ]
  %data.277.i = phi i32 [ %or.i, %while.body26.i.while.body26.i_crit_edge ], [ %data.183.i, %while.body15.i.while.body26.i_crit_edge ]
  %size.176.i = phi i32 [ %dec30.i, %while.body26.i.while.body26.i_crit_edge ], [ %139, %while.body15.i.while.body26.i_crit_edge ]
  %140 = ptrtoint ptr %buf.addr.378.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %buf.addr.378.i, align 1
  %conv28.i = zext i8 %141 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %conv28.i, i32 %data.277.i, i32 24) #5
  %incdec.ptr29.i = getelementptr i8, ptr %buf.addr.378.i, i32 1
  %dec30.i = add i32 %size.176.i, -1
  %tobool25.not.i = icmp eq i32 %dec30.i, 0
  br i1 %tobool25.not.i, label %while.end31.loopexit.i, label %while.body26.i.while.body26.i_crit_edge

while.body26.i.while.body26.i_crit_edge:          ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26.i

while.end31.loopexit.i:                           ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep.i = getelementptr i8, ptr %buf.addr.284.i, i32 %139
  br label %while.end31.i

while.end31.i:                                    ; preds = %while.end31.loopexit.i, %while.body15.i.while.end31.i_crit_edge
  %data.2.lcssa.i = phi i32 [ %data.183.i, %while.body15.i.while.end31.i_crit_edge ], [ %or.i, %while.end31.loopexit.i ]
  %buf.addr.3.lcssa.i = phi ptr [ %buf.addr.284.i, %while.body15.i.while.end31.i_crit_edge ], [ %uglygep.i, %while.end31.loopexit.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %142 = tail call i32 @llvm.bswap.i32(i32 %data.2.lcssa.i) #5
  %143 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %144, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %142) #5, !srcloc !133
  %tobool14.not.i = icmp eq i32 %sub23.i, 0
  br i1 %tobool14.not.i, label %while.end31.i.sdricoh_blockio.exit_crit_edge, label %while.end31.i.while.body15.i_crit_edge

while.end31.i.while.body15.i_crit_edge:           ; preds = %while.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15.i

while.end31.i.sdricoh_blockio.exit_crit_edge:     ; preds = %while.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sdricoh_blockio.exit

sdricoh_blockio.exit:                             ; preds = %while.end31.i.sdricoh_blockio.exit_crit_edge, %if.end12.i.sdricoh_blockio.exit_crit_edge, %if.else.i218.sdricoh_blockio.exit_crit_edge, %while.cond.loopexit.i.sdricoh_blockio.exit_crit_edge, %if.end.i.sdricoh_blockio.exit_crit_edge, %if.then.i214.sdricoh_blockio.exit_crit_edge
  %tobool88.not = phi i1 [ false, %if.then.i214.sdricoh_blockio.exit_crit_edge ], [ true, %if.end.i.sdricoh_blockio.exit_crit_edge ], [ false, %if.else.i218.sdricoh_blockio.exit_crit_edge ], [ true, %if.end12.i.sdricoh_blockio.exit_crit_edge ], [ true, %while.end31.i.sdricoh_blockio.exit_crit_edge ], [ true, %while.cond.loopexit.i.sdricoh_blockio.exit_crit_edge ]
  %retval.0.i219 = phi i32 [ -110, %if.then.i214.sdricoh_blockio.exit_crit_edge ], [ 0, %if.end.i.sdricoh_blockio.exit_crit_edge ], [ -110, %if.else.i218.sdricoh_blockio.exit_crit_edge ], [ 0, %if.end12.i.sdricoh_blockio.exit_crit_edge ], [ 0, %while.end31.i.sdricoh_blockio.exit_crit_edge ], [ 0, %while.cond.loopexit.i.sdricoh_blockio.exit_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 55) #5
  %145 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %118, align 4
  %shr.i.i220 = lshr i32 %146, 30
  %147 = zext i32 %shr.i.i220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i220, label %sdricoh_blockio.exit.kunmap.exit_crit_edge [
    i32 2, label %sdricoh_blockio.exit.if.end.i223_crit_edge
    i32 3, label %is_highmem_idx.exit.i222
  ]

sdricoh_blockio.exit.if.end.i223_crit_edge:       ; preds = %sdricoh_blockio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i223

sdricoh_blockio.exit.kunmap.exit_crit_edge:       ; preds = %sdricoh_blockio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i222:                         ; preds = %sdricoh_blockio.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %148 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp2.i.not.i221 = icmp eq i32 %148, 2
  br i1 %cmp2.i.not.i221, label %is_highmem_idx.exit.i222.if.end.i223_crit_edge, label %is_highmem_idx.exit.i222.kunmap.exit_crit_edge

is_highmem_idx.exit.i222.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i222.if.end.i223_crit_edge:   ; preds = %is_highmem_idx.exit.i222
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i223

if.end.i223:                                      ; preds = %is_highmem_idx.exit.i222.if.end.i223_crit_edge, %sdricoh_blockio.exit.if.end.i223_crit_edge
  tail call void @kunmap_high(ptr noundef %118) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i223, %is_highmem_idx.exit.i222.kunmap.exit_crit_edge, %sdricoh_blockio.exit.kunmap.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef %118) #5
  br i1 %tobool88.not, label %for.inc101, label %cleanup

cleanup:                                          ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %150) #8
  %151 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %retval.0.i219, ptr %error, align 4
  br label %for.end103

for.inc101:                                       ; preds = %kunmap.exit
  %152 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bytes_xfered, align 4
  %add96 = add i32 %153, %113
  store i32 %add96, ptr %bytes_xfered, align 4
  %inc102 = add nuw i32 %i.1235, 1
  %154 = ptrtoint ptr %blocks74 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %blocks74, align 4
  %cmp75 = icmp ult i32 %inc102, %155
  br i1 %cmp75, label %for.inc101.for.body77_crit_edge, label %for.inc101.for.end103_crit_edge

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end103

for.inc101.for.body77_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body77

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %cleanup, %do.end72.for.end103_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %157, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 16777216) #5, !srcloc !133
  %call104 = tail call fastcc i32 @sdricoh_query_status(ptr noundef %private.i, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %for.end103.if.end112_crit_edge, label %do.end109

for.end103.if.end112_crit_edge:                   ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

do.end109:                                        ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #8
  %158 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -22, ptr %error, align 4
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %for.end103.if.end112_crit_edge, %land.lhs.true.if.end112_crit_edge, %if.end50.if.end112_crit_edge
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_request.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_request, %if.then125)) #5
          to label %do.end128 [label %if.then125], !srcloc !129

if.then125:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_request.__UNIQUE_ID_ddebug283, ptr noundef %5, ptr noundef nonnull @.str.23) #5
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %if.end112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdricoh_set_ios(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdricoh_set_ios.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdricoh_set_ios, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdricoh_set_ios.__UNIQUE_ID_ddebug284, ptr noundef %1, ptr noundef nonnull @.str.37) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %3, label %do.end.if.end18_crit_edge [
    i8 2, label %if.then5
    i8 1, label %if.then16
  ]

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then5:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -524288000) #5, !srcloc !133
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %7 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7 = icmp eq i8 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 548
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 196610) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %12, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -532676608) #5, !srcloc !133
  br label %if.end18

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 1073938434) #5, !srcloc !133
  br label %if.end18

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %iobase.i33 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %13 = ptrtoint ptr %iobase.i33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %14, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 537067522) #5, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %iobase.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i33, align 4
  %add.ptr.i36 = getelementptr i8, ptr %16, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 -536870912) #5, !srcloc !133
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else, %if.then9, %do.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdricoh_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !130
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %2) #5, !srcloc !133
  %6 = load i32, ptr @switchlocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %and = lshr i32 %3, 7
  %and.lobit = and i32 %and, 1
  %7 = xor i32 %and.lobit, 1
  %and3 = and i32 %3, 128
  %retval.0 = select i1 %tobool.not, i32 %and3, i32 %7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdricoh_query_status(ptr nocapture noundef readonly %host, i32 noundef %wanted) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 143) #5
  %iobase.i = getelementptr inbounds %struct.sdricoh_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %3, i32 540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #5, !srcloc !130
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %7, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %4) #5, !srcloc !133
  %and.i63 = and i32 %5, %wanted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.i.not64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.i.not64, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then20.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then20

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %9, i32 540
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #5, !srcloc !130
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  br label %for.end

if.then20:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 9, i32 noundef 32, i32 noundef 2) #5
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 540
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !130
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #5, !srcloc !133
  %and.i = and i32 %15, %wanted
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then20.land.lhs.true_crit_edge, label %if.then20.for.end_crit_edge

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then20.land.lhs.true_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %if.then20.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %status.0 = phi i32 [ %11, %if.then16 ], [ %5, %entry.for.end_crit_edge ], [ %15, %if.then20.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %status.0) #5
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %20, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %18) #5, !srcloc !133
  %and.i55 = and i32 %status.0, %wanted
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.i56.not = icmp eq i32 %and.i55, 0
  br i1 %tobool.i56.not, label %for.end.cleanup.sink.split_crit_edge, label %if.end28

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end28:                                         ; preds = %for.end
  %and = and i32 %status.0, 8323072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end28.cleanup.sink.split_crit_edge

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end28.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.31, %for.end.cleanup.sink.split_crit_edge ], [ @.str.34, %if.end28.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %for.end.cleanup.sink.split_crit_edge ], [ -22, %if.end28.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.34.sink, i32 noundef %wanted) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_sdricoh_cs__292_527_sdricoh_driver_init6, !1, !"__initcall__kmod_sdricoh_cs__292_527_sdricoh_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 527, i32 1}
!2 = !{ptr @__exitcall_sdricoh_driver_exit, !1, !"__exitcall_sdricoh_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_switchlocked, !4, !"__param_switchlocked", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 529, i32 1}
!5 = !{ptr @__UNIQUE_ID_switchlockedtype293, !4, !"__UNIQUE_ID_switchlockedtype293", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author294, !7, !"__UNIQUE_ID_author294", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 531, i32 1}
!8 = !{ptr @__UNIQUE_ID_description295, !9, !"__UNIQUE_ID_description295", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 532, i32 1}
!10 = !{ptr @__UNIQUE_ID_file296, !11, !"__UNIQUE_ID_file296", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 533, i32 1}
!12 = !{ptr @__UNIQUE_ID_license297, !11, !"__UNIQUE_ID_license297", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_switchlocked298, !14, !"__UNIQUE_ID_switchlocked298", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 535, i32 1}
!15 = !{ptr @switchlocked, !16, !"switchlocked", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 30, i32 21}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 520, i32 10}
!19 = !{ptr @sdricoh_driver, !20, !"sdricoh_driver", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 519, i32 29}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 463, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sdricoh_pcmcia_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @sdricoh_pcmcia_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 473, i32 4}
!31 = !{ptr @sdricoh_pcmcia_probe._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sdricoh_pcmcia_probe._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 478, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sdricoh_pcmcia_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sdricoh_pcmcia_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 397, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug285, !39, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 403, i32 3}
!44 = !{ptr @sdricoh_init_mmc._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sdricoh_init_mmc._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 408, i32 3}
!48 = !{ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug286, !47, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 416, i32 3}
!51 = !{ptr @sdricoh_init_mmc._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sdricoh_init_mmc._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 440, i32 3}
!55 = !{ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug287, !54, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 448, i32 3}
!58 = !{ptr @sdricoh_init_mmc.__UNIQUE_ID_ddebug288, !57, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!59 = !{ptr @sdricoh_ops, !60, !"sdricoh_ops", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 379, i32 34}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 270, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sdricoh_request.__UNIQUE_ID_ddebug280, !62, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 271, i32 2}
!67 = !{ptr @sdricoh_request.__UNIQUE_ID_ddebug281, !66, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 302, i32 3}
!70 = !{ptr @sdricoh_request.__UNIQUE_ID_ddebug282, !69, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 322, i32 5}
!73 = !{ptr @sdricoh_request._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sdricoh_request._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 333, i32 4}
!77 = !{ptr @sdricoh_request._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sdricoh_request._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @sdricoh_request.__UNIQUE_ID_ddebug283, !80, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 340, i32 2}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 145, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sdricoh_query_status._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @sdricoh_query_status._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 151, i32 3}
!90 = !{ptr @sdricoh_query_status._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sdricoh_query_status._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 346, i32 2}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sdricoh_set_ios.__UNIQUE_ID_ddebug284, !93, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 202, i32 2}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sdricoh_reset.__UNIQUE_ID_ddebug275, !97, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 486, i32 2}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sdricoh_pcmcia_detach.__UNIQUE_ID_ddebug289, !101, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 503, i32 2}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sdricoh_pcmcia_suspend.__UNIQUE_ID_ddebug290, !105, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 510, i32 2}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sdricoh_pcmcia_resume.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 68, i32 2}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 70, i32 2}
!117 = !{ptr @pcmcia_ids, !118, !"pcmcia_ids", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdricoh_cs.c", i32 66, i32 38}
!119 = !{ptr @__param_str_switchlocked, !4, !"__param_str_switchlocked", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148768232, i64 2148768237, i64 2148768250, i64 2148768294, i64 2148768328, i64 2148768349}
!130 = !{i64 5898337}
!131 = !{i64 2154983618}
!132 = !{i64 2154945342}
!133 = !{i64 5897919}
!134 = !{i64 2154943415}
!135 = !{i64 2154949653}
!136 = !{i64 5897299}
!137 = !{i64 5898117}
!138 = !{i64 2154951780}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2154483214, i64 2154483706, i64 2154483251, i64 2154483307, i64 2154483341, i64 2154483365, i64 2154483406, i64 2154483427, i64 2154483455, i64 2154483489}
