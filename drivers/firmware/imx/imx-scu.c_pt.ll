; ModuleID = '/llk/IR_all_yes/drivers/firmware/imx/imx-scu.c_pt.bc'
source_filename = "../drivers/firmware/imx/imx-scu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+imx_scu_get_handle\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_get_handle\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_get_handle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_get_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_get_handle\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_get_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+imx_scu_call_rpc\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_scu_call_rpc\09\09\09\09"
module asm "\09.long\09__crc_imx_scu_call_rpc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_scu_call_rpc:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_scu_call_rpc\22\09\09\09\09\09"
module asm "__kstrtabns_imx_scu_call_rpc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.imx_sc_ipc = type { [8 x %struct.imx_sc_chan], ptr, %struct.mutex, %struct.completion, i8, ptr, i8, i8 }
%struct.imx_sc_chan = type { ptr, %struct.mbox_client, ptr, i32, %struct.completion }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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

@imx_sc_ipc_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_imx_scu_get_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_get_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_get_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_get_handle to i32), ptr @__kstrtab_imx_scu_get_handle, ptr @__kstrtabns_imx_scu_get_handle }, section "___ksymtab+imx_scu_get_handle", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/firmware/imx/imx-scu.c\00", [33 x i8] zeroinitializer }, align 32
@imx_scu_call_rpc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RPC send msg failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_scu_call_rpc\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_scu_call_rpc._entry_ptr = internal global ptr @imx_scu_call_rpc._entry, section ".printk_index", align 4
@imx_scu_call_rpc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RPC send msg timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@imx_scu_call_rpc._entry_ptr.7 = internal global ptr @imx_scu_call_rpc._entry.5, section ".printk_index", align 4
@imx_scu_call_rpc.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str, ptr @.str.9, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_scu\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RPC SVC done\0A\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_imx_scu_call_rpc = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_scu_call_rpc = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_scu_call_rpc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_scu_call_rpc to i32), ptr @__kstrtab_imx_scu_call_rpc, ptr @__kstrtabns_imx_scu_call_rpc }, section "___ksymtab+imx_scu_call_rpc", align 4
@__initcall__kmod_imx_scu__192_357_imx_scu_driver_init6 = internal global ptr @imx_scu_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author193 = internal constant [51 x i8] c"imx_scu.author=Dong Aisheng <aisheng.dong@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [53 x i8] c"imx_scu.description=IMX SCU firmware protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [42 x i8] c"imx_scu.file=drivers/firmware/imx/imx-scu\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [23 x i8] c"imx_scu.license=GPL v2\00", section ".modinfo", align 1
@imx_scu_ipc_write.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_scu_ipc_write\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RPC SVC %u FUNC %u SIZE %u\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_sc_linux_errmap = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 -13, i32 -13, i32 -34, i32 -17, i32 -1, i32 -32, i32 -16, i32 -5], [48 x i8] zeroinitializer }, align 32
@imx_scu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_scu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_scu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-scu\00", [24 x i8] zeroinitializer }, align 32
@imx_scu_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx8-mu-scu\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tx%d\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rx%d\00", [27 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request mbox chan %s ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_scu_probe\00", [18 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry_ptr = internal global ptr @imx_scu_probe._entry, section ".printk_index", align 4
@imx_scu_probe.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.19, ptr @.str, ptr @.str.20, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request mbox chan %s\0A\00", [42 x i8] zeroinitializer }, align 32
@imx_scu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sc_ipc->lock\00", [18 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str, i32 333, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize SoC info: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry_ptr.25 = internal global ptr @imx_scu_probe._entry.22, section ".printk_index", align 4
@imx_scu_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str, i32 338, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable general irq channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry_ptr.28 = internal global ptr @imx_scu_probe._entry.26, section ".printk_index", align 4
@imx_scu_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str, i32 340, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NXP i.MX SCU Initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_scu_probe._entry_ptr.32 = internal global ptr @imx_scu_probe._entry.29, section ".printk_index", align 4
@imx_scu_rx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 122, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unexpected rx idx %d 0x%08x, ignore!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_scu_rx_callback\00", [44 x i8] zeroinitializer }, align 32
@imx_scu_rx_callback._entry_ptr = internal global ptr @imx_scu_rx_callback._entry, section ".printk_index", align 4
@imx_scu_rx_callback.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str, ptr @.str.35, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msg rx size %u\0A\00", [16 x i8] zeroinitializer }, align 32
@imx_scu_rx_callback._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str, i32 145, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RPC does not support receiving over 4 words: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@imx_scu_rx_callback._entry_ptr.38 = internal global ptr @imx_scu_rx_callback._entry.36, section ".printk_index", align 4
@imx_scu_rx_callback.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.34, ptr @.str, ptr @.str.39, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mu %u msg %u 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"imx_sc_ipc_handle\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 82, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 209, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 223, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 230, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 254, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 171, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"imx_sc_linux_errmap\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 67, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"imx_scu_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 350, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 352, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"imx_scu_match\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 345, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 276, i32 54 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 277, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 281, i32 54 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 286, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 288, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 314, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 320, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 326, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 333, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 337, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 340, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 121, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 142, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 144, i32 4 }
@___asan_gen_.168 = private constant [34 x i8] c"../drivers/firmware/imx/imx-scu.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 151, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 87, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__initcall__kmod_imx_scu__192_357_imx_scu_driver_init6, ptr @__ksymtab_imx_scu_call_rpc, ptr @__ksymtab_imx_scu_get_handle, ptr @imx_scu_call_rpc._entry, ptr @imx_scu_call_rpc._entry.5, ptr @imx_scu_call_rpc._entry_ptr, ptr @imx_scu_call_rpc._entry_ptr.7, ptr @imx_scu_probe._entry, ptr @imx_scu_probe._entry.22, ptr @imx_scu_probe._entry.26, ptr @imx_scu_probe._entry.29, ptr @imx_scu_probe._entry_ptr, ptr @imx_scu_probe._entry_ptr.25, ptr @imx_scu_probe._entry_ptr.28, ptr @imx_scu_probe._entry_ptr.32, ptr @imx_scu_rx_callback._entry, ptr @imx_scu_rx_callback._entry.36, ptr @imx_scu_rx_callback._entry_ptr, ptr @imx_scu_rx_callback._entry_ptr.38, ptr @imx_sc_ipc_handle, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @imx_sc_linux_errmap, ptr @imx_scu_driver, ptr @.str.12, ptr @imx_scu_match, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @imx_scu_probe.__key, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @init_completion.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_ipc_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_call_rpc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_call_rpc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_linux_errmap to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_rx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_rx_callback._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @imx_scu_get_handle(ptr nocapture noundef writeonly %ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @imx_sc_ipc_handle, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %ipc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %ipc, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -517, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_call_rpc(ptr noundef %sc_ipc, ptr noundef %msg, i1 noundef zeroext %have_resp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sc_ipc, null
  %tobool1.not = icmp eq ptr %msg, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %done = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 3
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done, align 4
  br i1 %have_resp, label %if.end28, label %if.end28.thread

