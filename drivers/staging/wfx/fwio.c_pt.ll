; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/fwio.c_pt.bc'
source_filename = "../drivers/staging/wfx/fwio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.133 = type { i32, i32 }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.wfx_dev = type { %struct.wfx_platform_data, ptr, ptr, [2 x ptr], [2 x %struct.mac_address], ptr, ptr, i8, %struct.completion, %struct.hif_ind_startup, %struct.wfx_hif, %struct.delayed_work, i8, i8, %struct.mutex, %struct.wfx_hif_cmd, %struct.sk_buff_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i32, %struct.hif_rx_stats, %struct.mutex, %struct.hif_tx_power_loop_info, %struct.mutex, i32 }
%struct.mac_address = type { [6 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hif_ind_startup = type { i32, i16, [14 x i8], [8 x i8], i16, i16, i8, i8, [2 x [6 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i16, i32, [128 x i8] }
%struct.wfx_hif = type { %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wfx_hif_cmd = type { %struct.mutex, %struct.completion, %struct.completion, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hif_rx_stats = type <{ i32, i32, i32, i32, [22 x i32], [22 x i16], [22 x i16], [22 x i16], [22 x i16], i32, i32, i8, i8 }>
%struct.hif_tx_power_loop_info = type { i16, i16, i16, i16, i16, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.firmware = type { i32, ptr, ptr }

@wfx_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"bus returned an error during first write access. Host configuration error?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wfx_init_device\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/staging/wfx/fwio.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr = internal global ptr @wfx_init_device._entry, section ".printk_index", align 4
@wfx_init_device._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"bus returned an error during first read access. Bus configuration error?\0A\00", [54 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr.7 = internal global ptr @wfx_init_device._entry.5, section ".printk_index", align 4
@wfx_init_device._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 356, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"chip mute. Bus configuration error or chip wasn't reset?\0A\00", [38 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr.10 = internal global ptr @wfx_init_device._entry.8, section ".printk_index", align 4
@wfx_init_device.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"initial config register value: %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@wfx_init_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bad hardware revision number: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr.15 = internal global ptr @wfx_init_device._entry.13, section ".printk_index", align 4
@wfx_init_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 369, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"development hardware detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr.19 = internal global ptr @wfx_init_device._entry.16, section ".printk_index", align 4
@wfx_init_device._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chip didn't wake up. Chip wasn't reset?\0A\00", [55 x i8] zeroinitializer }, align 32
@wfx_init_device._entry_ptr.22 = internal global ptr @wfx_init_device._entry.20, section ".printk_index", align 4
@wfx_init_device.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chip wake up after %lldus\0A\00", [37 x i8] zeroinitializer }, align 32
@init_gpr.gpr_init = internal constant { [5 x %struct.anon.133], [56 x i8] } { [5 x %struct.anon.133] [%struct.anon.133 { i32 7, i32 2131829 }, %struct.anon.133 { i32 8, i32 3063840 }, %struct.anon.133 { i32 9, i32 3947580 }, %struct.anon.133 { i32 11, i32 3288132 }, %struct.anon.133 { i32 12, i32 10511511 }], [56 x i8] zeroinitializer }, align 32
@init_gpr.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_gpr\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  index %02x: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@load_firmware_secure.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"load_firmware_secure\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bootloader: \22%s\22\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@load_firmware_secure.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware load after %lldus\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wait_ncp_status.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wait_ncp_status\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip answer after %lldus\0A\00", [38 x i8] zeroinitializer }, align 32
@wait_ncp_status.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.30, ptr @.str.2, ptr @.str.32, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chip answer immediately\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s_%02X.sec\00", [20 x i8] zeroinitializer }, align 32
@get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 114, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't load %s, falling back to %s.sec\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_firmware\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr = internal global ptr @get_firmware._entry, section ".printk_index", align 4
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s.sec\00", [25 x i8] zeroinitializer }, align 32
@get_firmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"can't load %s\0A\00", [17 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.40 = internal global ptr @get_firmware._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"KEYSET\00", [25 x i8] zeroinitializer }, align 32
@get_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s corrupted\0A\00", [18 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.44 = internal global ptr @get_firmware._entry.42, section ".printk_index", align 4
@get_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"firmware keyset is incompatible with chip (file: 0x%02X, chip: 0x%02X)\0A\00", [56 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr.47 = internal global ptr @get_firmware._entry.45, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"firmware size is not aligned. Buffer overrun will occur\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"upload_firmware\00", [16 x i8] zeroinitializer }, align 32
@upload_firmware._entry_ptr = internal global ptr @upload_firmware._entry, section ".printk_index", align 4
@upload_firmware.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"answer after %lldus\0A\00", [43 x i8] zeroinitializer }, align 32
@fwio_errors = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.60], [60 x i8] zeroinitializer }, align 32
@print_boot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 229, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"secure boot: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"print_boot_status\00", [46 x i8] zeroinitializer }, align 32
@print_boot_status._entry_ptr = internal global ptr @print_boot_status._entry, section ".printk_index", align 4
@print_boot_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 231, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"secure boot: Error %#02x\0A\00", [38 x i8] zeroinitializer }, align 32
@print_boot_status._entry_ptr.55 = internal global ptr @print_boot_status._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid section type or wrong encryption\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Signature verification failed\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AES control key not initialized\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ECC public key not initialized\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MAC key not initialized\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 346, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 352, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 356, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 359, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 363, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 369, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 387, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 391, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"gpr_init\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 314, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 327, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 255, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 269, i32 48 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 287, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 169, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 172, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 109, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 113, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 115, i32 40 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 119, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 126, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 134, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 141, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 183, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 200, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"fwio_errors\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 64, i32 27 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 229, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 231, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 65, i32 27 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 66, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 67, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 68, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [30 x i8] c"../drivers/staging/wfx/fwio.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 69, i32 18 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @get_firmware._entry, ptr @get_firmware._entry.38, ptr @get_firmware._entry.42, ptr @get_firmware._entry.45, ptr @get_firmware._entry_ptr, ptr @get_firmware._entry_ptr.40, ptr @get_firmware._entry_ptr.44, ptr @get_firmware._entry_ptr.47, ptr @print_boot_status._entry, ptr @print_boot_status._entry.53, ptr @print_boot_status._entry_ptr, ptr @print_boot_status._entry_ptr.55, ptr @upload_firmware._entry, ptr @upload_firmware._entry_ptr, ptr @wfx_init_device._entry, ptr @wfx_init_device._entry.13, ptr @wfx_init_device._entry.16, ptr @wfx_init_device._entry.20, ptr @wfx_init_device._entry.5, ptr @wfx_init_device._entry.8, ptr @wfx_init_device._entry_ptr, ptr @wfx_init_device._entry_ptr.10, ptr @wfx_init_device._entry_ptr.15, ptr @wfx_init_device._entry_ptr.19, ptr @wfx_init_device._entry_ptr.22, ptr @wfx_init_device._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @init_gpr.gpr_init, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @fwio_errors, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_init_device._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_gpr.gpr_init to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwio_errors to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_boot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_boot_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wfx_init_device(ptr noundef %wdev) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %use_rising_clk = getelementptr inbounds %struct.wfx_platform_data, ptr %wdev, i32 0, i32 3
  %0 = ptrtoint ptr %use_rising_clk to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_rising_clk, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.store.select = select i1 %tobool.not, i32 17920, i32 280064
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.store.select, ptr %reg, align 4
  %call = tail call i32 @config_reg_write(ptr noundef %wdev, i32 noundef %spec.store.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end2:                                          ; preds = %entry
  %call3 = call i32 @config_reg_read(ptr noundef %wdev, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body19 [
    i32 0, label %if.end10.do.end16_crit_edge
    i32 -1, label %if.end10.do.end16_crit_edge182
  ]

if.end10.do.end16_crit_edge182:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end10.do.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end16:                                         ; preds = %if.end10.do.end16_crit_edge, %if.end10.do.end16_crit_edge182
  %dev17 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #11
  br label %cleanup

do.body19:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_init_device.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_init_device, %if.then24)) #8
          to label %do.end43 [label %if.then24], !srcloc !121

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev25, align 4
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_init_device.__UNIQUE_ID_ddebug358, ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %15) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then24, %do.body19
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %18 = and i32 %17, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp45 = icmp eq i32 %18, 0
  br i1 %cmp45, label %do.end49, label %do.end66

do.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %19 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev50, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.14, i32 noundef 0) #11
  br label %cleanup

do.end66:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp70 = icmp slt i32 %17, 0
  br i1 %cmp70, label %do.end74, label %do.end66.if.end76_crit_edge

do.end66.if.end76_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.end74:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev75, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str.17) #11
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %do.end66.if.end76_crit_edge
  %wakeup_timeout.0 = phi i32 [ 2000000000, %do.end74 ], [ 50000000, %do.end66.if.end76_crit_edge ]
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end76
  %i.021.i = phi i32 [ 0, %if.end76 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x %struct.anon.133], ptr @init_gpr.gpr_init, i32 0, i32 %i.021.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %value.i = getelementptr [5 x %struct.anon.133], ptr @init_gpr.gpr_init, i32 0, i32 %i.021.i, i32 1
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i, align 4
  %call.i = call i32 @igpr_reg_write(ptr noundef %wdev, i32 noundef %24, i32 noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %do.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_gpr.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_init_device, %if.then6.i)) #8
          to label %for.inc.i [label %if.then6.i], !srcloc !121

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_gpr.__UNIQUE_ID_ddebug357, ptr noundef %28, ptr noundef nonnull @.str.25, i32 noundef %24, i32 noundef %26) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %if.end80, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end80:                                         ; preds = %for.inc.i
  %call81 = call i32 @control_reg_write(ptr noundef %wdev, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %call85 = call i64 @ktime_get() #8
  %mul.i = zext i32 %wakeup_timeout.0 to i64
  %add.i = add i64 %call85, %mul.i
  br label %for.cond

for.cond:                                         ; preds = %if.end91.for.cond_crit_edge, %if.end84
  %call86 = call i32 @control_reg_read(ptr noundef %wdev, ptr noundef nonnull %reg) #8
  %call87 = call i64 @ktime_get() #8
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %and88 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end91, label %do.body100

if.end91:                                         ; preds = %for.cond
  %cmp3.i.i = icmp sgt i64 %call87, %add.i
  br i1 %cmp3.i.i, label %do.end97, label %if.end91.for.cond_crit_edge

if.end91.for.cond_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.21) #11
  br label %cleanup

