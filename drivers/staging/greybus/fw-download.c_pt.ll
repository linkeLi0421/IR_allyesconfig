; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/fw-download.c_pt.bc'
source_filename = "../drivers/staging/greybus/fw-download.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fw_download = type { ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fw_request = type { i8, i8, i8, [56 x i8], ptr, %struct.list_head, %struct.delayed_work, i32, %struct.kref, ptr }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_fw_download_find_firmware_response = type <{ i8, i32 }>
%struct.gb_fw_download_fetch_firmware_request = type <{ i8, i32, i32 }>
%struct.firmware = type { i32, ptr, ptr }

@gb_fw_download_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported request: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gb_fw_download_request_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/greybus/fw-download.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_fw_download_request_handler._entry_ptr = internal global ptr @gb_fw_download_request_handler._entry, section ".printk_index", align 4
@gb_fw_download_connection_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fw_download->mutex\00", [44 x i8] zeroinitializer }, align 32
@fw_download_find_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"illegal size of find firmware request (%zu != %zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fw_download_find_firmware\00", [38 x i8] zeroinitializer }, align 32
@fw_download_find_firmware._entry_ptr = internal global ptr @fw_download_find_firmware._entry, section ".printk_index", align 4
@fw_download_find_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware-tag is not null-terminated\0A\00", [59 x i8] zeroinitializer }, align 32
@fw_download_find_firmware._entry_ptr.10 = internal global ptr @fw_download_find_firmware._entry.8, section ".printk_index", align 4
@fw_download_find_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error allocating response\0A\00", [37 x i8] zeroinitializer }, align 32
@fw_download_find_firmware._entry_ptr.13 = internal global ptr @fw_download_find_firmware._entry.11, section ".printk_index", align 4
@fw_download_find_firmware.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.7, ptr @.str.2, ptr @.str.15, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gb_firmware\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware size is %zu bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@find_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate firmware id (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_firmware\00", [18 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr = internal global ptr @find_firmware._entry, section ".printk_index", align 4
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gmp_%08x_%08x_%08x_%08x_%s.tftf\00", [32 x i8] zeroinitializer }, align 32
@find_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 188, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Requested firmware package '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr.22 = internal global ptr @find_firmware._entry.19, section ".printk_index", align 4
@find_firmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware request failed for %s (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@find_firmware._entry_ptr.25 = internal global ptr @find_firmware._entry.23, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@find_firmware.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&fw_req->dwork)->work)\00", [53 x i8] zeroinitializer }, align 32
@find_firmware.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&fw_req->dwork)->timer\00", [39 x i8] zeroinitializer }, align 32
@fw_request_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Timed out waiting for fetch / release firmware requests: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fw_request_timedout\00", [44 x i8] zeroinitializer }, align 32
@fw_request_timedout._entry_ptr = internal global ptr @fw_request_timedout._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fw_download_fetch_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Illegal size of fetch firmware request (%zu %zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_download_fetch_firmware\00", [37 x i8] zeroinitializer }, align 32
@fw_download_fetch_firmware._entry_ptr = internal global ptr @fw_download_fetch_firmware._entry, section ".printk_index", align 4
@fw_download_fetch_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware not available for id: %02u\0A\00", [59 x i8] zeroinitializer }, align 32
@fw_download_fetch_firmware._entry_ptr.35 = internal global ptr @fw_download_fetch_firmware._entry.33, section ".printk_index", align 4
@fw_download_fetch_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bad fetch firmware request (offs = %u, size = %u)\0A\00", [45 x i8] zeroinitializer }, align 32
@fw_download_fetch_firmware._entry_ptr.38 = internal global ptr @fw_download_fetch_firmware._entry.36, section ".printk_index", align 4
@fw_download_fetch_firmware._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error allocating fetch firmware response\0A\00", [54 x i8] zeroinitializer }, align 32
@fw_download_fetch_firmware._entry_ptr.41 = internal global ptr @fw_download_fetch_firmware._entry.39, section ".printk_index", align 4
@fw_download_fetch_firmware.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.2, ptr @.str.42, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"responding with firmware (offs = %u, size = %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@exceeds_release_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Firmware download didn't finish in time, abort: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exceeds_release_timeout\00", [40 x i8] zeroinitializer }, align 32
@exceeds_release_timeout._entry_ptr = internal global ptr @exceeds_release_timeout._entry, section ".printk_index", align 4
@fw_download_release_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Illegal size of release firmware request (%zu %zu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fw_download_release_firmware\00", [35 x i8] zeroinitializer }, align 32
@fw_download_release_firmware._entry_ptr = internal global ptr @fw_download_release_firmware._entry, section ".printk_index", align 4
@fw_download_release_firmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.46, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@fw_download_release_firmware._entry_ptr.48 = internal global ptr @fw_download_release_firmware._entry.47, section ".printk_index", align 4
@fw_download_release_firmware.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@fw_req_release.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_req_release\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware %s released\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 399, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 422, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 232, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 244, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 254, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 263, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 176, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 183, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 187, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 192, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 209, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 136, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 282, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 295, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 321, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 330, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 339, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 151, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 361, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 372, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 382, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 378, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [41 x i8] c"../drivers/staging/greybus/fw-download.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 48, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @exceeds_release_timeout._entry, ptr @exceeds_release_timeout._entry_ptr, ptr @find_firmware._entry, ptr @find_firmware._entry.19, ptr @find_firmware._entry.23, ptr @find_firmware._entry_ptr, ptr @find_firmware._entry_ptr.22, ptr @find_firmware._entry_ptr.25, ptr @fw_download_fetch_firmware._entry, ptr @fw_download_fetch_firmware._entry.33, ptr @fw_download_fetch_firmware._entry.36, ptr @fw_download_fetch_firmware._entry.39, ptr @fw_download_fetch_firmware._entry_ptr, ptr @fw_download_fetch_firmware._entry_ptr.35, ptr @fw_download_fetch_firmware._entry_ptr.38, ptr @fw_download_fetch_firmware._entry_ptr.41, ptr @fw_download_find_firmware._entry, ptr @fw_download_find_firmware._entry.11, ptr @fw_download_find_firmware._entry.8, ptr @fw_download_find_firmware._entry_ptr, ptr @fw_download_find_firmware._entry_ptr.10, ptr @fw_download_find_firmware._entry_ptr.13, ptr @fw_download_release_firmware._entry, ptr @fw_download_release_firmware._entry.47, ptr @fw_download_release_firmware._entry_ptr, ptr @fw_download_release_firmware._entry_ptr.48, ptr @fw_request_timedout._entry, ptr @fw_request_timedout._entry_ptr, ptr @gb_fw_download_request_handler._entry, ptr @gb_fw_download_request_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gb_fw_download_connection_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @find_firmware.__key, ptr @.str.26, ptr @find_firmware.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @xa_init_flags.__key, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_download_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_fw_download_connection_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_find_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_find_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_find_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_firmware.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_request_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_fetch_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_fetch_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_fetch_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_fetch_firmware._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exceeds_release_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_release_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_download_release_firmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_fw_download_request_handler(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 4
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type1, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @fw_download_find_firmware(ptr noundef %op)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @fw_download_fetch_firmware(ptr noundef %op)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @fw_download_release_firmware(ptr noundef %op)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_download_find_firmware(ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp.not = icmp eq i32 %7, 10
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef 10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload, align 4
  %call6 = tail call i32 @strnlen(ptr noundef %11, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 10
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %connection.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %connection.i, align 4
  %bundle.i = getelementptr inbounds %struct.gb_connection, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bundle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bundle.i, align 4
  %intf1.i = getelementptr inbounds %struct.gb_bundle, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %intf1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 184) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.if.then16_crit_edge, label %if.end.i

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.i:                                         ; preds = %if.end13
  %id_map.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 3
  %call3.i = tail call i32 @ida_alloc_range(ptr noundef %id_map.i, i32 noundef 1, i32 noundef 255, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %call3.i) #12
  br label %err_free_req.i

if.end5.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %call3.i to i8
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %call7.i.i.i, align 8
  %name.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 3
  %ddbl1_manufacturer_id.i = getelementptr inbounds %struct.gb_interface, ptr %19, i32 0, i32 9
  %24 = ptrtoint ptr %ddbl1_manufacturer_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ddbl1_manufacturer_id.i, align 4
  %ddbl1_product_id.i = getelementptr inbounds %struct.gb_interface, ptr %19, i32 0, i32 10
  %26 = ptrtoint ptr %ddbl1_product_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ddbl1_product_id.i, align 8
  %vendor_id.i = getelementptr inbounds %struct.gb_interface, ptr %19, i32 0, i32 11
  %28 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vendor_id.i, align 4
  %product_id.i = getelementptr inbounds %struct.gb_interface, ptr %19, i32 0, i32 12
  %30 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %product_id.i, align 8
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 56, ptr noundef nonnull @.str.18, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, ptr noundef %11) #9
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.20, ptr noundef %name.i) #12
  %fw.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %call16.i = tail call i32 @request_firmware(ptr noundef %fw.i, ptr noundef %name.i, ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end25.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.24, ptr noundef %name.i, i32 noundef %call16.i) #12
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call7.i.i.i, align 8
  %conv55.i = zext i8 %39 to i32
  tail call void @ida_free(ptr noundef %id_map.i, i32 noundef %conv55.i) #9
  br label %err_free_req.i

