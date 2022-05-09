; ModuleID = '/llk/IR_all_yes/lib/test_firmware.c_pt.bc'
source_filename = "../lib/test_firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.test_config = type { ptr, i8, i32, i32, i8, i8, i8, i8, i8, ptr, i32, ptr }
%struct.test_batched_req = type { i8, i32, i8, ptr, ptr, %struct.completion, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }

@__UNIQUE_ID_import_ns223 = internal constant [38 x i8] c"test_firmware.import_ns=TEST_FIRMWARE\00", section ".modinfo", align 1
@__initcall__kmod_test_firmware__224_1124_test_firmware_init6 = internal global ptr @test_firmware_init, section ".initcall6.init", align 4
@test_fw_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @test_fw_mutex, i64 52), ptr getelementptr (i8, ptr @test_fw_mutex, i64 52) }, ptr @test_fw_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@test_firmware = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_fw_misc_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.14, ptr @test_fw_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @test_dev_groups, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@test_fw_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_firmware_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014test_firmware: removed interface\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_firmware_exit\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/test_firmware.c\00", [44 x i8] zeroinitializer }, align 32
@test_firmware_exit._entry_ptr = internal global ptr @test_firmware_exit._entry, section ".printk_index", align 4
@__exitcall_test_firmware_exit = internal global ptr @test_firmware_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [55 x i8] c"test_firmware.author=Kees Cook <keescook@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [37 x i8] c"test_firmware.file=lib/test_firmware\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [26 x i8] c"test_firmware.license=GPL\00", section ".modinfo", align 1
@test_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013test_firmware: could not init firmware test config: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_firmware_init\00", [45 x i8] zeroinitializer }, align 32
@test_firmware_init._entry_ptr = internal global ptr @test_firmware_init._entry, section ".printk_index", align 4
@test_firmware_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013test_firmware: could not register misc device: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@test_firmware_init._entry_ptr.7 = internal global ptr @test_firmware_init._entry.5, section ".printk_index", align 4
@test_firmware_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014test_firmware: interface ready\0A\00", [62 x i8] zeroinitializer }, align 32
@test_firmware_init._entry_ptr.10 = internal global ptr @test_firmware_init._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test-firmware.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_fw_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_fw_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_firmware\00", [18 x i8] zeroinitializer }, align 32
@test_fw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @test_fw_misc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@test_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @test_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@test_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @test_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@test_dev_attrs = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @dev_attr_reset, ptr @dev_attr_config, ptr @dev_attr_config_name, ptr @dev_attr_config_num_requests, ptr @dev_attr_config_into_buf, ptr @dev_attr_config_buf_size, ptr @dev_attr_config_file_offset, ptr @dev_attr_config_partial, ptr @dev_attr_config_sync_direct, ptr @dev_attr_config_send_uevent, ptr @dev_attr_config_read_fw_idx, ptr @dev_attr_trigger_request, ptr @dev_attr_trigger_async_request, ptr @dev_attr_trigger_custom_fallback, ptr @dev_attr_trigger_batched_requests, ptr @dev_attr_trigger_batched_requests_async, ptr @dev_attr_release_all_firmware, ptr @dev_attr_test_result, ptr @dev_attr_read_firmware, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_name_show, ptr @config_name_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_num_requests = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_num_requests_show, ptr @config_num_requests_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_into_buf = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_into_buf_show, ptr @config_into_buf_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_buf_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_buf_size_show, ptr @config_buf_size_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_file_offset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_file_offset_show, ptr @config_file_offset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_partial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_partial_show, ptr @config_partial_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_sync_direct = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_sync_direct_show, ptr @config_sync_direct_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_send_uevent = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_send_uevent_show, ptr @config_send_uevent_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_read_fw_idx = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_read_fw_idx_show, ptr @config_read_fw_idx_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigger_request = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_request_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigger_async_request = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_async_request_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigger_custom_fallback = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_custom_fallback_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigger_batched_requests = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_batched_requests_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_trigger_batched_requests_async = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @trigger_batched_requests_async_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_release_all_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @release_all_firmware_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_test_result = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @test_result_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_firmware_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@reset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013test_firmware: could not alloc settings for config trigger: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_store\00", [20 x i8] zeroinitializer }, align 32
@reset_store._entry_ptr = internal global ptr @reset_store._entry, section ".printk_index", align 4
@reset_store._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016test_firmware: reset\0A\00", [40 x i8] zeroinitializer }, align 32
@reset_store._entry_ptr.20 = internal global ptr @reset_store._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Custom trigger configuration for: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name:\09%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"name:\09EMTPY\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_requests:\09%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_uevent:\09\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FW_ACTION_UEVENT\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW_ACTION_NOUEVENT\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"into_buf:\09\09%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buf_size:\09%zu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"file_offset:\09%zu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"partial:\09\09%s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sync_direct:\09\09%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_fw_idx:\09%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config_name\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config_num_requests\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@config_num_requests_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013test_firmware: Must call release_all_firmware prior to changing config\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"config_num_requests_store\00", [38 x i8] zeroinitializer }, align 32
@config_num_requests_store._entry_ptr = internal global ptr @config_num_requests_store._entry, section ".printk_index", align 4
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"config_into_buf\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"config_buf_size\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@config_buf_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.47, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"config_buf_size_store\00", [42 x i8] zeroinitializer }, align 32
@config_buf_size_store._entry_ptr = internal global ptr @config_buf_size_store._entry, section ".printk_index", align 4
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_file_offset\00", [45 x i8] zeroinitializer }, align 32
@config_file_offset_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.49, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"config_file_offset_store\00", [39 x i8] zeroinitializer }, align 32
@config_file_offset_store._entry_ptr = internal global ptr @config_file_offset_store._entry, section ".printk_index", align 4
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_partial\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_sync_direct\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_send_uevent\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_read_fw_idx\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"trigger_request\00", [16 x i8] zeroinitializer }, align 32
@trigger_request_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016test_firmware: loading '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger_request_store\00", [42 x i8] zeroinitializer }, align 32
@trigger_request_store._entry_ptr = internal global ptr @trigger_request_store._entry, section ".printk_index", align 4
@trigger_request_store._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016test_firmware: load of '%s' failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@trigger_request_store._entry_ptr.59 = internal global ptr @trigger_request_store._entry.57, section ".printk_index", align 4
@trigger_request_store._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016test_firmware: loaded: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@trigger_request_store._entry_ptr.62 = internal global ptr @trigger_request_store._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trigger_async_request\00", [42 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.64, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trigger_async_request_store\00", [36 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry_ptr = internal global ptr @trigger_async_request_store._entry, section ".printk_index", align 4
@trigger_async_request_store._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016test_firmware: async load of '%s' failed: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry_ptr.67 = internal global ptr @trigger_async_request_store._entry.65, section ".printk_index", align 4
@async_fw_done = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @async_fw_done, i64 48), ptr getelementptr (i8, ptr @async_fw_done, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.64, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry_ptr.69 = internal global ptr @trigger_async_request_store._entry.68, section ".printk_index", align 4
@trigger_async_request_store._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.64, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013test_firmware: failed to async load firmware\0A\00", [48 x i8] zeroinitializer }, align 32
@trigger_async_request_store._entry_ptr.72 = internal global ptr @trigger_async_request_store._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(async_fw_done).wait.lock\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trigger_custom_fallback\00", [40 x i8] zeroinitializer }, align 32
@trigger_custom_fallback_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016test_firmware: loading '%s' using custom fallback mechanism\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"trigger_custom_fallback_store\00", [34 x i8] zeroinitializer }, align 32
@trigger_custom_fallback_store._entry_ptr = internal global ptr @trigger_custom_fallback_store._entry, section ".printk_index", align 4
@trigger_custom_fallback_store._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.76, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trigger_custom_fallback_store._entry_ptr.78 = internal global ptr @trigger_custom_fallback_store._entry.77, section ".printk_index", align 4
@trigger_custom_fallback_store._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.76, ptr @.str.2, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trigger_custom_fallback_store._entry_ptr.80 = internal global ptr @trigger_custom_fallback_store._entry.79, section ".printk_index", align 4
@trigger_custom_fallback_store._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.76, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trigger_custom_fallback_store._entry_ptr.82 = internal global ptr @trigger_custom_fallback_store._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trigger_batched_requests\00", [39 x i8] zeroinitializer }, align 32
@trigger_batched_requests_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016test_firmware: batched sync firmware loading '%s' %u times\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trigger_batched_requests_store\00", [33 x i8] zeroinitializer }, align 32
@trigger_batched_requests_store._entry_ptr = internal global ptr @trigger_batched_requests_store._entry, section ".printk_index", align 4
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@trigger_batched_requests_store._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.85, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013test_firmware: Setting up thread %u failed\0A\00", [50 x i8] zeroinitializer }, align 32
@trigger_batched_requests_store._entry_ptr.89 = internal global ptr @trigger_batched_requests_store._entry.87, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@test_fw_run_batch_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016test_firmware: #%u: batched sync load failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"test_fw_run_batch_request\00", [38 x i8] zeroinitializer }, align 32
@test_fw_run_batch_request._entry_ptr = internal global ptr @test_fw_run_batch_request._entry, section ".printk_index", align 4
@test_fw_run_batch_request._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016test_firmware: #%u: batched sync loaded %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@test_fw_run_batch_request._entry_ptr.95 = internal global ptr @test_fw_run_batch_request._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trigger_batched_requests_async\00", [33 x i8] zeroinitializer }, align 32
@trigger_batched_requests_async_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016test_firmware: batched loading '%s' custom fallback mechanism %u times\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"trigger_batched_requests_async_store\00", [59 x i8] zeroinitializer }, align 32
@trigger_batched_requests_async_store._entry_ptr = internal global ptr @trigger_batched_requests_async_store._entry, section ".printk_index", align 4
@trigger_batched_requests_async_store._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016test_firmware: #%u: batched async load failed setup: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@trigger_batched_requests_async_store._entry_ptr.101 = internal global ptr @trigger_batched_requests_async_store._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"release_all_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_result\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_firmware\00", [18 x i8] zeroinitializer }, align 32
@read_firmware_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013test_firmware: #%u: failed to async load firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_firmware_show\00", [45 x i8] zeroinitializer }, align 32
@read_firmware_show._entry_ptr = internal global ptr @read_firmware_show._entry, section ".printk_index", align 4
@read_firmware_show._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016test_firmware: #%u: loaded %zu\0A\00", [62 x i8] zeroinitializer }, align 32
@read_firmware_show._entry_ptr.109 = internal global ptr @read_firmware_show._entry.107, section ".printk_index", align 4
@read_firmware_show._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013test_firmware: Testing interface must use PAGE_SIZE firmware for now\0A\00", [56 x i8] zeroinitializer }, align 32
@read_firmware_show._entry_ptr.112 = internal global ptr @read_firmware_show._entry.110, section ".printk_index", align 4
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"test_fw_mutex\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"test_firmware\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 36, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"test_fw_misc_device\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1090, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"test_fw_config\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 115, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1135, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1108, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1115, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1119, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 186, i32 42 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 35, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1092, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"test_fw_fops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 131, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"test_dev_groups\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"test_dev_group\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1088, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"test_dev_attrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1056, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"dev_attr_config\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"dev_attr_config_name\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [29 x i8] c"dev_attr_config_num_requests\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"dev_attr_config_into_buf\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"dev_attr_config_buf_size\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"dev_attr_config_file_offset\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"dev_attr_config_partial\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [28 x i8] c"dev_attr_config_sync_direct\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"dev_attr_config_send_uevent\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [28 x i8] c"dev_attr_config_read_fw_idx\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [25 x i8] c"dev_attr_trigger_request\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [31 x i8] c"dev_attr_trigger_async_request\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [33 x i8] c"dev_attr_trigger_custom_fallback\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [34 x i8] c"dev_attr_trigger_batched_requests\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [40 x i8] c"dev_attr_trigger_batched_requests_async\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [30 x i8] c"dev_attr_release_all_firmware\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"dev_attr_test_result\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"dev_attr_read_firmware\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 235, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 222, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 227, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 285, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 246, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 251, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 255, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 258, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 261, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 263, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 264, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 266, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 267, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 267, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 269, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 271, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 273, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 276, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 279, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 393, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 310, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 423, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 384, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 403, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 440, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 333, i32 34 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 470, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 357, i32 34 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 450, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 500, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 480, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 517, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 539, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 555, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 571, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 605, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 585, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 592, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 595, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 714, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 684, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 692, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [14 x i8] c"async_fw_done\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 702, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 705, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 665, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 758, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 727, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 736, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 746, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 749, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 886, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 840, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 850, i32 15 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 853, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 87, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 800, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 806, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 990, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 938, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 955, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1007, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 998, i32 8 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1052, i32 8 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1032, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1037, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private constant [23 x i8] c"../lib/test_firmware.c\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.528, i32 1040, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_import_ns223, ptr @__UNIQUE_ID_license227, ptr @__exitcall_test_firmware_exit, ptr @__initcall__kmod_test_firmware__224_1124_test_firmware_init6, ptr @config_buf_size_store._entry, ptr @config_buf_size_store._entry_ptr, ptr @config_file_offset_store._entry, ptr @config_file_offset_store._entry_ptr, ptr @config_num_requests_store._entry, ptr @config_num_requests_store._entry_ptr, ptr @read_firmware_show._entry, ptr @read_firmware_show._entry.107, ptr @read_firmware_show._entry.110, ptr @read_firmware_show._entry_ptr, ptr @read_firmware_show._entry_ptr.109, ptr @read_firmware_show._entry_ptr.112, ptr @reset_store._entry, ptr @reset_store._entry.18, ptr @reset_store._entry_ptr, ptr @reset_store._entry_ptr.20, ptr @test_firmware_exit, ptr @test_firmware_exit._entry, ptr @test_firmware_exit._entry_ptr, ptr @test_firmware_init._entry, ptr @test_firmware_init._entry.5, ptr @test_firmware_init._entry.8, ptr @test_firmware_init._entry_ptr, ptr @test_firmware_init._entry_ptr.10, ptr @test_firmware_init._entry_ptr.7, ptr @test_fw_run_batch_request._entry, ptr @test_fw_run_batch_request._entry.93, ptr @test_fw_run_batch_request._entry_ptr, ptr @test_fw_run_batch_request._entry_ptr.95, ptr @trigger_async_request_store._entry, ptr @trigger_async_request_store._entry.65, ptr @trigger_async_request_store._entry.68, ptr @trigger_async_request_store._entry.70, ptr @trigger_async_request_store._entry_ptr, ptr @trigger_async_request_store._entry_ptr.67, ptr @trigger_async_request_store._entry_ptr.69, ptr @trigger_async_request_store._entry_ptr.72, ptr @trigger_batched_requests_async_store._entry, ptr @trigger_batched_requests_async_store._entry.99, ptr @trigger_batched_requests_async_store._entry_ptr, ptr @trigger_batched_requests_async_store._entry_ptr.101, ptr @trigger_batched_requests_store._entry, ptr @trigger_batched_requests_store._entry.87, ptr @trigger_batched_requests_store._entry_ptr, ptr @trigger_batched_requests_store._entry_ptr.89, ptr @trigger_custom_fallback_store._entry, ptr @trigger_custom_fallback_store._entry.77, ptr @trigger_custom_fallback_store._entry.79, ptr @trigger_custom_fallback_store._entry.81, ptr @trigger_custom_fallback_store._entry_ptr, ptr @trigger_custom_fallback_store._entry_ptr.78, ptr @trigger_custom_fallback_store._entry_ptr.80, ptr @trigger_custom_fallback_store._entry_ptr.82, ptr @trigger_request_store._entry, ptr @trigger_request_store._entry.57, ptr @trigger_request_store._entry.60, ptr @trigger_request_store._entry_ptr, ptr @trigger_request_store._entry_ptr.59, ptr @trigger_request_store._entry_ptr.62, ptr @test_fw_mutex, ptr @test_firmware, ptr @test_fw_misc_device, ptr @test_fw_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @test_fw_fops, ptr @test_dev_groups, ptr @test_dev_group, ptr @test_dev_attrs, ptr @dev_attr_reset, ptr @dev_attr_config, ptr @dev_attr_config_name, ptr @dev_attr_config_num_requests, ptr @dev_attr_config_into_buf, ptr @dev_attr_config_buf_size, ptr @dev_attr_config_file_offset, ptr @dev_attr_config_partial, ptr @dev_attr_config_sync_direct, ptr @dev_attr_config_send_uevent, ptr @dev_attr_config_read_fw_idx, ptr @dev_attr_trigger_request, ptr @dev_attr_trigger_async_request, ptr @dev_attr_trigger_custom_fallback, ptr @dev_attr_trigger_batched_requests, ptr @dev_attr_trigger_batched_requests_async, ptr @dev_attr_release_all_firmware, ptr @dev_attr_test_result, ptr @dev_attr_read_firmware, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @async_fw_done, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @init_completion.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_misc_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_firmware_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_firmware_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_firmware_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev_attrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_num_requests to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_into_buf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_buf_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_file_offset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_partial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_sync_direct to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_send_uevent to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_read_fw_idx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_request to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_async_request to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_custom_fallback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_batched_requests to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_trigger_batched_requests_async to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_release_all_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_test_result to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_store._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_num_requests_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_buf_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_file_offset_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_request_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_request_store._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_request_store._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_async_request_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_async_request_store._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_fw_done to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_async_request_store._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_async_request_store._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_custom_fallback_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_custom_fallback_store._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_custom_fallback_store._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_custom_fallback_store._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_batched_requests_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_batched_requests_store._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_run_batch_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_fw_run_batch_request._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_batched_requests_async_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_batched_requests_async_store._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_firmware_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_firmware_show._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_firmware_show._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_firmware_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #11
  store ptr %call7.i.i, ptr @test_fw_config, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @__test_firmware_config_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @test_fw_config, align 4
  tail call void @kfree(ptr noundef %1) #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call1) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @misc_register(ptr noundef nonnull @test_fw_misc_device) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end17, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @test_fw_config, align 4
  tail call void @kfree(ptr noundef %2) #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call6) #13
  br label %cleanup

