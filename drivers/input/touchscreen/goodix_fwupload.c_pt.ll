; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/goodix_fwupload.c_pt.bc'
source_filename = "../drivers/input/touchscreen/goodix_fwupload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.goodix_ts_data = type { ptr, ptr, ptr, ptr, ptr, %struct.touchscreen_properties, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, [5 x i8], [64 x i8], i16, i8, i8, %struct.completion, i32, i32, i32, [240 x i8], [7 x i16], [6 x i8], i32, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.goodix_fw_header = type { [4 x i8], [8 x i8], [2 x i8] }
%struct.goodix_chip_data = type { i16, i32, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@goodix_firmware_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error no IRQ-pin access method, cannot upload fw.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"goodix_firmware_check\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/input/touchscreen/goodix_fwupload.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@goodix_firmware_check._entry_ptr = internal global ptr @goodix_firmware_check._entry, section ".printk_index", align 4
@goodix_firmware_check._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 342, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Touchscreen controller needs fw-upload\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@goodix_firmware_check._entry_ptr.9 = internal global ptr @goodix_firmware_check._entry.6, section ".printk_index", align 4
@goodix_handle_fw_request._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.goodix_handle_fw_request = private unnamed_addr constant [25 x i8] c"goodix_handle_fw_request\00", align 1
@goodix_handle_fw_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.goodix_handle_fw_request, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown Request: 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@goodix_handle_fw_request._entry_ptr = internal global ptr @goodix_handle_fw_request._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"goodix/%s\00", [22 x i8] zeroinitializer }, align 32
@goodix_firmware_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware request error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goodix_firmware_upload\00", [41 x i8] zeroinitializer }, align 32
@goodix_firmware_upload._entry_ptr = internal global ptr @goodix_firmware_upload._entry, section ".printk_index", align 4
@goodix_firmware_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 56, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Firmware has wrong size, expected %zu got %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goodix_firmware_verify\00", [41 x i8] zeroinitializer }, align 32
@goodix_firmware_verify._entry_ptr = internal global ptr @goodix_firmware_verify._entry, section ".printk_index", align 4
@goodix_firmware_verify._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Main firmware checksum error\0A\00", [34 x i8] zeroinitializer }, align 32
@goodix_firmware_verify._entry_ptr.19 = internal global ptr @goodix_firmware_verify._entry.17, section ".printk_index", align 4
@goodix_firmware_verify._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DSP firmware checksum error\0A\00", [35 x i8] zeroinitializer }, align 32
@goodix_firmware_verify._entry_ptr.22 = internal global ptr @goodix_firmware_verify._entry.20, section ".printk_index", align 4
@goodix_firmware_verify._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 77, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Firmware hardware info %02x%02x%02x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@goodix_firmware_verify._entry_ptr.25 = internal global ptr @goodix_firmware_verify._entry.23, section ".printk_index", align 4
@goodix_firmware_verify._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 82, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware PID: %s VID: %02x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@goodix_firmware_verify._entry_ptr.28 = internal global ptr @goodix_firmware_verify._entry.26, section ".printk_index", align 4
@goodix_enter_upload_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error could not hold ss51 & dsp\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"goodix_enter_upload_mode\00", [39 x i8] zeroinitializer }, align 32
@goodix_enter_upload_mode._entry_ptr = internal global ptr @goodix_enter_upload_mode._entry, section ".printk_index", align 4
@goodix_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error SW_WDT reg not cleared on fw startup\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"goodix_start_firmware\00", [42 x i8] zeroinitializer }, align 32
@goodix_start_firmware._entry_ptr = internal global ptr @goodix_start_firmware._entry, section ".printk_index", align 4
@goodix_prepare_bak_ref.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"goodix_ts\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"goodix_prepare_bak_ref\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Drv %d Sen %d Key %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"goodix,main-clk\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 255]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 333, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 338, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 342, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 397, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 196, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 200, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 55, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 63, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 70, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 75, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 81, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 177, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 279, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [47 x i8] c"../drivers/input/touchscreen/goodix_fwupload.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 316, i32 6 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @goodix_enter_upload_mode._entry, ptr @goodix_enter_upload_mode._entry_ptr, ptr @goodix_firmware_check._entry, ptr @goodix_firmware_check._entry.6, ptr @goodix_firmware_check._entry_ptr, ptr @goodix_firmware_check._entry_ptr.9, ptr @goodix_firmware_upload._entry, ptr @goodix_firmware_upload._entry_ptr, ptr @goodix_firmware_verify._entry, ptr @goodix_firmware_verify._entry.17, ptr @goodix_firmware_verify._entry.20, ptr @goodix_firmware_verify._entry.23, ptr @goodix_firmware_verify._entry.26, ptr @goodix_firmware_verify._entry_ptr, ptr @goodix_firmware_verify._entry_ptr.19, ptr @goodix_firmware_verify._entry_ptr.22, ptr @goodix_firmware_verify._entry_ptr.25, ptr @goodix_firmware_verify._entry_ptr.28, ptr @goodix_handle_fw_request._entry, ptr @goodix_handle_fw_request._entry_ptr, ptr @goodix_start_firmware._entry, ptr @goodix_start_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @goodix_handle_fw_request._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_check._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_handle_fw_request._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_handle_fw_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_verify._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_verify._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_verify._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_firmware_verify._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_enter_upload_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @goodix_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @goodix_firmware_check(ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %firmware_name = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 4
  %call = tail call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %firmware_name) #5
  %2 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware_name, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %irq_pin_access_method = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 22
  %4 = ptrtoint ptr %irq_pin_access_method to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_pin_access_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  br i1 %cmp, label %do.end, label %do.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.1) #8
  br label %return

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.7) #8
  %load_cfg_from_disk = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 19
  %8 = ptrtoint ptr %load_cfg_from_disk to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %load_cfg_from_disk, align 1
  %call10 = tail call fastcc i32 @goodix_firmware_upload(ptr noundef %ts)
  br label %return