if.end25.i:                                       ; preds = %if.end5.i
  %fw_download26.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %fw_download26.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %3, ptr %fw_download26.i, align 4
  %kref.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %kref.i, align 8
  %mutex.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %node.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 5
  %fw_requests.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %fw_requests.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw_requests.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %fw_requests.i, ptr noundef %43) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end25.i.list_add.exit.i_crit_edge

if.end25.i.list_add.exit.i_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %fw_requests.i, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %fw_requests.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %node.i, ptr %fw_requests.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end25.i.list_add.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %48 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %sub.i = add i32 %51, 511
  %div99.i = lshr i32 %sub.i, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul nuw nsw i32 %div99.i, 100
  %add30.i = add i32 %mul.i, %52
  %release_timeout_j.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 7
  %53 = ptrtoint ptr %release_timeout_j.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add30.i, ptr %release_timeout_j.i, align 4
  %dwork.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %dwork.i, i32 noundef 0) #9
  %54 = ptrtoint ptr %dwork.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %dwork.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @find_firmware.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry39.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %55 = ptrtoint ptr %entry39.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry39.i, ptr %entry39.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry39.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 2
  %57 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @fw_request_timedout, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.fw_request, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @find_firmware.__key.27) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i100.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %dwork.i, i32 noundef 100) #9
  br label %find_firmware.exit