do.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call6, %if.then8 ], [ 0, %do.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_firmware_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_firmware, align 4
  tail call void @release_firmware(ptr noundef %0) #12
  tail call void @misc_deregister(ptr noundef nonnull @test_fw_misc_device) #12
  %1 = load ptr, ptr @test_fw_config, align 4
  %reqs.i.i = getelementptr inbounds %struct.test_config, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reqs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.__test_firmware_config_free.exit_crit_edge, label %for.cond.preheader.i.i

entry.__test_firmware_config_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__test_firmware_config_free.exit

for.cond.preheader.i.i:                           ; preds = %entry
  %num_requests14.i.i = getelementptr inbounds %struct.test_config, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_requests14.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_requests14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp15.not.i.i = icmp eq i8 %5, 0
  br i1 %cmp15.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %6 = phi ptr [ %11, %for.inc.i.i.for.body.i.i_crit_edge ], [ %1, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %reqs3.i.i = getelementptr inbounds %struct.test_config, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %reqs3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reqs3.i.i, align 4
  %fw.i.i = getelementptr %struct.test_batched_req, ptr %8, i32 %indvars.iv.i.i, i32 3
  %9 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %10) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %11 = load ptr, ptr @test_fw_config, align 4
  %num_requests.i.i = getelementptr inbounds %struct.test_config, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %num_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_requests.i.i, align 1
  %14 = zext i8 %13 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %14
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %1, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %11, %for.inc.i.i.for.end.i.i_crit_edge ]
  %reqs8.i.i = getelementptr inbounds %struct.test_config, ptr %.lcssa.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %reqs8.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reqs8.i.i, align 4
  tail call void @vfree(ptr noundef %16) #12
  %17 = load ptr, ptr @test_fw_config, align 4
  %reqs9.i.i = getelementptr inbounds %struct.test_config, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %reqs9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %reqs9.i.i, align 4
  br label %__test_firmware_config_free.exit