if.end28:                                         ; preds = %if.end24
  %msg27 = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 5
  %1 = ptrtoint ptr %msg27 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %msg, ptr %msg27, align 4
  %svc = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %svc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %svc, align 1
  %func = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 3
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %func, align 1
  %count = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 7
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %count, align 1
  %call = tail call fastcc i32 @imx_scu_ipc_write(ptr noundef nonnull %sc_ipc, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end28.do.end32_crit_edge, label %if.then35

if.end28.do.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.end28.thread:                                  ; preds = %if.end24
  %count109 = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 7
  %7 = ptrtoint ptr %count109 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %count109, align 1
  %call110 = tail call fastcc i32 @imx_scu_ipc_write(ptr noundef nonnull %sc_ipc, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end28.thread.do.end32_crit_edge, label %if.end28.thread.out_crit_edge

if.end28.thread.out_crit_edge:                    ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end28.thread.do.end32_crit_edge:               ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.end32:                                         ; preds = %if.end28.thread.do.end32_crit_edge, %if.end28.do.end32_crit_edge
  %call114 = phi i32 [ %call110, %if.end28.thread.do.end32_crit_edge ], [ %call, %if.end28.do.end32_crit_edge ]
  %dev = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %call114) #9
  br label %out

if.then35:                                        ; preds = %if.end28
  %call38 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %dev44 = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 1
  %10 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #9
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end46:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %func, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp49 = icmp eq i8 %3, 7
  %14 = and i8 %5, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %14)
  %switch = icmp eq i8 %14, 18
  %or.cond = select i1 %cmp49, i1 %switch, i1 false
  %spec.select105 = select i1 %or.cond, i32 0, i32 %conv
  br label %out