err_free_req.i:                                   ; preds = %do.end21.i, %do.end.i
  %ret.0.i = phi i32 [ %call3.i, %do.end.i ], [ %call16.i, %do.end21.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %59 = inttoptr i32 %ret.0.i to ptr
  br label %find_firmware.exit

find_firmware.exit:                               ; preds = %err_free_req.i, %list_add.exit.i
  %retval.0.i63 = phi ptr [ %59, %err_free_req.i ], [ %call7.i.i.i, %list_add.exit.i ]
  %cmp.i64 = icmp ugt ptr %retval.0.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %find_firmware.exit.if.then16_crit_edge, label %if.end18

find_firmware.exit.if.then16_crit_edge:           ; preds = %find_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %find_firmware.exit.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %retval.0.i6374 = phi ptr [ %retval.0.i63, %find_firmware.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.if.then16_crit_edge ]
  %60 = ptrtoint ptr %retval.0.i6374 to i32
  br label %cleanup

if.end18:                                         ; preds = %find_firmware.exit
  %call19 = tail call zeroext i1 @gb_operation_response_alloc(ptr noundef %op, i32 noundef 5, i32 noundef 3264) #9
  br i1 %call19, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end18
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.12) #12
  %disabled.i = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 1
  %63 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %disabled.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i65 = icmp eq i8 %64, 0
  br i1 %tobool.not.i65, label %if.end.i69, label %do.end23.cleanup_crit_edge

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i69:                                       ; preds = %do.end23
  %mutex.i66 = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i66, i32 noundef 0) #9
  %node.i67 = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 5
  %call.i.i.i68 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i67) #9
  br i1 %call.i.i.i68, label %if.end.i.i.i70, label %if.end.i69.list_del.exit.i_crit_edge