__test_firmware_config_free.exit:                 ; preds = %for.end.i.i, %entry.__test_firmware_config_free.exit_crit_edge
  %19 = load ptr, ptr @test_fw_config, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @kfree_const(ptr noundef %21) #12
  %22 = load ptr, ptr @test_fw_config, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %22, align 4
  tail call void @kfree(ptr noundef %22) #12
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__test_firmware_config_init() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %call.i = tail call ptr @kstrndup(ptr noundef nonnull @.str.11, i32 noundef 17, i32 noundef 3264) #12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %.count.i = select i1 %tobool.not.i, i32 -28, i32 17
  %2 = load ptr, ptr @test_fw_config, align 4
  br i1 %tobool.not.i, label %out, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %num_requests = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %num_requests to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %num_requests, align 1
  %send_uevent = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %send_uevent to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %send_uevent, align 2
  %into_buf = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %into_buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %into_buf, align 4
  %buf_size = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1024, ptr %buf_size, align 4
  %file_offset = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %file_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %file_offset, align 4
  %partial = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %partial to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %partial, align 4
  %sync_direct = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %sync_direct to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sync_direct, align 1
  %req_firmware = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 11
  %10 = ptrtoint ptr %req_firmware to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @request_firmware, ptr %req_firmware, align 4
  %test_result = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 10
  %11 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %test_result, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 9
  br label %cleanup

out:                                              ; preds = %entry
  %reqs.i.i = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 9
  %12 = ptrtoint ptr %reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reqs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %out.__test_firmware_config_free.exit_crit_edge, label %for.cond.preheader.i.i

out.__test_firmware_config_free.exit_crit_edge:   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %__test_firmware_config_free.exit

for.cond.preheader.i.i:                           ; preds = %out
  %num_requests14.i.i = getelementptr inbounds %struct.test_config, ptr %2, i32 0, i32 7
  %14 = ptrtoint ptr %num_requests14.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_requests14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp15.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp15.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %16 = phi ptr [ %21, %for.inc.i.i.for.body.i.i_crit_edge ], [ %2, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %reqs3.i.i = getelementptr inbounds %struct.test_config, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %reqs3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reqs3.i.i, align 4
  %fw.i.i = getelementptr %struct.test_batched_req, ptr %18, i32 %indvars.iv.i.i, i32 3
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %20) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %21 = load ptr, ptr @test_fw_config, align 4
  %num_requests.i.i = getelementptr inbounds %struct.test_config, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %num_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_requests.i.i, align 1
  %24 = zext i8 %23 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %24
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %2, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %21, %for.inc.i.i.for.end.i.i_crit_edge ]
  %reqs8.i.i = getelementptr inbounds %struct.test_config, ptr %.lcssa.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %reqs8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reqs8.i.i, align 4
  tail call void @vfree(ptr noundef %26) #12
  %27 = load ptr, ptr @test_fw_config, align 4
  %reqs9.i.i = getelementptr inbounds %struct.test_config, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %reqs9.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %reqs9.i.i, align 4
  br label %__test_firmware_config_free.exit

__test_firmware_config_free.exit:                 ; preds = %for.end.i.i, %out.__test_firmware_config_free.exit_crit_edge
  %29 = load ptr, ptr @test_fw_config, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @kfree_const(ptr noundef %31) #12
  %32 = load ptr, ptr @test_fw_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %__test_firmware_config_free.exit, %if.end
  %.sink = phi ptr [ %32, %__test_firmware_config_free.exit ], [ %reqs, %if.end ]
  %retval.0 = phi i32 [ %.count.i, %__test_firmware_config_free.exit ], [ 0, %if.end ]
  %33 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %.sink, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_fw_misc_read(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_firmware, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %size, ptr noundef %offset, ptr noundef %2, i32 noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %reqs.i.i = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reqs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.__test_firmware_config_free.exit_crit_edge, label %for.cond.preheader.i.i

entry.__test_firmware_config_free.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__test_firmware_config_free.exit

for.cond.preheader.i.i:                           ; preds = %entry
  %num_requests14.i.i = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %num_requests14.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_requests14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp15.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp15.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %5 = phi ptr [ %10, %for.inc.i.i.for.body.i.i_crit_edge ], [ %0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %reqs3.i.i = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %reqs3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reqs3.i.i, align 4
  %fw.i.i = getelementptr %struct.test_batched_req, ptr %7, i32 %indvars.iv.i.i, i32 3
  %8 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %9) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %10 = load ptr, ptr @test_fw_config, align 4
  %num_requests.i.i = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %num_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_requests.i.i, align 1
  %13 = zext i8 %12 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %13
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %10, %for.inc.i.i.for.end.i.i_crit_edge ]
  %reqs8.i.i = getelementptr inbounds %struct.test_config, ptr %.lcssa.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %reqs8.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reqs8.i.i, align 4
  tail call void @vfree(ptr noundef %15) #12
  %16 = load ptr, ptr @test_fw_config, align 4
  %reqs9.i.i = getelementptr inbounds %struct.test_config, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %reqs9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %reqs9.i.i, align 4
  br label %__test_firmware_config_free.exit