out:                                              ; preds = %if.end46, %do.end32, %if.end28.thread.out_crit_edge
  %ret.0 = phi i32 [ %call114, %do.end32 ], [ %spec.select105, %if.end46 ], [ %call110, %if.end28.thread.out_crit_edge ]
  %msg60 = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 5
  %15 = ptrtoint ptr %msg60 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %msg60, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_scu_call_rpc.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_scu_call_rpc, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !107

if.then73:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %dev74 = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 1
  %16 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_scu_call_rpc.__UNIQUE_ID_ddebug190, ptr noundef %17, ptr noundef nonnull @.str.9) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %ret.0)
  %18 = icmp ult i32 %ret.0, 12
  br i1 %18, label %if.then.i, label %do.end77.cleanup_crit_edge

do.end77.cleanup_crit_edge:                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [12 x i32], ptr @imx_sc_linux_errmap, i32 0, i32 %ret.0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end77.cleanup_crit_edge, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end43 ], [ %20, %if.then.i ], [ -5, %do.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_scu_ipc_write(ptr noundef %sc_ipc, ptr noundef %msg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %msg, i32 1
  %0 = ptrtoint ptr %hdr.sroa.4.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %hdr.sroa.4.0.copyload = load i8, ptr %hdr.sroa.4.0..sroa_idx, align 1
  %hdr.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %msg, i32 2
  %1 = ptrtoint ptr %hdr.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %hdr.sroa.8.0.copyload = load i8, ptr %hdr.sroa.8.0..sroa_idx, align 1
  %hdr.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %msg, i32 3
  %2 = ptrtoint ptr %hdr.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %hdr.sroa.10.0.copyload = load i8, ptr %hdr.sroa.10.0..sroa_idx, align 1
  %conv = zext i8 %hdr.sroa.4.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %hdr.sroa.4.0.copyload)
  %cmp = icmp ugt i8 %hdr.sroa.4.0.copyload, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_scu_ipc_write.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_scu_ipc_write, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !107

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %conv6 = zext i8 %hdr.sroa.8.0.copyload to i32
  %conv7 = zext i8 %hdr.sroa.10.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_scu_ipc_write.__UNIQUE_ID_ddebug189, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %fast_ipc = getelementptr inbounds %struct.imx_sc_ipc, ptr %sc_ipc, i32 0, i32 4
  %5 = ptrtoint ptr %fast_ipc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fast_ipc, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool11.not, i32 %conv, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp1546.not = icmp eq i32 %spec.select, 0
  br i1 %cmp1546.not, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end21
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.bodythread-pre-split

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.bodythread-pre-split:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %fast_ipc to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %fast_ipc, align 4
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %do.end.for.body_crit_edge
  %8 = phi i8 [ %.pr, %for.bodythread-pre-split ], [ %6, %do.end.for.body_crit_edge ]
  %i.047 = phi i32 [ %inc, %for.bodythread-pre-split ], [ 0, %do.end.for.body_crit_edge ]
  %rem = and i32 %i.047, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %if.then19, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tx_done = getelementptr [8 x %struct.imx_sc_chan], ptr %sc_ipc, i32 0, i32 %rem, i32 4
  tail call void @wait_for_completion(ptr noundef %tx_done) #6
  %9 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_done, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body.if.end21_crit_edge
  %ch = getelementptr [8 x %struct.imx_sc_chan], ptr %sc_ipc, i32 0, i32 %rem, i32 2
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ch, align 4
  %arrayidx22 = getelementptr i32, ptr %msg, i32 %i.047
  %call23 = tail call i32 @mbox_send_message(ptr noundef %11, ptr noundef %arrayidx22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.cleanup_crit_edge, label %for.cond

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_scu_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_scu_probe(ptr noundef %pdev) #1 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #6
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 932, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i135 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool4.not = icmp eq i32 %call.i135, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 4
  %call7 = call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8 = icmp ne i32 %call7, 0
  %fast_ipc = getelementptr inbounds %struct.imx_sc_ipc, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool8 to i8
  %5 = ptrtoint ptr %fast_ipc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %fast_ipc, align 4
  %cond = select i1 %tobool8, i32 2, i32 8
  %div134 = lshr exact i32 %cond, 1
  %6 = add nsw i32 %div134, -1
  br label %for.body

for.body:                                         ; preds = %do.end49.for.body_crit_edge, %if.end6
  %i.0140 = phi i32 [ 0, %if.end6 ], [ %inc, %do.end49.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0140, i32 %div134)
  %cmp11 = icmp ult i32 %i.0140, %div134
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.16, i32 noundef %i.0140) #6
  br label %if.end16

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nsw i32 %i.0140, %div134
  %call15 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, i32 noundef %sub) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %chan_name.0 = phi ptr [ %call13, %if.then12 ], [ %call15, %if.else ]
  %tobool17.not = icmp eq ptr %chan_name.0, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %arrayidx = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140
  %cl20 = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 1
  %7 = ptrtoint ptr %cl20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %cl20, align 4
  %tx_block = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 1, i32 1
  %8 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 1, i32 3
  %9 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %knows_txdone, align 4
  %rx_callback = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 1, i32 4
  %10 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @imx_scu_rx_callback, ptr %rx_callback, align 4
  %11 = ptrtoint ptr %fast_ipc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fast_ipc, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.then24, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %tx_done = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 1, i32 6
  %13 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @imx_scu_tx_done, ptr %tx_done, align 4
  %tx_done25 = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 4
  %14 = ptrtoint ptr %tx_done25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_done25, align 4
  %wait.i = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #6
  call void @complete(ptr noundef %tx_done25) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %arrayidx, align 4
  %rem = and i32 %i.0140, %6
  %idx = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 3
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem, ptr %idx, align 4
  %call30 = call ptr @mbox_request_channel_byname(ptr noundef %cl20, ptr noundef nonnull %chan_name.0) #6
  %ch = getelementptr [8 x %struct.imx_sc_chan], ptr %call.i, i32 0, i32 %i.0140, i32 2
  %17 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call30, ptr %ch, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %do.body40