do.body100:                                       ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_init_device.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_init_device, %if.then112)) #8
          to label %do.end117 [label %if.then112], !srcloc !121

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %sub.i = sub i64 %call87, %call85
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %35 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %36 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %35, i32 0) #12, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %36, 1
  %37 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %35, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %37, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_init_device.__UNIQUE_ID_ddebug369, ptr noundef %34, ptr noundef nonnull @.str.23, i64 noundef %cond213.i.i.i) #8
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %do.body100
  %call118 = call i32 @config_reg_write_bits(ptr noundef %wdev, i32 noundef 16384, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end117.cleanup_crit_edge, label %if.end122

do.end117.cleanup_crit_edge:                      ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end122:                                        ; preds = %do.end117
  %call123 = call fastcc i32 @load_firmware_secure(ptr noundef %wdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end122.cleanup_crit_edge, label %if.end127

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end127:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %call128 = call i32 @config_reg_write_bits(ptr noundef %wdev, i32 noundef 197632, i32 noundef 65536) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.end122.cleanup_crit_edge, %do.end117.cleanup_crit_edge, %do.end97, %if.end80.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end49, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end8 ], [ -5, %do.end16 ], [ -19, %do.end49 ], [ %call128, %if.end127 ], [ -110, %do.end97 ], [ -5, %if.end80.cleanup_crit_edge ], [ %call118, %do.end117.cleanup_crit_edge ], [ %call123, %if.end122.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_reg_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_reg_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @control_reg_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @control_reg_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_reg_write_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware_secure(ptr noundef %wdev) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %filename.i = alloca [256 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 61) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044108, i32 noundef -2023406815) #8
  %call2 = tail call fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef -1118572647)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @sram_buf_read(ptr noundef %wdev, i32 noundef 151044228, ptr noundef nonnull %call7.i, i32 noundef 60) #8
  %arrayidx = getelementptr i8, ptr %call7.i, i32 60
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware_secure.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware_secure, %if.then12)) #8
          to label %do.end15 [label %if.then12], !srcloc !121

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_firmware_secure.__UNIQUE_ID_ddebug355, ptr noundef %4, ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %if.end5
  %call16 = tail call i32 @sram_buf_read(ptr noundef %wdev, i32 noundef 151044288, ptr noundef nonnull %call7.i, i32 noundef 16) #8
  %arrayidx17 = getelementptr i8, ptr %call7.i, i32 13
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx17, align 1
  %conv = zext i8 %6 to i32
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %filename.i) #8
  %7 = call ptr @memset(ptr %filename.i, i32 255, i32 256)
  %8 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wdev, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i, i32 noundef 256, ptr noundef nonnull @.str.33, ptr noundef %9, i32 noundef %conv) #8
  %dev.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call2.i = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef nonnull %filename.i, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end15.if.end21.i_crit_edge, label %do.end.i