__test_firmware_config_free.exit:                 ; preds = %for.end.i.i, %entry.__test_firmware_config_free.exit_crit_edge
  %18 = load ptr, ptr @test_fw_config, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void @kfree_const(ptr noundef %20) #12
  %21 = load ptr, ptr @test_fw_config, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %call = tail call fastcc i32 @__test_firmware_config_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end4

if.then:                                          ; preds = %__test_firmware_config_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef -12) #13
  br label %out

do.end4:                                          ; preds = %__test_firmware_config_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out

out:                                              ; preds = %do.end4, %if.then
  %ret.0 = phi i32 [ -12, %if.then ], [ %count, %do.end4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i) #12
  %4 = load ptr, ptr @test_fw_config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %call1
  %sub7 = sub i32 4096, %call1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.23, ptr noundef nonnull %6) #12
  br label %if.end

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.24) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4.pn = phi i32 [ %call4, %if.then ], [ %call8, %if.else ]
  %len.0 = add i32 %call4.pn, %call1
  %add.ptr10 = getelementptr i8, ptr %buf, i32 %len.0
  %sub11 = sub i32 4096, %len.0
  %7 = load ptr, ptr @test_fw_config, align 4
  %num_requests = getelementptr inbounds %struct.test_config, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %num_requests to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_requests, align 1
  %conv = zext i8 %9 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.25, i32 noundef %conv) #12
  %add13 = add i32 %call12, %len.0
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %add13
  %sub15 = sub i32 4096, %add13
  %10 = load ptr, ptr @test_fw_config, align 4
  %send_uevent = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %send_uevent to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %send_uevent, align 2, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool16.not, ptr @.str.28, ptr @.str.27
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #12
  %add19 = add i32 %call18, %add13
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %add19
  %sub21 = sub i32 4096, %add19
  %13 = load ptr, ptr @test_fw_config, align 4
  %into_buf = getelementptr inbounds %struct.test_config, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %into_buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %into_buf, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  %cond24 = select i1 %tobool22.not, ptr @.str.31, ptr @.str.30
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond24) #12
  %add26 = add i32 %call25, %add19
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %add26
  %sub28 = sub i32 4096, %add26
  %16 = load ptr, ptr @test_fw_config, align 4
  %buf_size = getelementptr inbounds %struct.test_config, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf_size, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.32, i32 noundef %18) #12
  %add30 = add i32 %call29, %add26
  %add.ptr31 = getelementptr i8, ptr %buf, i32 %add30
  %sub32 = sub i32 4096, %add30
  %19 = load ptr, ptr @test_fw_config, align 4
  %file_offset = getelementptr inbounds %struct.test_config, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %file_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %file_offset, align 4
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.33, i32 noundef %21) #12
  %add34 = add i32 %call33, %add30
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %add34
  %sub36 = sub i32 4096, %add34
  %22 = load ptr, ptr @test_fw_config, align 4
  %partial = getelementptr inbounds %struct.test_config, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %partial to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %partial, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool37.not = icmp eq i8 %24, 0
  %cond39 = select i1 %tobool37.not, ptr @.str.31, ptr @.str.30
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond39) #12
  %add41 = add i32 %call40, %add34
  %add.ptr42 = getelementptr i8, ptr %buf, i32 %add41
  %sub43 = sub i32 4096, %add41
  %25 = load ptr, ptr @test_fw_config, align 4
  %sync_direct = getelementptr inbounds %struct.test_config, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %sync_direct to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sync_direct, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool44.not = icmp eq i8 %27, 0
  %cond46 = select i1 %tobool44.not, ptr @.str.31, ptr @.str.30
  %call47 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond46) #12
  %add48 = add i32 %call47, %add41
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %add48
  %sub50 = sub i32 4096, %add48
  %28 = load ptr, ptr @test_fw_config, align 4
  %read_fw_idx = getelementptr inbounds %struct.test_config, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %read_fw_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %read_fw_idx, align 4
  %conv51 = zext i8 %30 to i32
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.36, i32 noundef %conv51) #12
  %add53 = add i32 %call52, %add48
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %add53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, ptr noundef %2) #12
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_name_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree_const(ptr noundef %2) #12
  %3 = load ptr, ptr @test_fw_config, align 4
  %call.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %.count.i = select i1 %tobool.not.i, i32 -28, i32 %count
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %.count.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_num_requests_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %num_requests = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %num_requests to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_requests, align 1
  %conv.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %conv.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_num_requests_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %out

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  %3 = load ptr, ptr @test_fw_config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #12
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !267
  %call.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.test_dev_config_update_u8.exit_crit_edge

if.end.test_dev_config_update_u8.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_u8.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_requests = getelementptr inbounds %struct.test_config, ptr %3, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %7 = ptrtoint ptr %num_requests to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %num_requests, align 1
  call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %test_dev_config_update_u8.exit

test_dev_config_update_u8.exit:                   ; preds = %if.end.i, %if.end.test_dev_config_update_u8.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i, %if.end.test_dev_config_update_u8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #12
  br label %out

out:                                              ; preds = %test_dev_config_update_u8.exit, %do.end
  %rc.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %test_dev_config_update_u8.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_into_buf_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %into_buf = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %into_buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %into_buf, align 4, !range !266
  %3 = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_into_buf_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %into_buf = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %call.i.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %into_buf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  %.size.i = select i1 %cmp.i, i32 -22, i32 %count
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %.size.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_buf_size_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %buf_size = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buf_size, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.46, i32 noundef %2) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_buf_size_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %out

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  %3 = load ptr, ptr @test_fw_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #12
  %4 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.test_dev_config_update_size_t.exit_crit_edge

if.end.test_dev_config_update_size_t.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_size_t.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buf_size = getelementptr inbounds %struct.test_config, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new.i, align 4
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf_size, align 4
  call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %test_dev_config_update_size_t.exit

test_dev_config_update_size_t.exit:               ; preds = %if.end.i, %if.end.test_dev_config_update_size_t.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %if.end.test_dev_config_update_size_t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #12
  br label %out

out:                                              ; preds = %test_dev_config_update_size_t.exit, %do.end
  %rc.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %test_dev_config_update_size_t.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_file_offset_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %file_offset = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %file_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %file_offset, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.46, i32 noundef %2) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_file_offset_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %new.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #13
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %out

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  %3 = load ptr, ptr @test_fw_config, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new.i) #12
  %4 = ptrtoint ptr %new.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.test_dev_config_update_size_t.exit_crit_edge

if.end.test_dev_config_update_size_t.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_size_t.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %file_offset = getelementptr inbounds %struct.test_config, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %5 = ptrtoint ptr %new.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new.i, align 4
  %7 = ptrtoint ptr %file_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %file_offset, align 4
  call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %test_dev_config_update_size_t.exit

test_dev_config_update_size_t.exit:               ; preds = %if.end.i, %if.end.test_dev_config_update_size_t.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %if.end.test_dev_config_update_size_t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new.i) #12
  br label %out

out:                                              ; preds = %test_dev_config_update_size_t.exit, %do.end
  %rc.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %test_dev_config_update_size_t.exit ]
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_partial_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %partial = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %partial to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %partial, align 4, !range !266
  %3 = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_partial_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %partial = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %call.i.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %partial) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  %.size.i = select i1 %cmp.i, i32 -22, i32 %count
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %.size.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_sync_direct_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %sync_direct = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %sync_direct to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sync_direct, align 1, !range !266
  %3 = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_sync_direct_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %sync_direct = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %call.i.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %sync_direct) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  %.size.i = select i1 %cmp.i, i32 -22, i32 %count
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %.size.i, i32 %count)
  %cmp = icmp eq i32 %.size.i, %count
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @test_fw_config, align 4
  %sync_direct1 = getelementptr inbounds %struct.test_config, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sync_direct1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sync_direct1, align 1, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @request_firmware, ptr @request_firmware_direct
  %req_firmware = getelementptr inbounds %struct.test_config, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %req_firmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond, ptr %req_firmware, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %.size.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_send_uevent_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %send_uevent = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %send_uevent to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %send_uevent, align 2, !range !266
  %3 = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %3) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_send_uevent_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %send_uevent = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %call.i.i = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %send_uevent) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  %.size.i = select i1 %cmp.i, i32 -22, i32 %count
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %.size.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_read_fw_idx_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %read_fw_idx = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %read_fw_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %read_fw_idx, align 4
  %conv.i = zext i8 %2 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %conv.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_read_fw_idx_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #12
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !267
  %call.i = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.test_dev_config_update_u8.exit_crit_edge