if.then33:                                        ; preds = %if.end27
  %18 = ptrtoint ptr %call30 to i32
  %cmp36.not = icmp eq ptr %call30, inttoptr (i32 -517 to ptr)
  br i1 %cmp36.not, label %if.then33.if.end38_crit_edge, label %do.end

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull %chan_name.0, i32 noundef %18) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end, %if.then33.if.end38_crit_edge
  call void @kfree(ptr noundef nonnull %chan_name.0) #6
  br label %cleanup

do.body40:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_scu_probe.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_scu_probe, %if.then46)) #6
          to label %do.end49 [label %if.then46], !srcloc !107

if.then46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_scu_probe.__UNIQUE_ID_ddebug191, ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull %chan_name.0) #6
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %do.body40
  call void @kfree(ptr noundef nonnull %chan_name.0) #6
  %inc = add nuw nsw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %inc, %cond
  br i1 %exitcond.not, label %for.end, label %do.end49.for.body_crit_edge

do.end49.for.body_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.end49
  %dev50 = getelementptr inbounds %struct.imx_sc_ipc, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %dev50, align 4
  %lock = getelementptr inbounds %struct.imx_sc_ipc, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @imx_scu_probe.__key) #6
  %done = getelementptr inbounds %struct.imx_sc_ipc, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %done, align 4
  %wait.i136 = getelementptr inbounds %struct.imx_sc_ipc, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i136, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #6
  store ptr %call.i, ptr @imx_sc_ipc_handle, align 4
  %call54 = call i32 @imx_scu_soc_init(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.end.if.end60_crit_edge, label %do.end59

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call54) #9
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %for.end.if.end60_crit_edge
  %call61 = call i32 @imx_scu_enable_general_irq_channel(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end60.do.end70_crit_edge, label %do.end66

if.end60.do.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end70

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call61) #9
  br label %do.end70