do.end15.if.end21.i_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end.i:                                         ; preds = %do.end15
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.34, ptr noundef nonnull %filename.i, ptr noundef %15) #11
  %16 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wdev, align 4
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i, i32 noundef 256, ptr noundef nonnull @.str.37, ptr noundef %17) #8
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %call13.i = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename.i, ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.end.i.if.end21.i_crit_edge, label %do.end18.i

do.end.i.if.end21.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end18.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.39, ptr noundef nonnull %filename.i) #11
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %fw, align 4
  br label %get_firmware.exit.thread

if.end21.i:                                       ; preds = %do.end.i.if.end21.i_crit_edge, %do.end15.if.end21.i_crit_edge
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  %data22.i = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data22.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %26, ptr noundef nonnull dereferenceable(6) @.str.41, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.end21.i.if.end36.i_crit_edge

if.end21.i.if.end36.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end21.i
  %arrayidx.i = getelementptr i8, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %call25.i = call i32 @hex_to_bin(i8 noundef zeroext %28) #8
  %mul.i = shl i32 %call25.i, 4
  %arrayidx26.i = getelementptr i8, ptr %26, i32 7
  %29 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx26.i, align 1
  %call27.i = call i32 @hex_to_bin(i8 noundef zeroext %30) #8
  %or.i = or i32 %call27.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp28.i = icmp slt i32 %or.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %if.else.i.if.end36.i_crit_edge

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