entry.test_dev_config_update_u8.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_dev_config_update_u8.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_fw_idx = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  %4 = ptrtoint ptr %read_fw_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %read_fw_idx, align 1
  call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %test_dev_config_update_u8.exit

test_dev_config_update_u8.exit:                   ; preds = %if.end.i, %entry.test_dev_config_update_u8.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i, %entry.test_dev_config_update_u8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_request_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %call) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_firmware, align 4
  tail call void @release_firmware(ptr noundef %0) #12
  store ptr null, ptr @test_firmware, align 4
  %call2 = tail call i32 @request_firmware(ptr noundef nonnull @test_firmware, ptr noundef nonnull %call, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end13, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %call, i32 noundef %call2) #13
  br label %out

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @test_firmware, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %3) #13
  br label %out

out:                                              ; preds = %do.end13, %do.end7
  %rc.0 = phi i32 [ %call2, %do.end7 ], [ %count, %do.end13 ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_async_request_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %call) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_firmware, align 4
  tail call void @release_firmware(ptr noundef %0) #12
  store ptr null, ptr @test_firmware, align 4
  %call2 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %call, ptr noundef %dev, i32 noundef 3264, ptr noundef null, ptr noundef nonnull @trigger_async_request_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %call, i32 noundef %call2) #13
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %out

if.end10:                                         ; preds = %do.end
  tail call void @kfree(ptr noundef nonnull %call) #12
  tail call void @wait_for_completion(ptr noundef nonnull @async_fw_done) #12
  %1 = load ptr, ptr @test_firmware, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end20, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %3) #13
  br label %out

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  br label %out

out:                                              ; preds = %do.end20, %do.end15, %do.end7
  %rc.0 = phi i32 [ %call2, %do.end7 ], [ %count, %do.end15 ], [ -12, %do.end20 ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_async_request_cb(ptr noundef %fw, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %fw, ptr @test_firmware, align 4
  tail call void @complete(ptr noundef nonnull @async_fw_done) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_custom_fallback_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %call) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_firmware, align 4
  tail call void @release_firmware(ptr noundef %0) #12
  store ptr null, ptr @test_firmware, align 4
  %call2 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext false, ptr noundef nonnull %call, ptr noundef %dev, i32 noundef 3264, ptr noundef null, ptr noundef nonnull @trigger_async_request_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %call, i32 noundef %call2) #13
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %out

if.end10:                                         ; preds = %do.end
  tail call void @kfree(ptr noundef nonnull %call) #12
  tail call void @wait_for_completion(ptr noundef nonnull @async_fw_done) #12
  %1 = load ptr, ptr @test_firmware, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end20, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %3) #13
  br label %out

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #13
  br label %out

out:                                              ; preds = %do.end20, %do.end15, %do.end7
  %rc.0 = phi i32 [ %call2, %do.end7 ], [ %count, %do.end15 ], [ -19, %do.end20 ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_batched_requests_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %num_requests = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %num_requests to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_requests, align 1
  %conv = zext i8 %2 to i32
  %3 = mul nuw nsw i32 %conv, 168
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %3) #14
  %4 = load ptr, ptr @test_fw_config, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %do.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %num_requests3 = getelementptr inbounds %struct.test_config, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %num_requests3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_requests3, align 1
  %conv4 = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %7, i32 noundef %conv4) #13
  %10 = load ptr, ptr @test_fw_config, align 4
  %num_requests798 = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %num_requests798 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_requests798, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp99.not = icmp eq i8 %12, 0
  br i1 %cmp99.not, label %do.end.out_bail_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_bail_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bail

for.cond:                                         ; preds = %if.end20.thread
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %13 = load ptr, ptr @test_fw_config, align 4
  %num_requests7 = getelementptr inbounds %struct.test_config, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %num_requests7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_requests7, align 1
  %16 = zext i8 %15 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %16
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.out_bail_crit_edge

for.cond.out_bail_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bail

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %17 = phi ptr [ %13, %for.cond.for.body_crit_edge ], [ %10, %do.end.for.body_crit_edge ]
  %reqs10 = getelementptr inbounds %struct.test_config, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %reqs10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reqs10, align 4
  %arrayidx = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv
  %fw = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 3
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fw, align 4
  %21 = trunc i32 %indvars.iv to i8
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %17, align 4
  %name12 = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 4
  %25 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %name12, align 4
  %dev13 = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 7
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev13, align 4
  %completion = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 5
  %27 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @init_completion.__key) #12
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 4
  %conv15 = zext i8 %29 to i32
  %call16 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @test_fw_run_batch_request, ptr noundef %arrayidx, i32 noundef -1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.14, i32 noundef %conv15) #12
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end20, label %if.end20.thread

if.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %task = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 6
  %30 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call16, ptr %task, align 4
  br label %do.end30

if.end20.thread:                                  ; preds = %for.body
  %call19 = tail call i32 @wake_up_process(ptr noundef %call16) #12
  %task87 = getelementptr %struct.test_batched_req, ptr %19, i32 %indvars.iv, i32 6
  %31 = ptrtoint ptr %task87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16, ptr %task87, align 4
  %tobool23.not88 = icmp eq ptr %call16, null
  br i1 %tobool23.not88, label %if.end20.thread.do.end30_crit_edge, label %for.cond

if.end20.thread.do.end30_crit_edge:               ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end30:                                         ; preds = %if.end20.thread.do.end30_crit_edge, %if.end20
  %task90 = phi ptr [ %task, %if.end20 ], [ %task87, %if.end20.thread.do.end30_crit_edge ]
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 4
  %conv33 = zext i8 %33 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, i32 noundef %conv33) #13
  %34 = ptrtoint ptr %task90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %task90, align 4
  br label %out_bail

out_bail:                                         ; preds = %do.end30, %for.cond.out_bail_crit_edge, %do.end.out_bail_crit_edge
  %rc.0 = phi i32 [ -12, %do.end30 ], [ %count, %do.end.out_bail_crit_edge ], [ %count, %for.cond.out_bail_crit_edge ]
  %35 = load ptr, ptr @test_fw_config, align 4
  %num_requests39101 = getelementptr inbounds %struct.test_config, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %num_requests39101 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_requests39101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp41102.not = icmp eq i8 %37, 0
  br i1 %cmp41102.not, label %out_bail.for.end57_crit_edge, label %out_bail.for.body43_crit_edge

out_bail.for.body43_crit_edge:                    ; preds = %out_bail
  br label %for.body43

out_bail.for.end57_crit_edge:                     ; preds = %out_bail
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end57

for.body43:                                       ; preds = %for.inc55.for.body43_crit_edge, %out_bail.for.body43_crit_edge
  %indvars.iv116 = phi i32 [ %indvars.iv.next117, %for.inc55.for.body43_crit_edge ], [ 0, %out_bail.for.body43_crit_edge ]
  %38 = phi ptr [ %45, %for.inc55.for.body43_crit_edge ], [ %35, %out_bail.for.body43_crit_edge ]
  %reqs44 = getelementptr inbounds %struct.test_config, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %reqs44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reqs44, align 4
  %task47 = getelementptr %struct.test_batched_req, ptr %40, i32 %indvars.iv116, i32 6
  %41 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task47, align 4
  %tobool48.not = icmp eq ptr %42, null
  br i1 %tobool48.not, label %lor.lhs.false49, label %for.body43.if.then52_crit_edge

for.body43.if.then52_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

lor.lhs.false49:                                  ; preds = %for.body43
  %sent = getelementptr %struct.test_batched_req, ptr %40, i32 %indvars.iv116, i32 2
  %43 = ptrtoint ptr %sent to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %sent, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool50.not = icmp eq i8 %44, 0
  br i1 %tobool50.not, label %lor.lhs.false49.for.inc55_crit_edge, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

lor.lhs.false49.for.inc55_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc55

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %for.body43.if.then52_crit_edge
  %completion53 = getelementptr %struct.test_batched_req, ptr %40, i32 %indvars.iv116, i32 5
  tail call void @wait_for_completion(ptr noundef %completion53) #12
  br label %for.inc55

for.inc55:                                        ; preds = %if.then52, %lor.lhs.false49.for.inc55_crit_edge
  %indvars.iv.next117 = add nuw nsw i32 %indvars.iv116, 1
  %45 = load ptr, ptr @test_fw_config, align 4
  %num_requests39 = getelementptr inbounds %struct.test_config, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %num_requests39 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_requests39, align 1
  %48 = zext i8 %47 to i32
  %cmp41 = icmp ult i32 %indvars.iv.next117, %48
  br i1 %cmp41, label %for.inc55.for.body43_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end57