do.end70:                                         ; preds = %do.end66, %if.end60.do.end70_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  %call71 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.end38, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end38 ], [ %call71, %do.end70 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i135, %if.end.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_scu_rx_callback(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %c, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %msg2 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %idx = getelementptr i8, ptr %c, i32 32
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fast_ipc = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %fast_ipc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fast_ipc, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size, align 1
  %rx_size = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %rx_size to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %rx_size, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %3, align 4
  %18 = load i8, ptr %rx_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp124 = icmp ugt i8 %18, 1
  br i1 %cmp124, label %if.then4.for.body_crit_edge, label %if.then4.for.end_crit_edge

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then4.for.body_crit_edge
  %msg.pn126 = phi ptr [ %data.0, %for.body.for.body_crit_edge ], [ %msg, %if.then4.for.body_crit_edge ]
  %i.0125 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.then4.for.body_crit_edge ]
  %data.0 = getelementptr i32, ptr %msg.pn126, i32 1
  %19 = ptrtoint ptr %data.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.0, align 4
  %21 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg2, align 4
  %arrayidx10 = getelementptr i32, ptr %22, i32 %i.0125
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.0125, 1
  %24 = ptrtoint ptr %rx_size to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rx_size, align 4
  %conv = zext i8 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then4.for.end_crit_edge
  %done = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %idx12 = getelementptr i8, ptr %c, i32 32
  %26 = ptrtoint ptr %idx12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13 = icmp eq i32 %27, 0
  br i1 %cmp13, label %if.then15, label %if.end11.if.end42_crit_edge

if.end11.if.end42_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then15:                                        ; preds = %if.end11
  %size16 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg, i32 0, i32 1
  %28 = ptrtoint ptr %size16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %size16, align 1
  %rx_size17 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %rx_size17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %rx_size17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_scu_rx_callback.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_scu_rx_callback, %if.then23)) #6
          to label %do.end29 [label %if.then23], !srcloc !107

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev24, align 4
  %33 = ptrtoint ptr %rx_size17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_size17, align 4
  %conv26 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_scu_rx_callback.__UNIQUE_ID_ddebug187, ptr noundef %32, ptr noundef nonnull @.str.35, i32 noundef %conv26) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %if.then15
  %35 = ptrtoint ptr %rx_size17 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_size17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %36)
  %cmp32 = icmp ugt i8 %36, 4
  br i1 %cmp32, label %do.end37, label %do.end29.if.end42_crit_edge

do.end29.if.end42_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end37:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  %conv31 = zext i8 %36 to i32
  %dev38 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.37, i32 noundef %conv31) #9
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %do.end29.if.end42_crit_edge, %if.end11.if.end42_crit_edge
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg, align 4
  %41 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %msg2, align 4
  %43 = ptrtoint ptr %idx12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx12, align 4
  %arrayidx45 = getelementptr i32, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %arrayidx45, align 4
  %count = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %count, align 1
  %inc46 = add i8 %47, 1
  store i8 %inc46, ptr %count, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_scu_rx_callback.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_scu_rx_callback, %if.then59)) #6
          to label %do.end66 [label %if.then59], !srcloc !107

if.then59:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %dev60 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev60, align 4
  %50 = ptrtoint ptr %idx12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idx12, align 4
  %52 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %count, align 1
  %conv63 = zext i8 %53 to i32
  %54 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_scu_rx_callback.__UNIQUE_ID_ddebug188, ptr noundef %49, ptr noundef nonnull @.str.39, i32 noundef %51, i32 noundef %conv63, i32 noundef %55) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then59, %if.end42
  %rx_size67 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %rx_size67 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rx_size67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp69.not = icmp eq i8 %57, 0
  br i1 %cmp69.not, label %do.end66.cleanup_crit_edge, label %land.lhs.true

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end66
  %58 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %57)
  %cmp75 = icmp eq i8 %59, %57
  br i1 %cmp75, label %if.then77, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %done78 = getelementptr inbounds %struct.imx_sc_ipc, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %done78) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %land.lhs.true.cleanup_crit_edge, %do.end66.cleanup_crit_edge, %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_scu_tx_done(ptr noundef %cl, ptr nocapture noundef readnone %mssg, i32 noundef %r) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_done = getelementptr i8, ptr %cl, i32 36
  tail call void @complete(ptr noundef %tx_done) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_soc_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_enable_general_irq_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__ksymtab_imx_scu_get_handle, !1, !"__ksymtab_imx_scu_get_handle", i1 false, i1 false}