do.end32.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.43, ptr noundef nonnull %filename.i) #11
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %34) #8
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %fw, align 4
  br label %get_firmware.exit.thread

if.end36.i:                                       ; preds = %if.else.i.if.end36.i_crit_edge, %if.end21.i.if.end36.i_crit_edge
  %fw_offset.0 = phi i32 [ 8, %if.else.i.if.end36.i_crit_edge ], [ 0, %if.end21.i.if.end36.i_crit_edge ]
  %keyset_file.0.i = phi i32 [ %or.i, %if.else.i.if.end36.i_crit_edge ], [ 144, %if.end21.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %keyset_file.0.i, i32 %conv)
  %cmp37.not.i = icmp eq i32 %keyset_file.0.i, %conv
  br i1 %cmp37.not.i, label %if.end21, label %do.end41.i

do.end41.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.46, i32 noundef %keyset_file.0.i, i32 noundef %conv) #11
  %38 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %39) #8
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %fw, align 4
  br label %get_firmware.exit.thread

get_firmware.exit.thread:                         ; preds = %do.end41.i, %do.end32.i, %do.end18.i
  %retval.0.i131.ph = phi i32 [ -22, %do.end32.i ], [ -19, %do.end41.i ], [ %call13.i, %do.end18.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %filename.i) #8
  br label %error