for.inc55.for.body43_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %out_bail.for.end57_crit_edge
  %.lcssa = phi ptr [ %35, %out_bail.for.end57_crit_edge ], [ %45, %for.inc55.for.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp58 = icmp slt i32 %rc.0, 0
  br i1 %cmp58, label %if.then60, label %for.end57.out_unlock_crit_edge

for.end57.out_unlock_crit_edge:                   ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then60:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  %test_result = getelementptr inbounds %struct.test_config, ptr %.lcssa, i32 0, i32 10
  %49 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rc.0, ptr %test_result, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.then60, %for.end57.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.then60 ], [ %rc.0, %for.end57.out_unlock_crit_edge ], [ -12, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_fw_run_batch_request(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %data, null
  %0 = load ptr, ptr @test_fw_config, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %test_result = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -22, ptr %test_result, align 4
  br label %cleanup52

if.end:                                           ; preds = %entry
  %into_buf = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %into_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %into_buf, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else20, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then2.cleanup52_crit_edge, label %if.end5

if.then2.cleanup52_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end5:                                          ; preds = %if.then2
  %5 = load ptr, ptr @test_fw_config, align 4
  %partial = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %partial to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %partial, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %fw9 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 3
  %name10 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name10, align 4
  %dev11 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  %buf_size12 = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %buf_size12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size12, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %file_offset = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %file_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %file_offset, align 4
  %call8 = tail call i32 @request_partial_firmware_into_buf(ptr noundef %fw9, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %call7.i.i, i32 noundef %13, i32 noundef %15) #12
  br label %if.end15

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @request_firmware_into_buf(ptr noundef %fw9, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %call7.i.i, i32 noundef %13) #12
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %call8.sink = phi i32 [ %call13, %if.else ], [ %call8, %if.then7 ]
  %16 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8.sink, ptr %16, align 4
  %fw16 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %fw16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw16, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.end26

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %req_firmware = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 11
  %20 = ptrtoint ptr %req_firmware to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req_firmware, align 4
  %fw21 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 3
  %name22 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name22, align 4
  %dev23 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 7
  %24 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev23, align 4
  %call24 = tail call i32 %21(ptr noundef %fw21, ptr noundef %23, ptr noundef %25) #12
  %rc25 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %rc25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call24, ptr %rc25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then18, %if.end15.if.end26_crit_edge
  %rc27 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %rc27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rc27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %if.else38, label %do.end

do.end:                                           ; preds = %if.end26
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 4
  %conv = zext i8 %30 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %conv, i32 noundef %28) #13
  %31 = load ptr, ptr @test_fw_config, align 4
  %test_result32 = getelementptr inbounds %struct.test_config, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %test_result32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %test_result32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool33.not = icmp eq i32 %33, 0
  br i1 %tobool33.not, label %if.then34, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %rc27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rc27, align 4
  %36 = ptrtoint ptr %test_result32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %test_result32, align 4
  br label %if.end51

if.else38:                                        ; preds = %if.end26
  %fw39 = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %fw39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw39, align 4
  %tobool40.not = icmp eq ptr %38, null
  br i1 %tobool40.not, label %if.else38.if.end51_crit_edge, label %if.then41

if.else38.if.end51_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %sent = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %sent to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %sent, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 4
  %conv47 = zext i8 %41 to i32
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %38, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv47, i32 noundef %43) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then41, %if.else38.if.end51_crit_edge, %if.then34, %do.end.if.end51_crit_edge
  %completion = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %completion) #12
  %task = getelementptr inbounds %struct.test_batched_req, ptr %data, i32 0, i32 6
  %44 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %task, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end51, %if.then2.cleanup52_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.end51 ], [ -22, %if.then ], [ -28, %if.then2.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_partial_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_into_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trigger_batched_requests_async_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %num_requests = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %num_requests to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_requests, align 1
  %conv = zext i8 %2 to i32
  %3 = mul nuw nsw i32 %conv, 168
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %3) #14
  %4 = load ptr, ptr @test_fw_config, align 4
  %reqs = getelementptr inbounds %struct.test_config, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %num_requests3 = getelementptr inbounds %struct.test_config, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %num_requests3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_requests3, align 1
  %conv4 = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %7, i32 noundef %conv4) #13
  %10 = load ptr, ptr @test_fw_config, align 4
  %send_uevent6 = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %send_uevent6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %send_uevent6, align 2, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7 = icmp ne i8 %12, 0
  %num_requests1175 = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 7
  %13 = ptrtoint ptr %num_requests1175 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_requests1175, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp76.not = icmp eq i8 %14, 0
  br i1 %cmp76.not, label %do.end.out_bail_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.out_bail_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bail

for.body:                                         ; preds = %if.else.for.body_crit_edge, %do.end.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.else.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %15 = phi ptr [ %29, %if.else.for.body_crit_edge ], [ %10, %do.end.for.body_crit_edge ]
  %reqs14 = getelementptr inbounds %struct.test_config, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %reqs14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reqs14, align 4
  %arrayidx = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %name16 = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 4
  %20 = ptrtoint ptr %name16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %name16, align 4
  %fw = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 3
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fw, align 4
  %22 = trunc i32 %indvars.iv to i8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx, align 4
  %completion = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 5
  %24 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @init_completion.__key) #12
  %25 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name16, align 4
  %call19 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext %tobool7, ptr noundef %26, ptr noundef %dev, i32 noundef 3264, ptr noundef %arrayidx, ptr noundef nonnull @trigger_batched_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %do.end24

do.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %indvars.iv, i32 noundef %call19) #13
  %rc28 = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 1
  %27 = ptrtoint ptr %rc28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call19, ptr %rc28, align 4
  br label %out_bail

if.else:                                          ; preds = %for.body
  %sent = getelementptr %struct.test_batched_req, ptr %17, i32 %indvars.iv, i32 2
  %28 = ptrtoint ptr %sent to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %sent, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %29 = load ptr, ptr @test_fw_config, align 4
  %num_requests11 = getelementptr inbounds %struct.test_config, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %num_requests11 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_requests11, align 1
  %32 = zext i8 %31 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %32
  br i1 %cmp, label %if.else.for.body_crit_edge, label %if.else.out_bail_crit_edge

if.else.out_bail_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_bail

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out_bail:                                         ; preds = %if.else.out_bail_crit_edge, %do.end24, %do.end.out_bail_crit_edge
  %rc.0 = phi i32 [ %call19, %do.end24 ], [ %count, %do.end.out_bail_crit_edge ], [ %count, %if.else.out_bail_crit_edge ]
  %33 = load ptr, ptr @test_fw_config, align 4
  %num_requests3279 = getelementptr inbounds %struct.test_config, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %num_requests3279 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_requests3279, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp3480.not = icmp eq i8 %35, 0
  br i1 %cmp3480.not, label %out_bail.for.end47_crit_edge, label %out_bail.for.body36_crit_edge

out_bail.for.body36_crit_edge:                    ; preds = %out_bail
  br label %for.body36

out_bail.for.end47_crit_edge:                     ; preds = %out_bail
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body36:                                       ; preds = %for.inc45.for.body36_crit_edge, %out_bail.for.body36_crit_edge
  %indvars.iv87 = phi i32 [ %indvars.iv.next88, %for.inc45.for.body36_crit_edge ], [ 0, %out_bail.for.body36_crit_edge ]
  %36 = phi ptr [ %41, %for.inc45.for.body36_crit_edge ], [ %33, %out_bail.for.body36_crit_edge ]
  %reqs37 = getelementptr inbounds %struct.test_config, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %reqs37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reqs37, align 4
  %sent40 = getelementptr %struct.test_batched_req, ptr %38, i32 %indvars.iv87, i32 2
  %39 = ptrtoint ptr %sent40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sent40, align 4, !range !266
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool41.not = icmp eq i8 %40, 0
  br i1 %tobool41.not, label %for.body36.for.inc45_crit_edge, label %if.then42

for.body36.for.inc45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.then42:                                        ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  %completion43 = getelementptr %struct.test_batched_req, ptr %38, i32 %indvars.iv87, i32 5
  tail call void @wait_for_completion(ptr noundef %completion43) #12
  br label %for.inc45