if.end.i69.list_del.exit.i_crit_edge:             ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i70:                                   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %node.i67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node.i67, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i70, %if.end.i69.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %node.i67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i67, align 4
  %prev.i.i71 = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i71, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i66) #9
  %73 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %disabled.i, align 1
  %kref.i.i = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 8
  tail call fastcc void @kref_put(ptr noundef %kref.i.i) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %response26 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 2
  %74 = ptrtoint ptr %response26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %response26, align 4
  %payload27 = getelementptr inbounds %struct.gb_message, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %payload27 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %payload27, align 4
  %78 = ptrtoint ptr %retval.0.i63 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %retval.0.i63, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %77, align 1
  %fw = getelementptr inbounds %struct.fw_request, ptr %retval.0.i63, i32 0, i32 4
  %81 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fw, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %size29 = getelementptr inbounds %struct.gb_fw_download_find_firmware_response, ptr %77, i32 0, i32 1
  %86 = ptrtoint ptr %size29 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %size29, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_download_find_firmware.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_download_find_firmware, %if.then34)) #9
          to label %cleanup [label %if.then34], !srcloc !107

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %3, align 4
  %89 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fw, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_download_find_firmware.__UNIQUE_ID_ddebug230, ptr noundef %88, ptr noundef nonnull @.str.15, i32 noundef %92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end25, %list_del.exit.i, %do.end23.cleanup_crit_edge, %if.then16, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %60, %if.then16 ], [ 0, %if.then34 ], [ -12, %do.end23.cleanup_crit_edge ], [ -12, %list_del.exit.i ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_download_fetch_firmware(ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.not = icmp eq i32 %7, 9
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef %7, i32 noundef 9) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload, align 4
  %offset6 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_request, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %offset6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %offset6, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %size7 = getelementptr inbounds %struct.gb_fw_download_fetch_firmware_request, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %size7 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %size7, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %11, align 1
  %mutex.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %fw_requests.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %fw_requests.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fw_requests.i
  br i1 %cmp.not.i, label %get_fw_req.exit.thread, label %for.body.i

get_fw_req.exit.thread:                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %do.end13

for.body.i:                                       ; preds = %for.cond.i
  %fw_req.0.i = getelementptr i8, ptr %.pn.i, i32 -64
  %21 = ptrtoint ptr %fw_req.0.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_req.0.i, align 4
  %cmp4.i = icmp eq i8 %22, %19
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fw_req.0.i.le = getelementptr i8, ptr %.pn.i, i32 -64
  %kref.i = getelementptr i8, ptr %.pn.i, i32 112
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !109

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_fw_req.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !110

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_fw_req.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_fw_req.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %get_fw_req.exit

get_fw_req.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_fw_req.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %tobool.not = icmp eq ptr %fw_req.0.i.le, null
  br i1 %tobool.not, label %get_fw_req.exit.do.end13_crit_edge, label %if.end15

get_fw_req.exit.do.end13_crit_edge:               ; preds = %get_fw_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end13:                                         ; preds = %get_fw_req.exit.do.end13_crit_edge, %get_fw_req.exit.thread
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %conv = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef %conv) #12
  br label %cleanup