if.end21:                                         ; preds = %if.end36.i
  %keyset.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 7
  %41 = ptrtoint ptr %keyset.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %6, ptr %keyset.i, align 4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %filename.i) #8
  %add22 = add nuw nsw i32 %fw_offset.0, 72
  %call23 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044108, i32 noundef -1487684199) #8
  %call24 = call fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef -2023406815)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end27:                                         ; preds = %if.end21
  %call28 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151011328, i32 noundef -1) #8
  %call29 = call fastcc i32 @sram_write_dma_safe(ptr noundef %wdev, i32 noundef 151044188, ptr noundef nonnull @.str.28, i32 noundef 4)
  %42 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %45, i32 %fw_offset.0
  %call30 = call fastcc i32 @sram_write_dma_safe(ptr noundef %wdev, i32 noundef 151044116, ptr noundef %add.ptr, i32 noundef 64)
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw, align 4
  %data31 = getelementptr inbounds %struct.firmware, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data31, align 4
  %add.ptr32 = getelementptr i8, ptr %49, i32 %fw_offset.0
  %add.ptr33 = getelementptr i8, ptr %add.ptr32, i32 64
  %call34 = call fastcc i32 @sram_write_dma_safe(ptr noundef %wdev, i32 noundef 151044180, ptr noundef %add.ptr33, i32 noundef 8)
  %50 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %sub = sub i32 %53, %add22
  %call35 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044096, i32 noundef %sub) #8
  %call36 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044108, i32 noundef -1412571974) #8
  %call37 = call fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef -1412571974)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end27.error_crit_edge

if.end27.error_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end40:                                         ; preds = %if.end27
  %call41 = call i64 @ktime_get() #8
  %54 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fw, align 4
  %data42 = getelementptr inbounds %struct.firmware, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data42, align 4
  %add.ptr43 = getelementptr i8, ptr %57, i32 %add22
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %55, align 4
  %sub45 = sub i32 %59, %add22
  %call46 = call fastcc i32 @upload_firmware(ptr noundef %wdev, ptr noundef %add.ptr43, i32 noundef %sub45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body50, label %if.end40.error_crit_edge

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.body50:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_firmware_secure.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware_secure, %if.then62)) #8
          to label %do.end68 [label %if.then62], !srcloc !121

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %call64 = call i64 @ktime_get() #8
  %sub.i = sub i64 %call64, %call41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %62 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %63 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %62, i32 0) #12, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %63, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %63, 1
  %64 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %62, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %64, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_firmware_secure.__UNIQUE_ID_ddebug356, ptr noundef %61, ptr noundef nonnull @.str.29, i64 noundef %cond213.i.i.i) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  %call69 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044108, i32 noundef -725202279) #8
  %call70 = call fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef -725202279)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp = icmp slt i32 %call70, 0
  br i1 %cmp, label %if.end74, label %do.end68.if.end78_crit_edge

do.end68.if.end78_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end74:                                         ; preds = %do.end68
  %call73 = call fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef 2058624281)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp75 = icmp slt i32 %call73, 0
  br i1 %cmp75, label %if.end74.error_crit_edge, label %if.end74.if.end78_crit_edge

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end74.error_crit_edge:                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end78:                                         ; preds = %if.end74.if.end78_crit_edge, %do.end68.if.end78_crit_edge
  %call79 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044108, i32 noundef 391104642) #8
  br label %error