for.inc45:                                        ; preds = %if.then42, %for.body36.for.inc45_crit_edge
  %indvars.iv.next88 = add nuw nsw i32 %indvars.iv87, 1
  %41 = load ptr, ptr @test_fw_config, align 4
  %num_requests32 = getelementptr inbounds %struct.test_config, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %num_requests32 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_requests32, align 1
  %44 = zext i8 %43 to i32
  %cmp34 = icmp ult i32 %indvars.iv.next88, %44
  br i1 %cmp34, label %for.inc45.for.body36_crit_edge, label %for.inc45.for.end47_crit_edge

for.inc45.for.end47_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.inc45.for.body36_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end47:                                        ; preds = %for.inc45.for.end47_crit_edge, %out_bail.for.end47_crit_edge
  %.lcssa = phi ptr [ %33, %out_bail.for.end47_crit_edge ], [ %41, %for.inc45.for.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp48 = icmp slt i32 %rc.0, 0
  br i1 %cmp48, label %if.then50, label %for.end47.out_crit_edge

for.end47.out_crit_edge:                          ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then50:                                        ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  %test_result = getelementptr inbounds %struct.test_config, ptr %.lcssa, i32 0, i32 10
  %45 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rc.0, ptr %test_result, align 4
  br label %out

out:                                              ; preds = %if.then50, %for.end47.out_crit_edge, %entry.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.then50 ], [ %rc.0, %for.end47.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trigger_batched_cb(ptr noundef %fw, ptr noundef %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %test_result = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %test_result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -22, ptr %test_result, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 2000) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %fw4 = getelementptr inbounds %struct.test_batched_req, ptr %context, i32 0, i32 3
  %4 = ptrtoint ptr %fw4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw, ptr %fw4, align 4
  %tobool5.not = icmp eq ptr %fw, null
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  %5 = load ptr, ptr @test_fw_config, align 4
  %test_result6 = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %test_result6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %test_result6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %test_result6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2, ptr %test_result6, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %completion = getelementptr inbounds %struct.test_batched_req, ptr %context, i32 0, i32 5
  tail call void @complete(ptr noundef %completion) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release_all_firmware_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %reqs.i.i = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %reqs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reqs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.test_release_all_firmware.exit_crit_edge, label %for.cond.preheader.i.i

entry.test_release_all_firmware.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_release_all_firmware.exit

for.cond.preheader.i.i:                           ; preds = %entry
  %num_requests14.i.i = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %num_requests14.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_requests14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp15.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp15.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %5 = phi ptr [ %10, %for.inc.i.i.for.body.i.i_crit_edge ], [ %0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %reqs3.i.i = getelementptr inbounds %struct.test_config, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %reqs3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reqs3.i.i, align 4
  %fw.i.i = getelementptr %struct.test_batched_req, ptr %7, i32 %indvars.iv.i.i, i32 3
  %8 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %9) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then5.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %10 = load ptr, ptr @test_fw_config, align 4
  %num_requests.i.i = getelementptr inbounds %struct.test_config, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %num_requests.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_requests.i.i, align 1
  %13 = zext i8 %12 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %13
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %10, %for.inc.i.i.for.end.i.i_crit_edge ]
  %reqs8.i.i = getelementptr inbounds %struct.test_config, ptr %.lcssa.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %reqs8.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reqs8.i.i, align 4
  tail call void @vfree(ptr noundef %15) #12
  %16 = load ptr, ptr @test_fw_config, align 4
  %reqs9.i.i = getelementptr inbounds %struct.test_config, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %reqs9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %reqs9.i.i, align 4
  br label %test_release_all_firmware.exit

test_release_all_firmware.exit:                   ; preds = %for.end.i.i, %entry.test_release_all_firmware.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_result_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @test_fw_config, align 4
  %test_result = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %test_result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %test_result, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %2) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_firmware_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @test_fw_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @test_fw_config, align 4
  %read_fw_idx = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %read_fw_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %read_fw_idx, align 4
  %conv = zext i8 %2 to i32
  %num_requests = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %num_requests to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_requests, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.not = icmp ult i8 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %reqs = getelementptr inbounds %struct.test_config, ptr %0, i32 0, i32 9
  %5 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reqs, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %fw = getelementptr %struct.test_batched_req, ptr %6, i32 %conv, i32 3
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %do.end, label %do.end12

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %conv) #13
  br label %out

do.end12:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv, i32 noundef %10) #13
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp19 = icmp ugt i32 %14, 4096
  br i1 %cmp19, label %do.end24, label %if.end27

do.end24:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #13
  br label %out

if.end27:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = call ptr @memcpy(ptr %buf, ptr %16, i32 %14)
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  br label %out