!1 = !{!"../drivers/firmware/imx/imx-scu.c", i32 102, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/imx/imx-scu.c", i32 209, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/imx/imx-scu.c", i32 223, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @imx_scu_call_rpc._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @imx_scu_call_rpc._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/firmware/imx/imx-scu.c", i32 230, i32 4}
!13 = !{ptr @imx_scu_call_rpc._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @imx_scu_call_rpc._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/firmware/imx/imx-scu.c", i32 254, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @imx_scu_call_rpc.__UNIQUE_ID_ddebug190, !16, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!19 = !{ptr @__ksymtab_imx_scu_call_rpc, !20, !"__ksymtab_imx_scu_call_rpc", i1 false, i1 false}
!20 = !{!"../drivers/firmware/imx/imx-scu.c", i32 258, i32 1}
!21 = !{ptr @__initcall__kmod_imx_scu__192_357_imx_scu_driver_init6, !22, !"__initcall__kmod_imx_scu__192_357_imx_scu_driver_init6", i1 false, i1 false}
!22 = !{!"../drivers/firmware/imx/imx-scu.c", i32 357, i32 1}
!23 = !{ptr @__UNIQUE_ID_author193, !24, !"__UNIQUE_ID_author193", i1 false, i1 false}
!24 = !{!"../drivers/firmware/imx/imx-scu.c", i32 359, i32 1}
!25 = !{ptr @__UNIQUE_ID_description194, !26, !"__UNIQUE_ID_description194", i1 false, i1 false}
!26 = !{!"../drivers/firmware/imx/imx-scu.c", i32 360, i32 1}
!27 = !{ptr @__UNIQUE_ID_file195, !28, !"__UNIQUE_ID_file195", i1 false, i1 false}
!28 = !{!"../drivers/firmware/imx/imx-scu.c", i32 361, i32 1}
!29 = !{ptr @__UNIQUE_ID_license196, !28, !"__UNIQUE_ID_license196", i1 false, i1 false}
!30 = !{ptr @imx_sc_ipc_handle, !31, !"imx_sc_ipc_handle", i1 false, i1 false}
!31 = !{!"../drivers/firmware/imx/imx-scu.c", i32 82, i32 27}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/firmware/imx/imx-scu.c", i32 171, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @imx_scu_ipc_write.__UNIQUE_ID_ddebug189, !33, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!36 = !{ptr @imx_sc_linux_errmap, !37, !"imx_sc_linux_errmap", i1 false, i1 false}
!37 = !{!"../drivers/firmware/imx/imx-scu.c", i32 67, i32 12}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/imx/imx-scu.c", i32 352, i32 11}
!40 = !{ptr @imx_scu_driver, !41, !"imx_scu_driver", i1 false, i1 false}
!41 = !{!"../drivers/firmware/imx/imx-scu.c", i32 350, i32 31}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/firmware/imx/imx-scu.c", i32 276, i32 54}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/firmware/imx/imx-scu.c", i32 277, i32 7}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/firmware/imx/imx-scu.c", i32 281, i32 54}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/firmware/imx/imx-scu.c", i32 286, i32 38}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/firmware/imx/imx-scu.c", i32 288, i32 38}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/firmware/imx/imx-scu.c", i32 314, i32 5}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @imx_scu_probe._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx_scu_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/firmware/imx/imx-scu.c", i32 320, i32 3}
!59 = !{ptr @imx_scu_probe.__UNIQUE_ID_ddebug191, !58, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!60 = !{ptr @imx_scu_probe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/firmware/imx/imx-scu.c", i32 326, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/firmware/imx/imx-scu.c", i32 333, i32 3}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @imx_scu_probe._entry.22, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx_scu_probe._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/firmware/imx/imx-scu.c", i32 337, i32 3}
!70 = !{ptr @imx_scu_probe._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @imx_scu_probe._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/firmware/imx/imx-scu.c", i32 340, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @imx_scu_probe._entry.29, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @imx_scu_probe._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/firmware/imx/imx-scu.c", i32 121, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @imx_scu_rx_callback._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @imx_scu_rx_callback._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/firmware/imx/imx-scu.c", i32 142, i32 3}
!84 = !{ptr @imx_scu_rx_callback.__UNIQUE_ID_ddebug187, !83, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/firmware/imx/imx-scu.c", i32 144, i32 4}
!87 = !{ptr @imx_scu_rx_callback._entry.36, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @imx_scu_rx_callback._entry_ptr.38, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/firmware/imx/imx-scu.c", i32 151, i32 2}
!91 = !{ptr @imx_scu_rx_callback.__UNIQUE_ID_ddebug188, !90, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @imx_scu_match, !96, !"imx_scu_match", i1 false, i1 false}
!96 = !{!"../drivers/firmware/imx/imx-scu.c", i32 345, i32 34}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2148296487, i64 2148296492, i64 2148296505, i64 2148296549, i64 2148296583, i64 2148296604}
!108 = !{i8 0, i8 2}