error:                                            ; preds = %if.end78, %if.end74.error_crit_edge, %if.end40.error_crit_edge, %if.end27.error_crit_edge, %if.end21.error_crit_edge, %get_firmware.exit.thread, %if.end.error_crit_edge
  %ret.1 = phi i32 [ %call2, %if.end.error_crit_edge ], [ %call24, %if.end21.error_crit_edge ], [ %call37, %if.end27.error_crit_edge ], [ %call46, %if.end40.error_crit_edge ], [ %call73, %if.end74.error_crit_edge ], [ 0, %if.end78 ], [ %retval.0.i131.ph, %get_firmware.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #8
  %65 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw, align 4
  %tobool80.not = icmp eq ptr %66, null
  br i1 %tobool80.not, label %error.if.end82_crit_edge, label %if.then81

error.if.end82_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then81:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  call void @release_firmware(ptr noundef nonnull %66) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %error.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool83.not = icmp eq i32 %ret.1, 0
  br i1 %tobool83.not, label %if.end82.cleanup_crit_edge, label %if.then84

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84:                                        ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %67 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %reg.i, align 4, !annotation !124
  %call.i132 = call i32 @sram_reg_read(ptr noundef %wdev, i32 noundef 151044224, ptr noundef nonnull %reg.i) #8
  %68 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %69)
  %cmp.i = icmp eq i32 %69, 305419896
  br i1 %cmp.i, label %if.then84.print_boot_status.exit_crit_edge, label %if.end.i

if.then84.print_boot_status.exit_crit_edge:       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %print_boot_status.exit

if.end.i:                                         ; preds = %if.then84
  %call1.i = call i32 @sram_reg_read(ptr noundef %wdev, i32 noundef 151044304, ptr noundef nonnull %reg.i) #8
  %70 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %71)
  %cmp2.i = icmp ult i32 %71, 25
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.do.end7.i_crit_edge

if.end.i.do.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %72 = lshr i32 16547807, %71
  %73 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.not.i, label %do.end.i135, label %land.lhs.true.i.do.end7.i_crit_edge

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i135:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i133 = getelementptr [25 x ptr], ptr @fwio_errors, i32 0, i32 %71
  %74 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i133, align 4
  %dev.i134 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i134, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.51, ptr noundef %75) #11
  br label %print_boot_status.exit

do.end7.i:                                        ; preds = %land.lhs.true.i.do.end7.i_crit_edge, %if.end.i.do.end7.i_crit_edge
  %dev8.i = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %78 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev8.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.54, i32 noundef %71) #11
  br label %print_boot_status.exit

print_boot_status.exit:                           ; preds = %do.end7.i, %do.end.i135, %if.then84.print_boot_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br label %cleanup