if.end15:                                         ; preds = %get_fw_req.exit
  %dwork = getelementptr i8, ptr %.pn.i, i32 8
  %call16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #9
  %disabled = getelementptr i8, ptr %.pn.i, i32 -63
  %27 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %disabled, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.put_fw_crit_edge

if.end15.put_fw_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_fw

if.end19:                                         ; preds = %if.end15
  %fw_download1.i = getelementptr i8, ptr %.pn.i, i32 116
  %29 = ptrtoint ptr %fw_download1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_download1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %release_timeout_j.i = getelementptr i8, ptr %.pn.i, i32 108
  %32 = ptrtoint ptr %release_timeout_j.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %release_timeout_j.i, align 4
  %sub.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end23, label %do.end.i

do.end.i:                                         ; preds = %if.end19
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %30, align 4
  %36 = ptrtoint ptr %fw_req.0.i.le to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fw_req.0.i.le, align 4
  %conv.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.43, i32 noundef %conv.i) #12
  %timedout.i = getelementptr i8, ptr %.pn.i, i32 -62
  %38 = ptrtoint ptr %timedout.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %timedout.i, align 2
  %39 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %disabled, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.put_fw_crit_edge

do.end.i.put_fw_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_fw

if.end.i.i:                                       ; preds = %do.end.i
  %mutex.i.i = getelementptr inbounds %struct.fw_download, ptr %30, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #9
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %41 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %47 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #9
  %49 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %disabled, align 1
  tail call fastcc void @kref_put(ptr noundef %kref.i) #9
  br label %put_fw

if.end23:                                         ; preds = %if.end19
  %fw24 = getelementptr i8, ptr %.pn.i, i32 -4
  %50 = ptrtoint ptr %fw24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw24, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %14)
  %cmp26.not = icmp ule i32 %53, %14
  %sub = sub i32 %53, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub)
  %cmp29 = icmp ugt i32 %17, %sub
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp29
  br i1 %or.cond, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.37, i32 noundef %14, i32 noundef %17) #12
  br label %put_fw

if.end36:                                         ; preds = %if.end23
  %call37 = tail call zeroext i1 @gb_operation_response_alloc(ptr noundef %op, i32 noundef %17, i32 noundef 3264) #9
  br i1 %call37, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.40) #12
  br label %put_fw

if.end43:                                         ; preds = %if.end36
  %response44 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 2
  %58 = ptrtoint ptr %response44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %response44, align 4
  %payload45 = getelementptr inbounds %struct.gb_message, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %payload45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %payload45, align 4
  %data46 = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %62 = ptrtoint ptr %data46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data46, align 4
  %add.ptr = getelementptr i8, ptr %63, i32 %14
  %64 = call ptr @memcpy(ptr %61, ptr %add.ptr, i32 %17)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_download_fetch_firmware.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_download_fetch_firmware, %if.then52)) #9
          to label %do.end56 [label %if.then52], !srcloc !107

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_download_fetch_firmware.__UNIQUE_ID_ddebug231, ptr noundef %66, ptr noundef nonnull @.str.42, i32 noundef %14, i32 noundef %17) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %67 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %dwork, i32 noundef 100) #9
  br label %put_fw

put_fw:                                           ; preds = %do.end56, %do.end41, %do.end34, %list_del.exit.i.i, %do.end.i.put_fw_crit_edge, %if.end15.put_fw_crit_edge
  %ret.0 = phi i32 [ -22, %do.end34 ], [ 0, %do.end56 ], [ -12, %do.end41 ], [ -110, %if.end15.put_fw_crit_edge ], [ -110, %do.end.i.put_fw_crit_edge ], [ -110, %list_del.exit.i.i ]
  tail call fastcc void @kref_put(ptr noundef %kref.i) #9
  br label %cleanup