return:                                           ; preds = %do.end7, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call10, %do.end7 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goodix_firmware_upload(ptr noundef %ts) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %buf.i = alloca [9 x i8], align 8
  %fw = alloca ptr, align 4
  %fw_name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fw_name) #5
  %1 = call ptr @memset(ptr %fw_name, i32 255, i32 64)
  %firmware_name = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 4
  %2 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firmware_name, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %3)
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fw_name, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.13, i32 noundef %call2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf.i) #5
  %10 = getelementptr inbounds [9 x i8], ptr %buf.i, i32 0, i32 8
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36878, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 36878
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.15, i32 noundef 36878, i32 noundef %12) #8
  br label %goodix_firmware_verify.exit.thread

if.end.i:                                         ; preds = %if.end
  %data2.i = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.015.i.i = phi i32 [ %add7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %checksum.014.i.i = phi i16 [ %add5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.015.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %16 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %add.i.i = or i32 %i.015.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr.i, i32 %add.i.i
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %18 to i16
  %add3.i.i = or i16 %shl.i.i, %conv2.i.i
  %add5.i.i = add i16 %add3.i.i, %checksum.014.i.i
  %add7.i.i = add nuw nsw i32 %i.015.i.i, 2
  %cmp.i.i = icmp ult i32 %i.015.i.i, 32766
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %goodix_firmware_checksum.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

goodix_firmware_checksum.exit.i:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add5.i.i)
  %tobool.not.i = icmp eq i16 %add5.i.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.end6.i

do.end6.i:                                        ; preds = %goodix_firmware_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.18) #8
  br label %goodix_firmware_verify.exit.thread

if.end7.i:                                        ; preds = %goodix_firmware_checksum.exit.i
  %add.ptr8.i = getelementptr i8, ptr %14, i32 32782
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %if.end7.i
  %i.015.i61.i = phi i32 [ %add7.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 0, %if.end7.i ]
  %checksum.014.i62.i = phi i16 [ %add5.i70.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 0, %if.end7.i ]
  %arrayidx.i63.i = getelementptr i8, ptr %add.ptr8.i, i32 %i.015.i61.i
  %19 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i63.i, align 1
  %conv.i64.i = zext i8 %20 to i16
  %shl.i65.i = shl nuw i16 %conv.i64.i, 8
  %add.i66.i = or i32 %i.015.i61.i, 1
  %arrayidx1.i67.i = getelementptr i8, ptr %add.ptr8.i, i32 %add.i66.i
  %21 = ptrtoint ptr %arrayidx1.i67.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx1.i67.i, align 1
  %conv2.i68.i = zext i8 %22 to i16
  %add3.i69.i = or i16 %shl.i65.i, %conv2.i68.i
  %add5.i70.i = add i16 %add3.i69.i, %checksum.014.i62.i
  %add7.i71.i = add nuw nsw i32 %i.015.i61.i, 2
  %cmp.i72.i = icmp ult i32 %i.015.i61.i, 4094
  br i1 %cmp.i72.i, label %for.body.i73.i.for.body.i73.i_crit_edge, label %goodix_firmware_checksum.exit74.i

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i73.i