cleanup:                                          ; preds = %print_boot_status.exit, %if.end82.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.1, %print_boot_status.exit ], [ 0, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igpr_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_ncp_status(ptr noundef %wdev, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !124
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 50000000
  br label %for.cond

for.cond:                                         ; preds = %if.end5.for.cond_crit_edge, %entry
  %call1 = call i32 @sram_reg_read(ptr noundef %wdev, i32 noundef 151044112, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %for.cond.cleanup_crit_edge, label %if.end

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %call2 = call i64 @ktime_get() #8
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %status)
  %cmp3 = icmp eq i32 %2, %status
  br i1 %cmp3, label %for.end, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp3.i.i = icmp sgt i64 %call2, %add.i
  br i1 %cmp3.i.i, label %if.end5.cleanup_crit_edge, label %if.end5.for.cond_crit_edge

if.end5.for.cond_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %call)
  %3 = icmp eq i64 %call2, %call
  br i1 %3, label %do.body19, label %do.body

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_ncp_status.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_ncp_status, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !121

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %sub.i = sub i64 %call2, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %6 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %7 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #12, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_ncp_status.__UNIQUE_ID_ddebug351, ptr noundef %5, ptr noundef nonnull @.str.31, i64 noundef %cond213.i.i.i) #8
  br label %cleanup

do.body19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_ncp_status.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_ncp_status, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !121

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_ncp_status.__UNIQUE_ID_ddebug352, ptr noundef %10, ptr noundef nonnull @.str.32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.then16, %do.body, %if.end5.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then16 ], [ 0, %do.body ], [ 0, %do.body19 ], [ -110, %if.end5.cleanup_crit_edge ], [ -5, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_buf_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sram_write_dma_safe(ptr noundef %wdev, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %1 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %1, %buf
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sub = add i32 %0, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true2.if.then_crit_edge, label %if.end6.thread

land.lhs.true2.if.then_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.thread:                                   ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %call722 = tail call i32 @sram_buf_write(ptr noundef %wdev, i32 noundef %addr, ptr noundef nonnull %buf, i32 noundef %len) #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true2.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %len, i32 noundef 3264) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then
  %call7 = tail call i32 @sram_buf_write(ptr noundef %wdev, i32 noundef %addr, ptr noundef nonnull %call3, i32 noundef %len) #8
  %cmp8.not = icmp eq ptr %call3, %buf
  br i1 %cmp8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.end6.thread
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call722, %if.end6.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @upload_firmware(ptr noundef %wdev, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %bytes_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_done) #8
  %0 = ptrtoint ptr %bytes_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_done, align 4
  %rem = and i32 %len, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %dev22 = getelementptr inbounds %struct.wfx_dev, ptr %wdev, i32 0, i32 1
  br i1 %tobool.not, label %entry.while.cond_crit_edge, label %do.end

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.48) #11
  br label %cleanup

while.cond:                                       ; preds = %if.end33.while.cond_crit_edge, %entry.while.cond_crit_edge
  %offs.0 = phi i32 [ %add, %if.end33.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %len)
  %cmp = icmp ult i32 %offs.0, %len
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %call = call i64 @ktime_get() #8
  %add = add i32 %offs.0, 1024
  %add.i = add i64 %call, 50000000
  br label %for.cond

for.cond:                                         ; preds = %if.end8.for.cond_crit_edge, %while.body
  %call1 = call i64 @ktime_get() #8
  %3 = ptrtoint ptr %bytes_done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes_done, align 4
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub)
  %cmp2 = icmp ult i32 %sub, 32768
  br i1 %cmp2, label %for.end, label %if.end4

if.end4:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call1, %add.i
  br i1 %cmp3.i.i, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @sram_reg_read(ptr noundef %wdev, i32 noundef 151044104, ptr noundef nonnull %bytes_done) #8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end8.for.cond_crit_edge