out:                                              ; preds = %if.end27, %do.end24, %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %do.end24 ], [ %21, %if.end27 ], [ -2, %do.end ], [ -34, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @test_fw_mutex) #12
  ret i32 %rc.0
}

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !46, !48, !49, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !104, !106, !108, !109, !110, !111, !113, !114, !116, !118, !119, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !205, !206, !208, !210, !211, !212, !214, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257}
!llvm.module.flags = !{!258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__UNIQUE_ID_import_ns223, !1, !"__UNIQUE_ID_import_ns223", i1 false, i1 false}
!1 = !{!"../lib/test_firmware.c", i32 29, i32 1}
!2 = !{ptr @__initcall__kmod_test_firmware__224_1124_test_firmware_init6, !3, !"__initcall__kmod_test_firmware__224_1124_test_firmware_init6", i1 false, i1 false}
!3 = !{!"../lib/test_firmware.c", i32 1124, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/test_firmware.c", i32 1135, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @test_firmware_exit._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @test_firmware_exit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__exitcall_test_firmware_exit, !11, !"__exitcall_test_firmware_exit", i1 false, i1 false}
!11 = !{!"../lib/test_firmware.c", i32 1138, i32 1}
!12 = !{ptr @__UNIQUE_ID_author225, !13, !"__UNIQUE_ID_author225", i1 false, i1 false}
!13 = !{!"../lib/test_firmware.c", i32 1140, i32 1}
!14 = !{ptr @__UNIQUE_ID_file226, !15, !"__UNIQUE_ID_file226", i1 false, i1 false}
!15 = !{!"../lib/test_firmware.c", i32 1141, i32 1}
!16 = !{ptr @__UNIQUE_ID_license227, !15, !"__UNIQUE_ID_license227", i1 false, i1 false}
!17 = !{ptr @test_firmware, !18, !"test_firmware", i1 false, i1 false}
!18 = !{!"../lib/test_firmware.c", i32 36, i32 31}
!19 = !{ptr @test_fw_config, !20, !"test_fw_config", i1 false, i1 false}
!20 = !{!"../lib/test_firmware.c", i32 115, i32 28}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test_firmware.c", i32 1108, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @test_firmware_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @test_firmware_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/test_firmware.c", i32 1115, i32 3}
!28 = !{ptr @test_firmware_init._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @test_firmware_init._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/test_firmware.c", i32 1119, i32 2}
!32 = !{ptr @test_firmware_init._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @test_firmware_init._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/test_firmware.c", i32 186, i32 42}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_firmware.c", i32 35, i32 8}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @test_fw_mutex, !37, !"test_fw_mutex", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_firmware.c", i32 1092, i32 20}
!42 = !{ptr @test_fw_misc_device, !43, !"test_fw_misc_device", i1 false, i1 false}
!43 = !{!"../lib/test_firmware.c", i32 1090, i32 26}
!44 = !{ptr @test_fw_fops, !45, !"test_fw_fops", i1 false, i1 false}
!45 = !{!"../lib/test_firmware.c", i32 131, i32 37}
!46 = !{ptr @test_dev_groups, !47, !"test_dev_groups", i1 false, i1 false}
!47 = !{!"../lib/test_firmware.c", i32 1088, i32 1}
!48 = !{ptr @test_dev_group, !47, !"test_dev_group", i1 false, i1 false}
!49 = !{ptr @test_dev_attrs, !50, !"test_dev_attrs", i1 false, i1 false}
!50 = !{!"../lib/test_firmware.c", i32 1056, i32 26}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_firmware.c", i32 235, i32 8}
!53 = !{ptr @dev_attr_reset, !52, !"dev_attr_reset", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/test_firmware.c", i32 222, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @reset_store._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @reset_store._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_firmware.c", i32 227, i32 2}
!61 = !{ptr @reset_store._entry.18, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @reset_store._entry_ptr.20, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_firmware.c", i32 285, i32 8}
!65 = !{ptr @dev_attr_config, !64, !"dev_attr_config", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_firmware.c", i32 246, i32 4}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/test_firmware.c", i32 251, i32 5}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/test_firmware.c", i32 255, i32 5}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/test_firmware.c", i32 258, i32 4}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/test_firmware.c", i32 261, i32 4}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/test_firmware.c", i32 263, i32 4}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/test_firmware.c", i32 264, i32 4}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/test_firmware.c", i32 266, i32 4}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/test_firmware.c", i32 267, i32 31}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../lib/test_firmware.c", i32 267, i32 40}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../lib/test_firmware.c", i32 269, i32 4}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/test_firmware.c", i32 271, i32 4}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../lib/test_firmware.c", i32 273, i32 4}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../lib/test_firmware.c", i32 276, i32 4}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/test_firmware.c", i32 279, i32 4}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../lib/test_firmware.c", i32 393, i32 8}
!98 = !{ptr @dev_attr_config_name, !97, !"dev_attr_config_name", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/test_firmware.c", i32 310, i32 33}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/test_firmware.c", i32 423, i32 8}
!103 = !{ptr @dev_attr_config_num_requests, !102, !"dev_attr_config_num_requests", i1 false, i1 false}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/test_firmware.c", i32 384, i32 34}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/test_firmware.c", i32 403, i32 3}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @config_num_requests_store._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @config_num_requests_store._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/test_firmware.c", i32 440, i32 8}
!113 = !{ptr @dev_attr_config_into_buf, !112, !"dev_attr_config_into_buf", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../lib/test_firmware.c", i32 333, i32 34}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../lib/test_firmware.c", i32 470, i32 8}
!118 = !{ptr @dev_attr_config_buf_size, !117, !"dev_attr_config_buf_size", i1 false, i1 false}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/test_firmware.c", i32 357, i32 34}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test_firmware.c", i32 450, i32 3}
!123 = !{ptr @config_buf_size_store._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @config_buf_size_store._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test_firmware.c", i32 500, i32 8}
!127 = !{ptr @dev_attr_config_file_offset, !126, !"dev_attr_config_file_offset", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../lib/test_firmware.c", i32 480, i32 3}
!130 = !{ptr @config_file_offset_store._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @config_file_offset_store._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../lib/test_firmware.c", i32 517, i32 8}
!134 = !{ptr @dev_attr_config_partial, !133, !"dev_attr_config_partial", i1 false, i1 false}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test_firmware.c", i32 539, i32 8}
!137 = !{ptr @dev_attr_config_sync_direct, !136, !"dev_attr_config_sync_direct", i1 false, i1 false}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../lib/test_firmware.c", i32 555, i32 8}
!140 = !{ptr @dev_attr_config_send_uevent, !139, !"dev_attr_config_send_uevent", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../lib/test_firmware.c", i32 571, i32 8}
!143 = !{ptr @dev_attr_config_read_fw_idx, !142, !"dev_attr_config_read_fw_idx", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../lib/test_firmware.c", i32 605, i32 8}
!146 = !{ptr @dev_attr_trigger_request, !145, !"dev_attr_trigger_request", i1 false, i1 false}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test_firmware.c", i32 585, i32 2}
!149 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @trigger_request_store._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @trigger_request_store._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../lib/test_firmware.c", i32 592, i32 3}
!154 = !{ptr @trigger_request_store._entry.57, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @trigger_request_store._entry_ptr.59, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_firmware.c", i32 595, i32 2}
!158 = !{ptr @trigger_request_store._entry.60, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @trigger_request_store._entry_ptr.62, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../lib/test_firmware.c", i32 714, i32 8}
!162 = !{ptr @dev_attr_trigger_async_request, !161, !"dev_attr_trigger_async_request", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../lib/test_firmware.c", i32 684, i32 2}
!165 = !{ptr @trigger_async_request_store._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @trigger_async_request_store._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../lib/test_firmware.c", i32 692, i32 3}
!169 = !{ptr @trigger_async_request_store._entry.65, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @trigger_async_request_store._entry_ptr.67, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @trigger_async_request_store._entry.68, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../lib/test_firmware.c", i32 702, i32 3}
!173 = !{ptr @trigger_async_request_store._entry_ptr.69, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_firmware.c", i32 705, i32 3}
!176 = !{ptr @trigger_async_request_store._entry.70, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @trigger_async_request_store._entry_ptr.72, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../lib/test_firmware.c", i32 665, i32 8}
!180 = !{ptr @async_fw_done, !179, !"async_fw_done", i1 false, i1 false}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../lib/test_firmware.c", i32 758, i32 8}
!183 = !{ptr @dev_attr_trigger_custom_fallback, !182, !"dev_attr_trigger_custom_fallback", i1 false, i1 false}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../lib/test_firmware.c", i32 727, i32 2}
!186 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @trigger_custom_fallback_store._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @trigger_custom_fallback_store._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @trigger_custom_fallback_store._entry.77, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../lib/test_firmware.c", i32 736, i32 3}
!191 = !{ptr @trigger_custom_fallback_store._entry_ptr.78, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @trigger_custom_fallback_store._entry.79, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../lib/test_firmware.c", i32 746, i32 3}
!194 = !{ptr @trigger_custom_fallback_store._entry_ptr.80, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @trigger_custom_fallback_store._entry.81, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../lib/test_firmware.c", i32 749, i32 3}
!197 = !{ptr @trigger_custom_fallback_store._entry_ptr.82, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../lib/test_firmware.c", i32 886, i32 8}
!200 = !{ptr @dev_attr_trigger_batched_requests, !199, !"dev_attr_trigger_batched_requests", i1 false, i1 false}
!201 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../lib/test_firmware.c", i32 840, i32 2}
!203 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @trigger_batched_requests_store._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @trigger_batched_requests_store._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.86, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../lib/test_firmware.c", i32 850, i32 15}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../lib/test_firmware.c", i32 853, i32 4}
!210 = !{ptr @trigger_batched_requests_store._entry.87, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @trigger_batched_requests_store._entry_ptr.89, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @init_completion.__key, !213, !"__key", i1 false, i1 false}
!213 = !{!"../include/linux/completion.h", i32 87, i32 2}
!214 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.91, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../lib/test_firmware.c", i32 800, i32 3}
!217 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @test_fw_run_batch_request._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @test_fw_run_batch_request._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../lib/test_firmware.c", i32 806, i32 3}
!222 = !{ptr @test_fw_run_batch_request._entry.93, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @test_fw_run_batch_request._entry_ptr.95, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.96, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../lib/test_firmware.c", i32 990, i32 8}
!226 = !{ptr @dev_attr_trigger_batched_requests_async, !225, !"dev_attr_trigger_batched_requests_async", i1 false, i1 false}
!227 = !{ptr @.str.97, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../lib/test_firmware.c", i32 938, i32 2}
!229 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @trigger_batched_requests_async_store._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @trigger_batched_requests_async_store._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../lib/test_firmware.c", i32 955, i32 4}
!234 = !{ptr @trigger_batched_requests_async_store._entry.99, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @trigger_batched_requests_async_store._entry_ptr.101, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test_firmware.c", i32 1007, i32 8}
!238 = !{ptr @dev_attr_release_all_firmware, !237, !"dev_attr_release_all_firmware", i1 false, i1 false}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../lib/test_firmware.c", i32 998, i32 8}
!241 = !{ptr @dev_attr_test_result, !240, !"dev_attr_test_result", i1 false, i1 false}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../lib/test_firmware.c", i32 1052, i32 8}
!244 = !{ptr @dev_attr_read_firmware, !243, !"dev_attr_read_firmware", i1 false, i1 false}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../lib/test_firmware.c", i32 1032, i32 3}
!247 = !{ptr @.str.106, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @read_firmware_show._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @read_firmware_show._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test_firmware.c", i32 1037, i32 2}
!252 = !{ptr @read_firmware_show._entry.107, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @read_firmware_show._entry_ptr.109, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.111, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test_firmware.c", i32 1040, i32 3}
!256 = !{ptr @read_firmware_show._entry.110, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @read_firmware_show._entry_ptr.112, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{i32 1, !"wchar_size", i32 2}
!259 = !{i32 1, !"min_enum_size", i32 4}
!260 = !{i32 8, !"branch-target-enforcement", i32 0}
!261 = !{i32 8, !"sign-return-address", i32 0}
!262 = !{i32 8, !"sign-return-address-all", i32 0}
!263 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!264 = !{i32 7, !"uwtable", i32 1}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i8 0, i8 2}
!267 = !{!"auto-init"}