goodix_firmware_checksum.exit74.i:                ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add5.i70.i)
  %tobool10.not.i = icmp eq i16 %add5.i70.i, 0
  br i1 %tobool10.not.i, label %if.end10, label %do.end14.i

do.end14.i:                                       ; preds = %goodix_firmware_checksum.exit74.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.21) #8
  br label %goodix_firmware_verify.exit.thread

goodix_firmware_verify.exit.thread:               ; preds = %do.end14.i, %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #5
  br label %release

if.end10:                                         ; preds = %goodix_firmware_checksum.exit74.i
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %14, align 1
  %conv.i = zext i8 %24 to i32
  %arrayidx21.i = getelementptr [4 x i8], ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %26 to i32
  %arrayidx24.i = getelementptr [4 x i8], ptr %14, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %28 to i32
  %arrayidx27.i = getelementptr [4 x i8], ptr %14, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx27.i, align 1
  %conv28.i = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.24, i32 noundef %conv.i, i32 noundef %conv22.i, i32 noundef %conv25.i, i32 noundef %conv28.i) #8
  %pid.i = getelementptr inbounds %struct.goodix_fw_header, ptr %14, i32 0, i32 1
  %31 = ptrtoint ptr %pid.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %pid.i, align 1
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %buf.i, align 8
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %10, align 8
  %vid.i = getelementptr inbounds %struct.goodix_fw_header, ptr %14, i32 0, i32 2
  %35 = ptrtoint ptr %vid.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vid.i, align 1
  %conv36.i = zext i8 %36 to i32
  %arrayidx38.i = getelementptr %struct.goodix_fw_header, ptr %14, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.27, ptr noundef nonnull %buf.i, i32 noundef %conv36.i, i32 noundef %conv39.i) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf.i) #5
  %call11 = call i32 @goodix_reset_no_int_sync(ptr noundef %ts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.release_crit_edge

if.end10.release_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end14:                                         ; preds = %if.end10
  %39 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %val.i, align 1, !annotation !76
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end14
  %tries.0.i = phi i32 [ 200, %if.end14 ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %call.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16768, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i92 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i92, label %if.end.i93, label %do.body.i.goodix_enter_upload_mode.exit.thread_crit_edge

do.body.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end.i93:                                       ; preds = %do.body.i
  %call1.i = call i32 @goodix_i2c_read(ptr noundef %40, i16 noundef zeroext 16768, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i93.goodix_enter_upload_mode.exit.thread_crit_edge

if.end.i93.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end4.i:                                        ; preds = %if.end.i93
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %43)
  %cmp.i = icmp eq i8 %43, 12
  br i1 %cmp.i, label %if.end14.i, label %do.cond.i

do.cond.i:                                        ; preds = %if.end4.i
  %dec.i = add nsw i32 %tries.0.i, -1
  %tobool8.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool8.not.i, label %do.end13.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end13.i:                                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #8
  br label %goodix_enter_upload_mode.exit.thread

if.end14.i:                                       ; preds = %if.end4.i
  %call15.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16400, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end14.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16560, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end18.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end22.i:                                       ; preds = %if.end18.i
  %call23.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16459, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end22.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16784, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end26.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end30.i:                                       ; preds = %if.end26.i
  %call31.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16772, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end30.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end34.i:                                       ; preds = %if.end30.i
  %call35.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16784, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end34.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

if.end38.i:                                       ; preds = %if.end34.i
  %call39.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16920, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %goodix_enter_upload_mode.exit, label %if.end38.i.goodix_enter_upload_mode.exit.thread_crit_edge

if.end38.i.goodix_enter_upload_mode.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %goodix_enter_upload_mode.exit.thread

goodix_enter_upload_mode.exit.thread:             ; preds = %if.end38.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end34.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end30.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end26.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end22.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end18.i.goodix_enter_upload_mode.exit.thread_crit_edge, %if.end14.i.goodix_enter_upload_mode.exit.thread_crit_edge, %do.end13.i, %if.end.i93.goodix_enter_upload_mode.exit.thread_crit_edge, %do.body.i.goodix_enter_upload_mode.exit.thread_crit_edge
  %retval.0.i94.ph = phi i32 [ %call39.i, %if.end38.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call35.i, %if.end34.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call31.i, %if.end30.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call27.i, %if.end26.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call23.i, %if.end22.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call19.i, %if.end18.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call15.i, %if.end14.i.goodix_enter_upload_mode.exit.thread_crit_edge ], [ -5, %do.end13.i ], [ %call1.i, %if.end.i93.goodix_enter_upload_mode.exit.thread_crit_edge ], [ %call.i, %do.body.i.goodix_enter_upload_mode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  br label %release

goodix_enter_upload_mode.exit:                    ; preds = %if.end38.i
  %call43.i = call i32 @goodix_i2c_write_u8(ptr noundef %40, i16 noundef zeroext 16457, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool17.not = icmp eq i32 %call43.i, 0
  br i1 %tobool17.not, label %if.end19, label %goodix_enter_upload_mode.exit.release_crit_edge

goodix_enter_upload_mode.exit.release_crit_edge:  ; preds = %goodix_enter_upload_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end19:                                         ; preds = %goodix_enter_upload_mode.exit
  %44 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ts, align 4
  %call21 = call i32 @goodix_i2c_write_u8(ptr noundef %45, i16 noundef zeroext 16456, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.release_crit_edge

if.end19.release_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end24:                                         ; preds = %if.end19
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw, align 4
  %data25 = getelementptr inbounds %struct.firmware, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data25, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 14
  %50 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ts, align 4
  %call27 = call i32 @goodix_i2c_write(ptr noundef %51, i16 noundef zeroext -16384, ptr noundef %add.ptr, i32 noundef 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.release_crit_edge

if.end24.release_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end30:                                         ; preds = %if.end24
  %52 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ts, align 4
  %call32 = call i32 @goodix_i2c_write_u8(ptr noundef %53, i16 noundef zeroext 16456, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.release_crit_edge

if.end30.release_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end35:                                         ; preds = %if.end30
  %add.ptr36 = getelementptr i8, ptr %49, i32 16398
  %54 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ts, align 4
  %call38 = call i32 @goodix_i2c_write(ptr noundef %55, i16 noundef zeroext -16384, ptr noundef %add.ptr36, i32 noundef 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.release_crit_edge

if.end35.release_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end41:                                         ; preds = %if.end35
  %56 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ts, align 4
  %call43 = call i32 @goodix_i2c_write_u8(ptr noundef %57, i16 noundef zeroext 16456, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.release_crit_edge

if.end41.release_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end46:                                         ; preds = %if.end41
  %add.ptr47 = getelementptr i8, ptr %49, i32 32782
  %58 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ts, align 4
  %call49 = call i32 @goodix_i2c_write(ptr noundef %59, i16 noundef zeroext -16384, ptr noundef %add.ptr47, i32 noundef 4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.release_crit_edge

if.end46.release_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end52:                                         ; preds = %if.end46
  %60 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ts, align 4
  %call54 = call fastcc i32 @goodix_start_firmware(ptr noundef %61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.release_crit_edge

if.end52.release_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %release

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call58 = call i32 @goodix_int_sync(ptr noundef %ts) #5
  br label %release

release:                                          ; preds = %if.end57, %if.end52.release_crit_edge, %if.end46.release_crit_edge, %if.end41.release_crit_edge, %if.end35.release_crit_edge, %if.end30.release_crit_edge, %if.end24.release_crit_edge, %if.end19.release_crit_edge, %goodix_enter_upload_mode.exit.release_crit_edge, %goodix_enter_upload_mode.exit.thread, %if.end10.release_crit_edge, %goodix_firmware_verify.exit.thread
  %error.0 = phi i32 [ %call11, %if.end10.release_crit_edge ], [ %call43.i, %goodix_enter_upload_mode.exit.release_crit_edge ], [ %call21, %if.end19.release_crit_edge ], [ %call27, %if.end24.release_crit_edge ], [ %call32, %if.end30.release_crit_edge ], [ %call38, %if.end35.release_crit_edge ], [ %call43, %if.end41.release_crit_edge ], [ %call49, %if.end46.release_crit_edge ], [ %call54, %if.end52.release_crit_edge ], [ %call58, %if.end57 ], [ -22, %goodix_firmware_verify.exit.thread ], [ %retval.0.i94.ph, %goodix_enter_upload_mode.exit.thread ]
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %63) #5
  br label %cleanup

cleanup:                                          ; preds = %release, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %error.0, %release ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fw_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @goodix_handle_fw_request(ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  %main_clk.i = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !76
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ts, align 4
  %call = call i32 @goodix_i2c_read(ptr noundef %2, i16 noundef zeroext -32701, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %do.body [
    i8 0, label %if.end.cleanup_crit_edge
    i8 1, label %sw.bb1
    i8 2, label %sw.bb6
    i8 3, label %sw.bb16
    i8 4, label %sw.bb21
    i8 6, label %if.end.sw.epilog_crit_edge
    i8 -1, label %if.end.sw.epilog_crit_edge55
  ]

if.end.sw.epilog_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %config = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 24
  %chip = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 3
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %config_len = getelementptr inbounds %struct.goodix_chip_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %config_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_len, align 4
  %call2 = call i32 @goodix_send_cfg(ptr noundef %ts, ptr noundef %config, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %call7 = call fastcc i32 @goodix_prepare_bak_ref(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 4
  %bak_ref = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 28
  %12 = ptrtoint ptr %bak_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bak_ref, align 4
  %bak_ref_len = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 27
  %14 = ptrtoint ptr %bak_ref_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bak_ref_len, align 4
  %call12 = call i32 @goodix_i2c_write(ptr noundef %11, i16 noundef zeroext -26160, ptr noundef %13, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.sw.epilog_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %call17 = call fastcc i32 @goodix_firmware_upload(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %sw.bb16.sw.epilog_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %main_clk.i) #5
  %16 = ptrtoint ptr %main_clk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 54, ptr %main_clk.i, align 4
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull %main_clk.i, i32 noundef 1) #5
  %19 = ptrtoint ptr %main_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %main_clk.i, align 4
  %conv.i = trunc i32 %20 to i8
  %uglygep.i = getelementptr i8, ptr %ts, i32 466
  %21 = zext i8 %conv.i to i32
  %22 = call ptr @memset(ptr %uglygep.i, i32 %21, i32 5)
  %.neg.i = mul i8 %conv.i, -5
  %arrayidx7.i = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 26, i32 5
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.neg.i, ptr %arrayidx7.i, align 1
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 4
  %call10.i = call i32 @goodix_i2c_write(ptr noundef %25, i16 noundef zeroext -32736, ptr noundef %uglygep.i, i32 noundef 6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %main_clk.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool23.not = icmp eq i32 %call10.i, 0
  br i1 %tobool23.not, label %sw.bb21.sw.epilog_crit_edge, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @goodix_handle_fw_request._rs, ptr noundef nonnull @__func__.goodix_handle_fw_request) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val, align 1
  %conv32 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv32) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %do.body.sw.epilog_crit_edge, %sw.bb21.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge55
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts, align 4
  %call37 = call i32 @goodix_i2c_write_u8(ptr noundef %31, i16 noundef zeroext -32701, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb21.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.bb1.cleanup_crit_edge ], [ false, %sw.bb6.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %sw.bb16.cleanup_crit_edge ], [ false, %sw.bb21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_i2c_read(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_send_cfg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goodix_prepare_bak_ref(ptr nocapture noundef %ts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bak_ref = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 28
  %0 = ptrtoint ptr %bak_ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bak_ref, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 27
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = and i8 %5, 31
  %arrayidx7 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 28
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 4
  %9 = and i8 %8, 31
  %10 = and i8 %3, 1
  %narrow = sub nsw i8 %6, %10
  %spec.select = add nsw i8 %narrow, %9
  %arrayidx15 = getelementptr %struct.goodix_ts_data, ptr %ts, i32 0, i32 24, i32 29
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx15, align 1
  %and17 = and i8 %12, 15
  %13 = lshr i8 %12, 4
  %add22 = add nuw nsw i8 %and17, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @goodix_prepare_bak_ref.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@goodix_prepare_bak_ref, %if.then27)) #5
          to label %do.end [label %if.then27], !srcloc !77

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %conv28 = zext i8 %spec.select to i32
  %conv29 = zext i8 %add22 to i32
  %conv30 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @goodix_prepare_bak_ref.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv30) #5
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.end
  %conv32 = zext i8 %spec.select to i32
  %conv33 = zext i8 %add22 to i32
  %sub = add nuw i32 %conv33, 2147483646
  %mul = shl nuw nsw i32 %conv32, 1
  %add34 = mul i32 %mul, %sub
  %mul35 = add i32 %add34, 4
  %bak_ref_len = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 27
  %16 = ptrtoint ptr %bak_ref_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul35, ptr %bak_ref_len, align 4
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev37, i32 noundef %mul35, i32 noundef 3520) #5
  %19 = ptrtoint ptr %bak_ref to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %bak_ref, align 4
  %tobool42.not = icmp eq ptr %call.i, null
  br i1 %tobool42.not, label %do.end.cleanup_crit_edge, label %if.end44

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %bak_ref_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bak_ref_len, align 4
  %sub47 = add i32 %21, -1
  %arrayidx48 = getelementptr i8, ptr %call.i, i32 %sub47
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx48, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_i2c_write(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_i2c_write_u8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @goodix_save_bak_ref(ptr nocapture noundef readonly %ts) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !76
  %firmware_name = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 4
  %1 = ptrtoint ptr %firmware_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %firmware_name, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ts, align 4
  %call = call i32 @goodix_i2c_read(ptr noundef %4, i16 noundef zeroext -32700, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool4.not = icmp sgt i8 %6, -1
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts, align 4
  %bak_ref = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 28
  %9 = ptrtoint ptr %bak_ref to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bak_ref, align 4
  %bak_ref_len = getelementptr inbounds %struct.goodix_ts_data, ptr %ts, i32 0, i32 27
  %11 = ptrtoint ptr %bak_ref_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bak_ref_len, align 4
  %call8 = call i32 @goodix_i2c_read(ptr noundef %8, i16 noundef zeroext -26160, ptr noundef %10, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %bak_ref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bak_ref, align 4
  %15 = ptrtoint ptr %bak_ref_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bak_ref_len, align 4
  %17 = call ptr @memset(ptr %14, i32 0, i32 %16)
  %18 = load ptr, ptr %bak_ref, align 4
  %19 = load i32, ptr %bak_ref_len, align 4
  %sub = add i32 %19, -1
  %arrayidx = getelementptr i8, ptr %18, i32 %sub
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_reset_no_int_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @goodix_start_firmware(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !76
  %call = tail call i32 @goodix_i2c_write_u8(ptr noundef %client, i16 noundef zeroext -32703, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @goodix_i2c_write_u8(ptr noundef %client, i16 noundef zeroext 16768, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @goodix_i2c_read(ptr noundef %client, i16 noundef zeroext -32703, ptr noundef nonnull %val, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %2)
  %cmp = icmp eq i8 %2, -86
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 @goodix_i2c_write_u8(ptr noundef %client, i16 noundef zeroext -32703, i8 noundef zeroext -86) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call12, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @goodix_int_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 333, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 338, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @goodix_firmware_check._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @goodix_firmware_check._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 342, i32 2}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @goodix_firmware_check._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @goodix_firmware_check._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 397, i32 3}
!17 = !{ptr @goodix_handle_fw_request._rs, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.goodix_handle_fw_request, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @goodix_handle_fw_request._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @goodix_handle_fw_request._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 196, i32 37}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 200, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @goodix_firmware_upload._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @goodix_firmware_upload._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 55, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @goodix_firmware_verify._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @goodix_firmware_verify._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 63, i32 3}
!36 = !{ptr @goodix_firmware_verify._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @goodix_firmware_verify._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 70, i32 3}
!40 = !{ptr @goodix_firmware_verify._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @goodix_firmware_verify._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 75, i32 2}
!44 = !{ptr @goodix_firmware_verify._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @goodix_firmware_verify._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 81, i32 2}
!48 = !{ptr @goodix_firmware_verify._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @goodix_firmware_verify._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 108, i32 3}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @goodix_enter_upload_mode._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @goodix_enter_upload_mode._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 177, i32 3}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @goodix_start_firmware._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @goodix_start_firmware._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 279, i32 2}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @goodix_prepare_bak_ref.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/goodix_fwupload.c", i32 316, i32 6}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 2148286031, i64 2148286036, i64 2148286049, i64 2148286093, i64 2148286127, i64 2148286148}