if.end8.for.cond_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %call)
  %5 = icmp eq i64 %call1, %call
  br i1 %5, label %for.end.if.end27_crit_edge, label %do.body16

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @upload_firmware.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@upload_firmware, %if.then21)) #8
          to label %if.end27 [label %if.then21], !srcloc !121

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev22, align 4
  %sub.i = sub i64 %call1, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %8 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %9 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %8, i32 0) #12, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %8, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !123
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @upload_firmware.__UNIQUE_ID_ddebug353, ptr noundef %7, ptr noundef nonnull @.str.50, i64 noundef %cond213.i.i.i) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %do.body16, %for.end.if.end27_crit_edge
  %rem28 = and i32 %offs.0, 31744
  %add29 = add nuw nsw i32 %rem28, 151011328
  %add.ptr = getelementptr i8, ptr %data, i32 %offs.0
  %call30 = call fastcc i32 @sram_write_dma_safe(ptr noundef %wdev, i32 noundef %add29, ptr noundef %add.ptr, i32 noundef 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call35 = call i32 @sram_reg_write(ptr noundef %wdev, i32 noundef 151044100, i32 noundef %add) #8
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %if.end33.while.cond_crit_edge

if.end33.while.cond_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call9, %if.end8.cleanup_crit_edge ], [ -110, %if.end4.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_done) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_buf_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !53, !54, !55, !57, !58, !60, !62, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/fwio.c", i32 346, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wfx_init_device._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wfx_init_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/wfx/fwio.c", i32 352, i32 3}
!10 = !{ptr @wfx_init_device._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wfx_init_device._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/fwio.c", i32 356, i32 3}
!14 = !{ptr @wfx_init_device._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @wfx_init_device._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/wfx/fwio.c", i32 359, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wfx_init_device.__UNIQUE_ID_ddebug358, !17, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/wfx/fwio.c", i32 363, i32 3}
!22 = !{ptr @wfx_init_device._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @wfx_init_device._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/wfx/fwio.c", i32 369, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @wfx_init_device._entry.16, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @wfx_init_device._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/wfx/fwio.c", i32 387, i32 4}
!31 = !{ptr @wfx_init_device._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wfx_init_device._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/wfx/fwio.c", i32 391, i32 2}
!35 = !{ptr @wfx_init_device.__UNIQUE_ID_ddebug369, !34, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!36 = !{ptr @init_gpr.gpr_init, !37, !"gpr_init", i1 false, i1 false}
!37 = !{!"../drivers/staging/wfx/fwio.c", i32 314, i32 4}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/wfx/fwio.c", i32 327, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @init_gpr.__UNIQUE_ID_ddebug357, !39, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/wfx/fwio.c", i32 255, i32 2}
!44 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @load_firmware_secure.__UNIQUE_ID_ddebug355, !43, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/wfx/fwio.c", i32 269, i32 48}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/wfx/fwio.c", i32 287, i32 2}
!50 = !{ptr @load_firmware_secure.__UNIQUE_ID_ddebug356, !49, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/wfx/fwio.c", i32 169, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wait_ncp_status.__UNIQUE_ID_ddebug351, !52, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/wfx/fwio.c", i32 172, i32 3}
!57 = !{ptr @wait_ncp_status.__UNIQUE_ID_ddebug352, !56, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/wfx/fwio.c", i32 109, i32 39}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/wfx/fwio.c", i32 113, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @get_firmware._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @get_firmware._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/wfx/fwio.c", i32 115, i32 40}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/wfx/fwio.c", i32 119, i32 4}
!70 = !{ptr @get_firmware._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @get_firmware._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/wfx/fwio.c", i32 126, i32 19}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/wfx/fwio.c", i32 134, i32 4}
!76 = !{ptr @get_firmware._entry.42, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @get_firmware._entry_ptr.44, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/wfx/fwio.c", i32 141, i32 3}
!80 = !{ptr @get_firmware._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @get_firmware._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/wfx/fwio.c", i32 183, i32 3}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @upload_firmware._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @upload_firmware._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/wfx/fwio.c", i32 200, i32 4}
!89 = !{ptr @upload_firmware.__UNIQUE_ID_ddebug353, !88, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/wfx/fwio.c", i32 229, i32 3}
!92 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @print_boot_status._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @print_boot_status._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/wfx/fwio.c", i32 231, i32 3}
!97 = !{ptr @print_boot_status._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @print_boot_status._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/wfx/fwio.c", i32 65, i32 27}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/wfx/fwio.c", i32 66, i32 27}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/wfx/fwio.c", i32 67, i32 23}
!105 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/wfx/fwio.c", i32 68, i32 22}
!107 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/wfx/fwio.c", i32 69, i32 18}
!109 = !{ptr @fwio_errors, !110, !"fwio_errors", i1 false, i1 false}
!110 = !{!"../drivers/staging/wfx/fwio.c", i32 64, i32 27}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{i64 2148189763, i64 2148189768, i64 2148189781, i64 2148189825, i64 2148189859, i64 2148189880}
!122 = !{i64 933278, i64 933305, i64 933327, i64 933355}
!123 = !{i64 933686, i64 933713, i64 933746, i64 933767, i64 933794, i64 933820}
!124 = !{!"auto-init"}