cleanup:                                          ; preds = %put_fw, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %put_fw ], [ -22, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_download_release_firmware(ptr nocapture noundef readonly %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %request2 = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %request2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request2, align 4
  %payload_size = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef %7, i32 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload = getelementptr inbounds %struct.gb_message, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %payload, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %mutex.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %fw_requests.i = getelementptr inbounds %struct.fw_download, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %fw_requests.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fw_requests.i
  br i1 %cmp.not.i, label %get_fw_req.exit.thread, label %for.body.i

get_fw_req.exit.thread:                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %do.end11

for.body.i:                                       ; preds = %for.cond.i
  %fw_req.0.i = getelementptr i8, ptr %.pn.i, i32 -64
  %15 = ptrtoint ptr %fw_req.0.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_req.0.i, align 4
  %cmp4.i = icmp eq i8 %16, %13
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fw_req.0.i.le = getelementptr i8, ptr %.pn.i, i32 -64
  %kref.i = getelementptr i8, ptr %.pn.i, i32 112
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !109

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_fw_req.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !110

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_fw_req.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_fw_req.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %get_fw_req.exit

get_fw_req.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_fw_req.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %tobool.not = icmp eq ptr %fw_req.0.i.le, null
  br i1 %tobool.not, label %get_fw_req.exit.do.end11_crit_edge, label %if.end13

get_fw_req.exit.do.end11_crit_edge:               ; preds = %get_fw_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %get_fw_req.exit.do.end11_crit_edge, %get_fw_req.exit.thread
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34, i32 noundef %conv) #12
  br label %cleanup

if.end13:                                         ; preds = %get_fw_req.exit
  %dwork = getelementptr i8, ptr %.pn.i, i32 8
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #9
  %disabled.i = getelementptr i8, ptr %.pn.i, i32 -63
  %21 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %disabled.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.free_firmware.exit_crit_edge

if.end13.free_firmware.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_firmware.exit

if.end.i:                                         ; preds = %if.end13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.i, i32 4
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %31 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %disabled.i, align 1
  tail call fastcc void @kref_put(ptr noundef %kref.i) #9
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %list_del.exit.i, %if.end13.free_firmware.exit_crit_edge
  tail call fastcc void @kref_put(ptr noundef %kref.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_download_release_firmware.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fw_download_release_firmware, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !107

if.then20:                                        ; preds = %free_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_download_release_firmware.__UNIQUE_ID_ddebug232, ptr noundef %33, ptr noundef nonnull @.str.49) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %free_firmware.exit, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ 0, %if.then20 ], [ 0, %free_firmware.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gb_fw_download_connection_init(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #14
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %fw_requests = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %fw_requests to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %fw_requests, ptr %fw_requests, align 8
  %prev.i = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fw_requests, ptr %prev.i, align 4
  %id_map = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %id_map, ptr noundef nonnull @.str.50, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private.i, align 4
  %connection4 = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %connection4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %connection, ptr %connection4, align 4
  %mutex = getelementptr inbounds %struct.fw_download, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @gb_fw_download_connection_init.__key) #9
  %call5 = tail call i32 @gb_connection_enable(ptr noundef nonnull %connection) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %err_destroy_id_map

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_destroy_id_map:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ida_destroy(ptr noundef %id_map) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_id_map, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %err_destroy_id_map ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gb_fw_download_connection_exit(ptr noundef readonly %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connection, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 17
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %connection1 = getelementptr inbounds %struct.fw_download, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connection1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connection1, align 4
  tail call void @gb_connection_disable(ptr noundef %3) #9
  %mutex = getelementptr inbounds %struct.fw_download, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %fw_requests = getelementptr inbounds %struct.fw_download, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fw_requests to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn56 = load ptr, ptr %fw_requests, align 4
  %cmp.not57 = icmp eq ptr %.pn56, %fw_requests
  br i1 %cmp.not57, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %kref_get.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %kref_get.exit.for.body_crit_edge ], [ %.pn56, %if.end.for.body_crit_edge ]
  %kref = getelementptr i8, ptr %.pn58, i32 112
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !108
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !109

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !110

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %7 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %fw_requests
  br i1 %cmp.not, label %kref_get.exit.for.end_crit_edge, label %kref_get.exit.for.body_crit_edge

kref_get.exit.for.body_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

kref_get.exit.for.end_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %kref_get.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %8 = ptrtoint ptr %fw_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_requests, align 4
  %cmp23.not59 = icmp eq ptr %9, %fw_requests
  br i1 %cmp23.not59, label %for.end.for.end33_crit_edge, label %for.end.for.body25_crit_edge

for.end.for.body25_crit_edge:                     ; preds = %for.end
  br label %for.body25

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33

for.body25:                                       ; preds = %free_firmware.exit.for.body25_crit_edge, %for.end.for.body25_crit_edge
  %.pn54.in60 = phi ptr [ %.pn54, %free_firmware.exit.for.body25_crit_edge ], [ %9, %for.end.for.body25_crit_edge ]
  %10 = ptrtoint ptr %.pn54.in60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn54 = load ptr, ptr %.pn54.in60, align 4
  %dwork = getelementptr i8, ptr %.pn54.in60, i32 8
  %call26 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #9
  %disabled.i = getelementptr i8, ptr %.pn54.in60, i32 -63
  %11 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disabled.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body25.free_firmware.exit_crit_edge

for.body25.free_firmware.exit_crit_edge:          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_firmware.exit

if.end.i:                                         ; preds = %for.body25
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn54.in60) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn54.in60, i32 4
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn54.in60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn54.in60, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn54.in60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn54.in60, align 4
  %prev.i.i = getelementptr i8, ptr %.pn54.in60, i32 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %21 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %disabled.i, align 1
  %kref.i.i = getelementptr i8, ptr %.pn54.in60, i32 112
  tail call fastcc void @kref_put(ptr noundef %kref.i.i) #9
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %list_del.exit.i, %for.body25.free_firmware.exit_crit_edge
  %kref.i = getelementptr i8, ptr %.pn54.in60, i32 112
  tail call fastcc void @kref_put(ptr noundef %kref.i) #9
  %cmp23.not = icmp eq ptr %.pn54, %fw_requests
  br i1 %cmp23.not, label %free_firmware.exit.for.end33_crit_edge, label %free_firmware.exit.for.body25_crit_edge

free_firmware.exit.for.body25_crit_edge:          ; preds = %free_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

free_firmware.exit.for.end33_crit_edge:           ; preds = %free_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end33

for.end33:                                        ; preds = %free_firmware.exit.for.end33_crit_edge, %for.end.for.end33_crit_edge
  %id_map = getelementptr inbounds %struct.fw_download, ptr %1, i32 0, i32 3
  tail call void @ida_destroy(ptr noundef %id_map) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gb_operation_response_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_request_timedout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %fw_download1 = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %fw_download1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_download1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %conv) #12
  %timedout = getelementptr i8, ptr %work, i32 -70
  %6 = ptrtoint ptr %timedout to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %timedout, align 2
  %disabled.i = getelementptr i8, ptr %work, i32 -71
  %7 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %disabled.i, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.free_firmware.exit_crit_edge

entry.free_firmware.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_firmware.exit

if.end.i:                                         ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.fw_download, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %node.i = getelementptr i8, ptr %work, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 -4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %17 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %disabled.i, align 1
  %kref.i.i = getelementptr i8, ptr %work, i32 104
  tail call fastcc void @kref_put(ptr noundef %kref.i.i) #9
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %list_del.exit.i, %entry.free_firmware.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !110

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fw_req_release.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kref_put, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !107

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fw_download.i = getelementptr i8, ptr %kref, i32 4
  %1 = ptrtoint ptr %fw_download.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_download.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %name.i = getelementptr i8, ptr %kref, i32 -173
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fw_req_release.__UNIQUE_ID_ddebug229, ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef %name.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %fw.i = getelementptr i8, ptr %kref, i32 -116
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 4
  tail call void @release_firmware(ptr noundef %6) #9
  %timedout.i = getelementptr i8, ptr %kref, i32 -174
  %7 = ptrtoint ptr %timedout.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %timedout.i, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %do.end.i.fw_req_release.exit_crit_edge

do.end.i.fw_req_release.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fw_req_release.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %fw_download6.i = getelementptr i8, ptr %kref, i32 4
  %9 = ptrtoint ptr %fw_download6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_download6.i, align 4
  %id_map.i = getelementptr inbounds %struct.fw_download, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %12 to i32
  tail call void @ida_free(ptr noundef %id_map.i, i32 noundef %conv.i) #9
  br label %fw_req_release.exit

fw_req_release.exit:                              ; preds = %if.then5.i, %do.end.i.fw_req_release.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  br label %return

return:                                           ; preds = %fw_req_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/fw-download.c", i32 399, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gb_fw_download_request_handler._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gb_fw_download_request_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @gb_fw_download_connection_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/fw-download.c", i32 422, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/fw-download.c", i32 232, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fw_download_find_firmware._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @fw_download_find_firmware._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/fw-download.c", i32 244, i32 3}
!18 = !{ptr @fw_download_find_firmware._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @fw_download_find_firmware._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/greybus/fw-download.c", i32 254, i32 3}
!22 = !{ptr @fw_download_find_firmware._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @fw_download_find_firmware._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/greybus/fw-download.c", i32 263, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fw_download_find_firmware.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/greybus/fw-download.c", i32 176, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @find_firmware._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @find_firmware._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/fw-download.c", i32 183, i32 4}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/fw-download.c", i32 187, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @find_firmware._entry.19, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @find_firmware._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/fw-download.c", i32 192, i32 3}
!42 = !{ptr @find_firmware._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @find_firmware._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @find_firmware.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/staging/greybus/fw-download.c", i32 209, i32 2}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @find_firmware.__key.27, !45, !"__key", i1 false, i1 false}
!48 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/greybus/fw-download.c", i32 136, i32 2}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fw_request_timedout._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @fw_request_timedout._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/greybus/fw-download.c", i32 282, i32 3}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fw_download_fetch_firmware._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @fw_download_fetch_firmware._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/greybus/fw-download.c", i32 295, i32 3}
!61 = !{ptr @fw_download_fetch_firmware._entry.33, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @fw_download_fetch_firmware._entry_ptr.35, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/greybus/fw-download.c", i32 321, i32 3}
!65 = !{ptr @fw_download_fetch_firmware._entry.36, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fw_download_fetch_firmware._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/staging/greybus/fw-download.c", i32 330, i32 3}
!69 = !{ptr @fw_download_fetch_firmware._entry.39, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @fw_download_fetch_firmware._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/fw-download.c", i32 339, i32 2}
!73 = !{ptr @fw_download_fetch_firmware.__UNIQUE_ID_ddebug231, !72, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/greybus/fw-download.c", i32 151, i32 2}
!76 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @exceeds_release_timeout._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @exceeds_release_timeout._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/greybus/fw-download.c", i32 361, i32 3}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @fw_download_release_firmware._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @fw_download_release_firmware._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @fw_download_release_firmware._entry.47, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/staging/greybus/fw-download.c", i32 372, i32 3}
!86 = !{ptr @fw_download_release_firmware._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/greybus/fw-download.c", i32 382, i32 2}
!89 = !{ptr @fw_download_release_firmware.__UNIQUE_ID_ddebug232, !88, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!90 = !{ptr @xa_init_flags.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/greybus/fw-download.c", i32 48, i32 2}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fw_req_release.__UNIQUE_ID_ddebug229, !94, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{i64 2148190793, i64 2148190798, i64 2148190811, i64 2148190855, i64 2148190889, i64 2148190910}
!108 = !{i64 2148571597, i64 2148571629, i64 2148571658, i64 2148571692, i64 2148571723, i64 2148571746}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148659622}
!112 = !{i64 2148574062, i64 2148574094, i64 2148574123, i64 2148574157, i64 2148574188, i64 2148574211}
!113 = !{i64 2149857395}
