; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sdio.c_pt.bc'
source_filename = "../drivers/mmc/core/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/core/sdio.c\00", [40 x i8] zeroinitializer }, align 32
@mmc_sdio_ops = internal constant { %struct.mmc_bus_ops, [44 x i8] } { %struct.mmc_bus_ops { ptr @mmc_sdio_remove, ptr @mmc_sdio_detect, ptr @mmc_sdio_pre_suspend, ptr @mmc_sdio_suspend, ptr @mmc_sdio_resume, ptr @mmc_sdio_runtime_suspend, ptr @mmc_sdio_runtime_resume, ptr @mmc_sdio_alive, ptr null, ptr @mmc_sdio_hw_reset, ptr @mmc_sdio_sw_reset, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmc_attach_sdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: error %d whilst initialising SDIO card\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_attach_sdio\00", [16 x i8] zeroinitializer }, align 32
@mmc_attach_sdio._entry_ptr = internal global ptr @mmc_attach_sdio._entry, section ".printk_index", align 4
@mmc_sdio_pre_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 1006, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"missing suspend/resume ops for non-removable SDIO card\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_sdio_pre_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_sdio_pre_suspend._entry_ptr = internal global ptr @mmc_sdio_pre_suspend._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sdio_enable_wide._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: SDIO_CCCR_IF is invalid: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio_enable_wide\00", [47 x i8] zeroinitializer }, align 32
@sdio_enable_wide._entry_ptr = internal global ptr @sdio_enable_wide._entry, section ".printk_index", align 4
@mmc_sdio_init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Skipping voltage switch\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_sdio_init_card\00", [45 x i8] zeroinitializer }, align 32
@mmc_sdio_init_card._entry_ptr = internal global ptr @mmc_sdio_init_card._entry, section ".printk_index", align 4
@use_spi_crc = external dso_local local_unnamed_addr global i8, align 1
@sdio_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @sdio_std_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdio_card_init_methods = internal constant { [2 x %struct.mmc_fixup], [48 x i8] } { [2 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 -1, i16 -1, i32 -1, ptr @.str.32, ptr @wl1251_quirk, i32 0 }, %struct.mmc_fixup zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sdio_fixup_methods = internal constant { [8 x %struct.mmc_fixup], [96 x i8] } { [8 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, ptr null, ptr @add_quirk, i32 16 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 4172, i16 -28570, i32 -1, ptr null, ptr @add_quirk, i32 32 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, ptr null, ptr @add_quirk, i32 16 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 151, i16 16502, i32 -1, ptr null, ptr @add_quirk, i32 32 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 32, i16 8832, i32 -1, ptr null, ptr @add_quirk, i32 256 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28376, i32 -1, ptr null, ptr @add_quirk, i32 2048 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 -1, i16 -1, i16 735, i16 -28364, i32 -1, ptr null, ptr @add_limit_rate_quirk, i32 150000000 }, %struct.mmc_fixup zeroinitializer], [96 x i8] zeroinitializer }, align 32
@sd_type = external dso_local global %struct.device_type, align 4
@mmc_sdio_init_card._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Host failed to negotiate down from 3.3V\0A\00", [49 x i8] zeroinitializer }, align 32
@mmc_sdio_init_card._entry_ptr.13 = internal global ptr @mmc_sdio_init_card._entry.11, section ".printk_index", align 4
@mmc_sdio_init_card.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.10, ptr @.str, ptr @.str.15, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Perhaps the card was replaced\0A\00", [61 x i8] zeroinitializer }, align 32
@sdio_std_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sdio_std_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sdio_std_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sdio_std_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sdio_std_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_info4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @info4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ocr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_ocr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rca = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_rca_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info1\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info2\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info3\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info4\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ocr\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rca\00", [28 x i8] zeroinitializer }, align 32
@mmc_fixup_device.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.29, ptr @.str.30, ptr @.str.31, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmc_fixup_device\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/core/quirks.h\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calling %ps\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,wl1251\00", [22 x i8] zeroinitializer }, align 32
@wl1251_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.35, i32 180, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"found wl1251\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wl1251_quirk\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/core/card.h\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wl1251_quirk._entry_ptr = internal global ptr @wl1251_quirk._entry, section ".printk_index", align 4
@sdio_read_cccr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: unrecognised CCCR structure version %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio_read_cccr\00", [17 x i8] zeroinitializer }, align 32
@sdio_read_cccr._entry_ptr = internal global ptr @sdio_read_cccr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1191, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"mmc_sdio_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1168, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1304, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1005, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 262, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 660, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"sdio_type\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 68, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"sdio_card_init_methods\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 149, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"sdio_fixup_methods\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 124, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 880, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 890, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"sdio_std_groups\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"sdio_std_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 66, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"sdio_std_attrs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 54, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"dev_attr_device\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"dev_attr_info1\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"dev_attr_info2\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"dev_attr_info3\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"dev_attr_info4\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"dev_attr_ocr\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"dev_attr_rca\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 30, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 31, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 32, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 49, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 50, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 51, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 52, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 33, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 34, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 200, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [29 x i8] c"../drivers/mmc/core/quirks.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 150, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"../drivers/mmc/core/card.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 180, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [27 x i8] c"../drivers/mmc/core/sdio.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 158, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @mmc_attach_sdio._entry, ptr @mmc_attach_sdio._entry_ptr, ptr @mmc_sdio_init_card._entry, ptr @mmc_sdio_init_card._entry.11, ptr @mmc_sdio_init_card._entry_ptr, ptr @mmc_sdio_init_card._entry_ptr.13, ptr @mmc_sdio_pre_suspend._entry, ptr @mmc_sdio_pre_suspend._entry_ptr, ptr @sdio_enable_wide._entry, ptr @sdio_enable_wide._entry_ptr, ptr @sdio_read_cccr._entry, ptr @sdio_read_cccr._entry_ptr, ptr @wl1251_quirk._entry, ptr @wl1251_quirk._entry_ptr, ptr @.str, ptr @mmc_sdio_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sdio_type, ptr @sdio_card_init_methods, ptr @sdio_fixup_methods, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @sdio_std_groups, ptr @sdio_std_group, ptr @sdio_std_attrs, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_revision, ptr @dev_attr_info1, ptr @dev_attr_info2, ptr @dev_attr_info3, ptr @dev_attr_info4, ptr @dev_attr_ocr, ptr @dev_attr_rca, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sdio_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_attach_sdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sdio_pre_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_enable_wide._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sdio_init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_card_init_methods to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_fixup_methods to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_sdio_init_card._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_std_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_std_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_std_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_info4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ocr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rca to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_read_cccr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_attach_sdio(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  %ocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ocr) #13
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ocr, align 4, !annotation !104
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %claimed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !105

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef nonnull %ocr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @mmc_attach_bus(ptr noundef %host, ptr noundef nonnull @mmc_sdio_ops) #13
  %ocr_avail_sdio = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %ocr_avail_sdio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ocr_avail_sdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not = icmp eq i32 %4, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 8
  %5 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ocr_avail, align 64
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %6 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocr, align 4
  %call28 = call i32 @mmc_select_voltage(ptr noundef %host, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.err85_crit_edge, label %if.end31

if.end27.err85_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %err85

if.end31:                                         ; preds = %if.end27
  %call32 = call fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %call28, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.err85_crit_edge

if.end31.err85_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %err85

if.end35:                                         ; preds = %if.end31
  %card36 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %8 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card36, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 32
  %and = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end35.if.end45_crit_edge, label %if.then38

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then38:                                        ; preds = %if.end35
  %dev = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !106
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end43, label %if.then38.remove_crit_edge

if.then38.remove_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.end43:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  call void @pm_runtime_enable(ptr noundef %dev) #13
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end35.if.end45_crit_edge
  %13 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ocr, align 4
  %and46 = lshr i32 %14, 28
  %shr = and i32 %and46, 7
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 27
  %15 = ptrtoint ptr %sdio_funcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sdio_funcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp157.not = icmp eq i32 %shr, 0
  br i1 %cmp157.not, label %if.end45.for.end_crit_edge, label %if.end45.if.end21.i_crit_edge

if.end45.if.end21.i_crit_edge:                    ; preds = %if.end45
  br label %if.end21.i

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end21.i:                                       ; preds = %for.inc.if.end21.i_crit_edge, %if.end45.if.end21.i_crit_edge
  %i.0158 = phi i32 [ %add, %for.inc.if.end21.i_crit_edge ], [ 0, %if.end45.if.end21.i_crit_edge ]
  %16 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card36, align 4
  %add = add nuw nsw i32 %i.0158, 1
  %call.i141 = call ptr @sdio_alloc_func(ptr noundef %17) #13
  %cmp.i.i = icmp ugt ptr %call.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sdio_init_func.exit, label %if.end25.i

if.end25.i:                                       ; preds = %if.end21.i
  %num.i = getelementptr inbounds %struct.sdio_func, ptr %call.i141, i32 0, i32 3
  %18 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %num.i, align 4
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 6
  %19 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #13
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %data.i.i, align 1, !annotation !104
  %22 = ptrtoint ptr %call.i141 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i141, align 8
  %quirks.i.i.i = getelementptr inbounds %struct.mmc_card, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %quirks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks.i.i.i, align 8
  %and.i.i.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then27.i.if.end31.i_crit_edge

if.then27.i.if.end31.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.end.i.i:                                       ; preds = %if.then27.i
  %mul.i.i = shl nuw nsw i32 %add, 8
  %call2.i.i = call i32 @mmc_io_rw_direct(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef %mul.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.sdio_read_fbr.exit.thread.i_crit_edge

if.end.i.i.sdio_read_fbr.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_read_fbr.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.i.i, align 1
  %28 = and i8 %27, 15
  store i8 %28, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %cmp.i64.i = icmp eq i8 %28, 15
  br i1 %cmp.i64.i, label %if.then9.i.i, label %if.end5.i.i.if.end18.i.i_crit_edge

if.end5.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  %29 = ptrtoint ptr %call.i141 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i141, align 8
  %31 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num.i, align 4
  %mul12.i.i = shl i32 %32, 8
  %add13.i.i = or i32 %mul12.i.i, 1
  %call14.i.i = call i32 @mmc_io_rw_direct(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef %add13.i.i, i8 noundef zeroext 0, ptr noundef nonnull %data.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then9.i.i.if.end18.i.i_crit_edge, label %if.then9.i.i.sdio_read_fbr.exit.thread.i_crit_edge

if.then9.i.i.sdio_read_fbr.exit.thread.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_read_fbr.exit.thread.i

if.then9.i.i.if.end18.i.i_crit_edge:              ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then9.i.i.if.end18.i.i_crit_edge, %if.end5.i.i.if.end18.i.i_crit_edge
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i.i, align 1
  br label %if.end31.i

sdio_read_fbr.exit.thread.i:                      ; preds = %if.then9.i.i.sdio_read_fbr.exit.thread.i_crit_edge, %if.end.i.i.sdio_read_fbr.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call14.i.i, %if.then9.i.i.sdio_read_fbr.exit.thread.i_crit_edge ], [ %call2.i.i, %if.end.i.i.sdio_read_fbr.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #13
  br label %fail.i

if.end31.i:                                       ; preds = %if.end18.i.i, %if.then27.i.if.end31.i_crit_edge
  %.sink.i.i = phi i8 [ %34, %if.end18.i.i ], [ 0, %if.then27.i.if.end31.i_crit_edge ]
  %class19.i.i = getelementptr inbounds %struct.sdio_func, ptr %call.i141, i32 0, i32 4
  %35 = ptrtoint ptr %class19.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i.i, ptr %class19.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #13
  %call32.i = call i32 @sdio_read_func_cis(ptr noundef %call.i141) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.sdio_init_func.exit.thread151_crit_edge, label %if.end31.i.fail.i_crit_edge

if.end31.i.fail.i_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail.i

if.end31.i.sdio_init_func.exit.thread151_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_init_func.exit.thread151

if.else.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %call.i141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i141, align 8
  %cis.i = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 30
  %38 = ptrtoint ptr %cis.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cis.i, align 4
  %vendor37.i = getelementptr inbounds %struct.sdio_func, ptr %call.i141, i32 0, i32 5
  %40 = ptrtoint ptr %vendor37.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %vendor37.i, align 2
  %device.i = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 30, i32 1
  %41 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device.i, align 2
  %device40.i = getelementptr inbounds %struct.sdio_func, ptr %call.i141, i32 0, i32 6
  %43 = ptrtoint ptr %device40.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %device40.i, align 4
  %blksize.i = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 30, i32 2
  %44 = ptrtoint ptr %blksize.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %blksize.i, align 4
  %conv.i = zext i16 %45 to i32
  %max_blksize.i = getelementptr inbounds %struct.sdio_func, ptr %call.i141, i32 0, i32 7
  %46 = ptrtoint ptr %max_blksize.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i, ptr %max_blksize.i, align 8
  br label %sdio_init_func.exit.thread151

sdio_init_func.exit.thread151:                    ; preds = %if.else.i, %if.end31.i.sdio_init_func.exit.thread151_crit_edge
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %17, i32 0, i32 31, i32 %i.0158
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i141, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps, align 32
  %and53 = and i32 %49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sdio_init_func.exit.thread151.for.inc_crit_edge, label %if.then55

sdio_init_func.exit.thread151.for.inc_crit_edge:  ; preds = %sdio_init_func.exit.thread151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

fail.i:                                           ; preds = %if.end31.i.fail.i_crit_edge, %sdio_read_fbr.exit.thread.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %sdio_read_fbr.exit.thread.i ], [ %call32.i, %if.end31.i.fail.i_crit_edge ]
  call void @sdio_remove_func(ptr noundef %call.i141) #13
  br label %remove

sdio_init_func.exit:                              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %call.i141 to i32
  br label %remove

if.then55:                                        ; preds = %sdio_init_func.exit.thread151
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.mmc_card, ptr %9, i32 0, i32 31, i32 %i.0158
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %dev56 = getelementptr inbounds %struct.sdio_func, ptr %52, i32 0, i32 1
  call void @pm_runtime_enable(ptr noundef %dev56) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %sdio_init_func.exit.thread151.for.inc_crit_edge
  %53 = ptrtoint ptr %sdio_funcs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sdio_funcs, align 8
  %inc59 = add i32 %54, 1
  store i32 %inc59, ptr %sdio_funcs, align 8
  %exitcond.not = icmp eq i32 %add, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end21.i_crit_edge

for.inc.if.end21.i_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge
  call void @mmc_release_host(ptr noundef %host) #13
  %55 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card36, align 4
  %call61 = call i32 @mmc_add_card(ptr noundef %56) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond65.preheader, label %for.end.remove_added_crit_edge

for.end.remove_added_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.preheader:                             ; preds = %for.end
  br i1 %cmp157.not, label %for.cond65.preheader.for.end77_crit_edge, label %for.body67

for.cond65.preheader.for.end77_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.cond65:                                       ; preds = %for.body67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %exitcond166.not = icmp eq i32 %shr, 1
  br i1 %exitcond166.not, label %for.cond65.for.end77_crit_edge, label %for.body67.1

for.cond65.for.end77_crit_edge:                   ; preds = %for.cond65
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.1:                                     ; preds = %for.cond65
  %57 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card36, align 4
  %arrayidx70.1 = getelementptr %struct.mmc_card, ptr %58, i32 0, i32 31, i32 1
  %59 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx70.1, align 4
  %call71.1 = call i32 @sdio_add_func(ptr noundef %60) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.1)
  %tobool72.not.1 = icmp eq i32 %call71.1, 0
  br i1 %tobool72.not.1, label %for.cond65.1, label %for.body67.1.remove_added_crit_edge

for.body67.1.remove_added_crit_edge:              ; preds = %for.body67.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.1:                                     ; preds = %for.body67.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %exitcond166.not.1 = icmp eq i32 %shr, 2
  br i1 %exitcond166.not.1, label %for.cond65.1.for.end77_crit_edge, label %for.body67.2

for.cond65.1.for.end77_crit_edge:                 ; preds = %for.cond65.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.2:                                     ; preds = %for.cond65.1
  %61 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card36, align 4
  %arrayidx70.2 = getelementptr %struct.mmc_card, ptr %62, i32 0, i32 31, i32 2
  %63 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx70.2, align 4
  %call71.2 = call i32 @sdio_add_func(ptr noundef %64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.2)
  %tobool72.not.2 = icmp eq i32 %call71.2, 0
  br i1 %tobool72.not.2, label %for.cond65.2, label %for.body67.2.remove_added_crit_edge

for.body67.2.remove_added_crit_edge:              ; preds = %for.body67.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.2:                                     ; preds = %for.body67.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %exitcond166.not.2 = icmp eq i32 %shr, 3
  br i1 %exitcond166.not.2, label %for.cond65.2.for.end77_crit_edge, label %for.body67.3

for.cond65.2.for.end77_crit_edge:                 ; preds = %for.cond65.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.3:                                     ; preds = %for.cond65.2
  %65 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %card36, align 4
  %arrayidx70.3 = getelementptr %struct.mmc_card, ptr %66, i32 0, i32 31, i32 3
  %67 = ptrtoint ptr %arrayidx70.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx70.3, align 4
  %call71.3 = call i32 @sdio_add_func(ptr noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.3)
  %tobool72.not.3 = icmp eq i32 %call71.3, 0
  br i1 %tobool72.not.3, label %for.cond65.3, label %for.body67.3.remove_added_crit_edge

for.body67.3.remove_added_crit_edge:              ; preds = %for.body67.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.3:                                     ; preds = %for.body67.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %exitcond166.not.3 = icmp eq i32 %shr, 4
  br i1 %exitcond166.not.3, label %for.cond65.3.for.end77_crit_edge, label %for.body67.4

for.cond65.3.for.end77_crit_edge:                 ; preds = %for.cond65.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.4:                                     ; preds = %for.cond65.3
  %69 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card36, align 4
  %arrayidx70.4 = getelementptr %struct.mmc_card, ptr %70, i32 0, i32 31, i32 4
  %71 = ptrtoint ptr %arrayidx70.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx70.4, align 4
  %call71.4 = call i32 @sdio_add_func(ptr noundef %72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.4)
  %tobool72.not.4 = icmp eq i32 %call71.4, 0
  br i1 %tobool72.not.4, label %for.cond65.4, label %for.body67.4.remove_added_crit_edge

for.body67.4.remove_added_crit_edge:              ; preds = %for.body67.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.4:                                     ; preds = %for.body67.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr)
  %exitcond166.not.4 = icmp eq i32 %shr, 5
  br i1 %exitcond166.not.4, label %for.cond65.4.for.end77_crit_edge, label %for.body67.5

for.cond65.4.for.end77_crit_edge:                 ; preds = %for.cond65.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.5:                                     ; preds = %for.cond65.4
  %73 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card36, align 4
  %arrayidx70.5 = getelementptr %struct.mmc_card, ptr %74, i32 0, i32 31, i32 5
  %75 = ptrtoint ptr %arrayidx70.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx70.5, align 4
  %call71.5 = call i32 @sdio_add_func(ptr noundef %76) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.5)
  %tobool72.not.5 = icmp eq i32 %call71.5, 0
  br i1 %tobool72.not.5, label %for.cond65.5, label %for.body67.5.remove_added_crit_edge

for.body67.5.remove_added_crit_edge:              ; preds = %for.body67.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.cond65.5:                                     ; preds = %for.body67.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr)
  %exitcond166.not.5 = icmp eq i32 %shr, 6
  br i1 %exitcond166.not.5, label %for.cond65.5.for.end77_crit_edge, label %for.body67.6

for.cond65.5.for.end77_crit_edge:                 ; preds = %for.cond65.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67.6:                                     ; preds = %for.cond65.5
  %77 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card36, align 4
  %arrayidx70.6 = getelementptr %struct.mmc_card, ptr %78, i32 0, i32 31, i32 6
  %79 = ptrtoint ptr %arrayidx70.6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx70.6, align 4
  %call71.6 = call i32 @sdio_add_func(ptr noundef %80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.6)
  %tobool72.not.6 = icmp eq i32 %call71.6, 0
  br i1 %tobool72.not.6, label %for.body67.6.for.end77_crit_edge, label %for.body67.6.remove_added_crit_edge

for.body67.6.remove_added_crit_edge:              ; preds = %for.body67.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.body67.6.for.end77_crit_edge:                 ; preds = %for.body67.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end77

for.body67:                                       ; preds = %for.cond65.preheader
  %81 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card36, align 4
  %arrayidx70 = getelementptr %struct.mmc_card, ptr %82, i32 0, i32 31, i32 0
  %83 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx70, align 4
  %call71 = call i32 @sdio_add_func(ptr noundef %84) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %for.cond65, label %for.body67.remove_added_crit_edge

for.body67.remove_added_crit_edge:                ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_added

for.end77:                                        ; preds = %for.body67.6.for.end77_crit_edge, %for.cond65.5.for.end77_crit_edge, %for.cond65.4.for.end77_crit_edge, %for.cond65.3.for.end77_crit_edge, %for.cond65.2.for.end77_crit_edge, %for.cond65.1.for.end77_crit_edge, %for.cond65.for.end77_crit_edge, %for.cond65.preheader.for.end77_crit_edge
  %85 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %caps, align 32
  %and79 = and i32 %86, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %for.end77.if.end84_crit_edge, label %if.then81

for.end77.if.end84_crit_edge:                     ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then81:                                        ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #15
  %dev82 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1
  %call.i142 = call i32 @__pm_runtime_idle(ptr noundef %dev82, i32 noundef 5) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %for.end77.if.end84_crit_edge
  %call.i143 = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  br label %cleanup

remove:                                           ; preds = %sdio_init_func.exit, %fail.i, %if.then38.remove_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then38.remove_crit_edge ], [ %50, %sdio_init_func.exit ], [ %ret.0.i, %fail.i ]
  call void @mmc_release_host(ptr noundef %host) #13
  br label %remove_added

remove_added:                                     ; preds = %remove, %for.body67.remove_added_crit_edge, %for.body67.6.remove_added_crit_edge, %for.body67.5.remove_added_crit_edge, %for.body67.4.remove_added_crit_edge, %for.body67.3.remove_added_crit_edge, %for.body67.2.remove_added_crit_edge, %for.body67.1.remove_added_crit_edge, %for.end.remove_added_crit_edge
  %err.1 = phi i32 [ %err.0, %remove ], [ %call61, %for.end.remove_added_crit_edge ], [ %call71, %for.body67.remove_added_crit_edge ], [ %call71.1, %for.body67.1.remove_added_crit_edge ], [ %call71.2, %for.body67.2.remove_added_crit_edge ], [ %call71.3, %for.body67.3.remove_added_crit_edge ], [ %call71.4, %for.body67.4.remove_added_crit_edge ], [ %call71.5, %for.body67.5.remove_added_crit_edge ], [ %call71.6, %for.body67.6.remove_added_crit_edge ]
  %87 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %card36, align 4
  %sdio_funcs19.i = getelementptr inbounds %struct.mmc_card, ptr %88, i32 0, i32 27
  %89 = ptrtoint ptr %sdio_funcs19.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sdio_funcs19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp20.not.i = icmp eq i32 %90, 0
  br i1 %cmp20.not.i, label %remove_added.mmc_sdio_remove.exit_crit_edge, label %remove_added.for.body.i_crit_edge

remove_added.for.body.i_crit_edge:                ; preds = %remove_added
  br label %for.body.i

remove_added.mmc_sdio_remove.exit_crit_edge:      ; preds = %remove_added
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_remove.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %remove_added.for.body.i_crit_edge
  %91 = phi ptr [ %98, %for.inc.i.for.body.i_crit_edge ], [ %88, %remove_added.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %remove_added.for.body.i_crit_edge ]
  %arrayidx.i144 = getelementptr %struct.mmc_card, ptr %91, i32 0, i32 31, i32 %i.021.i
  %92 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i144, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @sdio_remove_func(ptr noundef nonnull %93) #13
  %94 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card36, align 4
  %arrayidx7.i = getelementptr %struct.mmc_card, ptr %95, i32 0, i32 31, i32 %i.021.i
  %96 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %97 = ptrtoint ptr %card36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card36, align 4
  %sdio_funcs.i = getelementptr inbounds %struct.mmc_card, ptr %98, i32 0, i32 27
  %99 = ptrtoint ptr %sdio_funcs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sdio_funcs.i, align 8
  %cmp.i145 = icmp ult i32 %inc.i, %100
  br i1 %cmp.i145, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mmc_sdio_remove.exit_crit_edge

for.inc.i.mmc_sdio_remove.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

mmc_sdio_remove.exit:                             ; preds = %for.inc.i.mmc_sdio_remove.exit_crit_edge, %remove_added.mmc_sdio_remove.exit_crit_edge
  %.lcssa.i = phi ptr [ %88, %remove_added.mmc_sdio_remove.exit_crit_edge ], [ %98, %for.inc.i.mmc_sdio_remove.exit_crit_edge ]
  call void @mmc_remove_card(ptr noundef %.lcssa.i) #13
  %101 = ptrtoint ptr %card36 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %card36, align 4
  %call.i146 = call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  br label %err85

err85:                                            ; preds = %mmc_sdio_remove.exit, %if.end31.err85_crit_edge, %if.end27.err85_crit_edge
  %err.2 = phi i32 [ %call32, %if.end31.err85_crit_edge ], [ %err.1, %mmc_sdio_remove.exit ], [ -22, %if.end27.err85_crit_edge ]
  call void @mmc_detach_bus(ptr noundef %host) #13
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i147 = icmp eq ptr %103, null
  br i1 %tobool.not.i147, label %if.end.i, label %err85.dev_name.exit_crit_edge

err85.dev_name.exit_crit_edge:                    ; preds = %err85
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %err85
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %104 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %err85.dev_name.exit_crit_edge
  %retval.0.i148 = phi ptr [ %105, %if.end.i ], [ %103, %err85.dev_name.exit_crit_edge ]
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i148, i32 noundef %err.2) #16
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end84, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %dev_name.exit ], [ 0, %if.end84 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ocr) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_io_op_cond(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_attach_bus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %ocr, ptr noundef %oldcard) unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %speed.i = alloca i8, align 1
  %rocr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rocr) #13
  %0 = ptrtoint ptr %rocr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rocr, align 4
  %claimed = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %1 = ptrtoint ptr %claimed to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %claimed, align 8
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !105

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 652, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %4, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and2.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool21.not443 = icmp eq i32 %and2.i, 0
  %tobool21.not = or i1 %tobool.not.i, %tobool21.not443
  %or = or i32 %ocr, 16777216
  %spec.select = select i1 %tobool21.not, i32 %ocr, i32 %or
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %tobool57.not = icmp eq ptr %oldcard, null
  %type59 = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 4
  %raw_cid64 = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 15
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %rca113 = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 3
  br label %try_again

try_again:                                        ; preds = %try_again.backedge, %if.end
  %retries.0 = phi i32 [ 10, %if.end ], [ %retries.0.be, %try_again.backedge ]
  %ocr.addr.1 = phi i32 [ %spec.select, %if.end ], [ %ocr.addr.1.be, %try_again.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool24.not = icmp eq i32 %retries.0, 0
  br i1 %tobool24.not, label %do.end28, label %try_again.if.end32_crit_edge

try_again.if.end32_crit_edge:                     ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

do.end28:                                         ; preds = %try_again
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i396 = icmp eq ptr %6, null
  br i1 %tobool.not.i396, label %if.end.i, label %do.end28.dev_name.exit_crit_edge

do.end28.dev_name.exit_crit_edge:                 ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end28.dev_name.exit_crit_edge
  %retval.0.i397 = phi ptr [ %8, %if.end.i ], [ %6, %do.end28.dev_name.exit_crit_edge ]
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i397) #16
  %and = and i32 %ocr.addr.1, -16777217
  br label %if.end32

if.end32:                                         ; preds = %dev_name.exit, %try_again.if.end32_crit_edge
  %ocr.addr.2 = phi i32 [ %ocr.addr.1, %try_again.if.end32_crit_edge ], [ %and, %dev_name.exit ]
  %call33 = call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef %ocr.addr.2, ptr noundef nonnull %rocr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %9 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps.i, align 32
  %and37 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end45_crit_edge, label %if.then39

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then39:                                        ; preds = %if.end36
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_spi_crc to i32))
  %11 = load i8, ptr @use_spi_crc, align 1, !range !107
  %12 = zext i8 %11 to i32
  %call41 = call i32 @mmc_spi_set_crc(ptr noundef %host, i32 noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then39.if.end45_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39.if.end45_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end45:                                         ; preds = %if.then39.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %call46 = call ptr @mmc_alloc_card(ptr noundef %host, ptr noundef nonnull @sdio_type) #13
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %14 = ptrtoint ptr %rocr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rocr, align 4
  %and51 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.else_crit_edge, label %land.lhs.true

if.end50.if.else_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end50
  %and53 = and i32 %15, %ocr.addr.2
  %raw_cid = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 15
  %call54 = call i32 @mmc_sd_get_cid(ptr noundef %host, i32 noundef %and53, ptr noundef %raw_cid, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp eq i32 %call54, 0
  br i1 %cmp, label %if.then56, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then56:                                        ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type, align 8
  br i1 %tobool57.not, label %if.then56.if.end79_crit_edge, label %land.lhs.true58

if.then56.if.end79_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true58:                                  ; preds = %if.then56
  %17 = ptrtoint ptr %type59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp60.not = icmp eq i32 %18, 3
  br i1 %cmp60.not, label %lor.lhs.false, label %land.lhs.true58.do.body256_crit_edge

land.lhs.true58.do.body256_crit_edge:             ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body256

lor.lhs.false:                                    ; preds = %land.lhs.true58
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %raw_cid, ptr noundef dereferenceable(16) %raw_cid64, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp67.not = icmp eq i32 %bcmp, 0
  br i1 %cmp67.not, label %lor.lhs.false.if.end79_crit_edge, label %lor.lhs.false.do.body256_crit_edge

lor.lhs.false.do.body256_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body256

lor.lhs.false.if.end79_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end50.if.else_crit_edge
  %type71 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 4
  %19 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %type71, align 8
  br i1 %tobool57.not, label %if.else.if.end79_crit_edge, label %land.lhs.true73

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true73:                                  ; preds = %if.else
  %20 = ptrtoint ptr %type59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp75.not = icmp eq i32 %21, 2
  br i1 %cmp75.not, label %land.lhs.true73.if.end79_crit_edge, label %land.lhs.true73.do.body256_crit_edge

land.lhs.true73.do.body256_crit_edge:             ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body256

land.lhs.true73.if.end79_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true73.if.end79_crit_edge, %if.else.if.end79_crit_edge, %lor.lhs.false.if.end79_crit_edge, %if.then56.if.end79_crit_edge
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %init_card = getelementptr inbounds %struct.mmc_host_ops, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %init_card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_card, align 4
  %tobool80.not = icmp eq ptr %25, null
  br i1 %tobool80.not, label %if.end79.if.end84_crit_edge, label %if.then81

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  call void %25(ptr noundef %host, ptr noundef %call46) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end79.if.end84_crit_edge
  call fastcc void @mmc_fixup_device(ptr noundef %call46, ptr noundef nonnull @sdio_card_init_methods)
  %ocr85 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 2
  %26 = ptrtoint ptr %ocr85 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ocr, ptr %ocr85, align 8
  %27 = ptrtoint ptr %rocr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rocr, align 4
  %and86 = and i32 %ocr.addr.2, 16777216
  %and87 = and i32 %and86, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end84.if.end101_crit_edge, label %if.then89

if.end84.if.end101_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then89:                                        ; preds = %if.end84
  %call90 = call i32 @mmc_set_uhs_voltage(ptr noundef %host, i32 noundef %ocr) #13
  %29 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call90, label %if.then97 [
    i32 -11, label %if.then93
    i32 0, label %if.then89.if.end101_crit_edge
  ]

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then93:                                        ; preds = %if.then89
  %tobool.not.i398 = icmp eq ptr %call46, null
  br i1 %tobool.not.i398, label %if.then93.mmc_sdio_pre_init.exit_crit_edge, label %if.then.i

if.then93.mmc_sdio_pre_init.exit_crit_edge:       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_pre_init.exit

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_remove_card(ptr noundef nonnull %call46) #13
  br label %mmc_sdio_pre_init.exit

mmc_sdio_pre_init.exit:                           ; preds = %if.then.i, %if.then93.mmc_sdio_pre_init.exit_crit_edge
  %call.i = call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i = call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i = call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %ocr) #13
  %call3.i = call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  %dec = add i32 %retries.0, -1
  br label %try_again.backedge

try_again.backedge:                               ; preds = %mmc_sdio_pre_init.exit413.try_again.backedge_crit_edge, %mmc_sdio_pre_init.exit
  %retries.0.be = phi i32 [ %dec, %mmc_sdio_pre_init.exit ], [ 0, %mmc_sdio_pre_init.exit413.try_again.backedge_crit_edge ]
  %ocr.addr.1.be = phi i32 [ %ocr.addr.2, %mmc_sdio_pre_init.exit ], [ %ocr.addr.3, %mmc_sdio_pre_init.exit413.try_again.backedge_crit_edge ]
  br label %try_again

if.then97:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #15
  %and98 = and i32 %ocr.addr.2, -16777217
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.then89.if.end101_crit_edge, %if.end84.if.end101_crit_edge
  %ocr.addr.3 = phi i32 [ %and98, %if.then97 ], [ %ocr.addr.2, %if.end84.if.end101_crit_edge ], [ %ocr.addr.2, %if.then89.if.end101_crit_edge ]
  %30 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps.i, align 32
  %and103 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then105, label %if.end115

if.then105:                                       ; preds = %if.end101
  %rca = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 3
  %call106 = call i32 @mmc_send_relative_addr(ptr noundef %host, ptr noundef %rca) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.then105.remove_crit_edge

if.then105.remove_crit_edge:                      ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.end109:                                        ; preds = %if.then105
  br i1 %tobool57.not, label %if.end109.land.lhs.true117_crit_edge, label %if.end115.thread

if.end109.land.lhs.true117_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true117

if.end115.thread:                                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rca, align 4
  %34 = ptrtoint ptr %rca113 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %rca113, align 4
  br label %if.end126

if.end115:                                        ; preds = %if.end101
  br i1 %tobool57.not, label %if.end115.land.lhs.true117_crit_edge, label %if.end115.if.end126_crit_edge

if.end115.if.end126_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.end115.land.lhs.true117_crit_edge:             ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true117

land.lhs.true117:                                 ; preds = %if.end115.land.lhs.true117_crit_edge, %if.end109.land.lhs.true117_crit_edge
  %type118 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 4
  %35 = ptrtoint ptr %type118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp119 = icmp eq i32 %36, 3
  br i1 %cmp119, label %if.then121, label %land.lhs.true117.if.end126_crit_edge

land.lhs.true117.if.end126_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126

if.then121:                                       ; preds = %land.lhs.true117
  %call122 = call i32 @mmc_sd_get_csd(ptr noundef %call46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.then121.remove_crit_edge

if.then121.remove_crit_edge:                      ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.end125:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_decode_cid(ptr noundef %call46) #13
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %land.lhs.true117.if.end126_crit_edge, %if.end115.if.end126_crit_edge, %if.end115.thread
  %tobool116430 = phi i1 [ true, %if.end115.thread ], [ false, %if.end125 ], [ false, %land.lhs.true117.if.end126_crit_edge ], [ true, %if.end115.if.end126_crit_edge ]
  %37 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %caps.i, align 32
  %and128 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.then130, label %if.end126.if.end135_crit_edge

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.then130:                                       ; preds = %if.end126
  %call131 = call i32 @mmc_select_card(ptr noundef %call46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then130.if.end135_crit_edge, label %if.then130.remove_crit_edge

if.then130.remove_crit_edge:                      ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.then130.if.end135_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end135

if.end135:                                        ; preds = %if.then130.if.end135_crit_edge, %if.end126.if.end135_crit_edge
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 6
  %39 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirks, align 8
  %and136 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end152, label %if.then138

if.then138:                                       ; preds = %if.end135
  %max_dtr = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 30, i32 3
  %41 = ptrtoint ptr %max_dtr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_dtr, align 4
  call void @mmc_set_clock(ptr noundef %host, i32 noundef %42) #13
  %high_speed = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %43 = ptrtoint ptr %high_speed to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load139 = load i8, ptr %high_speed, align 8
  %44 = and i8 %bf.load139, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool143.not = icmp eq i8 %44, 0
  br i1 %tobool143.not, label %if.then138.if.end146_crit_edge, label %if.then144

if.then138.if.end146_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.then144:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call46, align 8
  call void @mmc_set_timing(ptr noundef %46, i32 noundef 2) #13
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.then138.if.end146_crit_edge
  br i1 %tobool116430, label %if.then148, label %if.else149

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_remove_card(ptr noundef %call46) #13
  br label %cleanup

if.else149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  %card150 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %47 = ptrtoint ptr %card150 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call46, ptr %card150, align 4
  br label %cleanup

if.end152:                                        ; preds = %if.end135
  %and.i400 = and i32 %ocr.addr.3, 16777216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #13
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %data.i, align 1, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %speed.i) #13
  %49 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %speed.i, align 1, !annotation !104
  %call.i401 = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool.not.i402 = icmp eq i32 %call.i401, 0
  br i1 %tobool.not.i402, label %if.end.i404, label %if.end152.if.then155_crit_edge

if.end152.if.then155_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end.i404:                                      ; preds = %if.end152
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %51 to i32
  %and1.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %cmp.i403 = icmp ugt i32 %and1.i, 3
  br i1 %cmp.i403, label %do.end.i, label %if.end6.i

do.end.i:                                         ; preds = %if.end.i404
  %52 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call46, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %57, %if.end.i.i ], [ %55, %do.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %retval.0.i.i, i32 noundef %and1.i) #16
  br label %if.then155

if.end6.i:                                        ; preds = %if.end.i404
  %58 = lshr i32 %conv.i, 4
  %cccr.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29
  %59 = ptrtoint ptr %cccr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %cccr.i, align 8
  %call9.i = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 8, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i.if.then155_crit_edge

if.end6.i.if.then155_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end12.i:                                       ; preds = %if.end6.i
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data.i, align 1
  %62 = and i8 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool15.not.i = icmp eq i8 %62, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then16.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %multi_block.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %63 = ptrtoint ptr %multi_block.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i = load i8, ptr %multi_block.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %multi_block.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end18.i_crit_edge
  %64 = and i8 %61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool21.not.i = icmp eq i8 %64, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end27.i_crit_edge, label %if.then22.i

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %low_speed.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %65 = ptrtoint ptr %low_speed.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load24.i = load i8, ptr %low_speed.i, align 8
  %bf.set26.i = or i8 %bf.load24.i, 64
  store i8 %bf.set26.i, ptr %low_speed.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool30.not.i = icmp sgt i8 %61, -1
  br i1 %tobool30.not.i, label %if.end27.i.if.end36.i_crit_edge, label %if.then31.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %wide_bus.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %66 = ptrtoint ptr %wide_bus.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load33.i = load i8, ptr %wide_bus.i, align 8
  %bf.set35.i = or i8 %bf.load33.i, 32
  store i8 %bf.set35.i, ptr %wide_bus.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end36.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp37.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp37.not.i, label %if.end36.i.if.end161_crit_edge, label %if.then39.i

if.end36.i.if.end161_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then39.i:                                      ; preds = %if.end36.i
  %call40.i = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 18, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.then39.i.if.then155_crit_edge

if.then39.i.if.then155_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end43.i:                                       ; preds = %if.then39.i
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i, align 1
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool46.not.i = icmp eq i8 %69, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end53.i_crit_edge, label %if.then47.i

if.end43.i.if.end53.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  %high_power.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %70 = ptrtoint ptr %high_power.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load49.i = load i8, ptr %high_power.i, align 8
  %bf.set51.i = or i8 %bf.load49.i, 16
  store i8 %bf.set51.i, ptr %high_power.i, align 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then47.i, %if.end43.i.if.end53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and1.i)
  %cmp54.i = icmp ugt i32 %and1.i, 1
  br i1 %cmp54.i, label %if.then56.i, label %if.end53.i.if.end161_crit_edge

if.end53.i.if.end161_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then56.i:                                      ; preds = %if.end53.i
  %call57.i = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %speed.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.then56.i.if.then155_crit_edge

if.then56.i.if.then155_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end60.i:                                       ; preds = %if.then56.i
  %sda_spec3.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 22, i32 1
  %71 = ptrtoint ptr %sda_spec3.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %sda_spec3.i, align 1
  %sd3_bus_mode.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 24, i32 2
  %72 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %sd3_bus_mode.i, align 4
  %sd3_drv_type.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 24, i32 3
  %73 = ptrtoint ptr %sd3_drv_type.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %sd3_drv_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %cmp62.i = icmp ult i32 %and1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400)
  %tobool64.not.i = icmp eq i32 %and.i400, 0
  %or.cond.i = or i1 %tobool64.not.i, %cmp62.i
  br i1 %or.cond.i, label %if.end60.i.if.end128.i_crit_edge, label %if.then65.i

if.end60.i.if.end128.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128.i

if.then65.i:                                      ; preds = %if.end60.i
  %74 = ptrtoint ptr %sda_spec3.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %sda_spec3.i, align 1
  %call68.i = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 20, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.then65.i.if.then155_crit_edge

if.then65.i.if.then155_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end71.i:                                       ; preds = %if.then65.i
  %75 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call46, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %78, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i193.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool74.not195.i = icmp eq i32 %and2.i.i, 0
  %tobool74.not.i = or i1 %tobool.not.i193.i, %tobool74.not195.i
  br i1 %tobool74.not.i, label %if.end71.i.if.end99.i_crit_edge, label %if.then75.i

if.end71.i.if.end99.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

if.then75.i:                                      ; preds = %if.end71.i
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %data.i, align 1
  %81 = and i8 %80, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool78.not.i = icmp eq i8 %81, 0
  br i1 %tobool78.not.i, label %if.then75.i.if.end82.i_crit_edge, label %if.then79.i

if.then75.i.if.end82.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82.i

if.then79.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sd3_bus_mode.i, align 4
  %or.i = or i32 %83, 23
  store i32 %or.i, ptr %sd3_bus_mode.i, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then79.i, %if.then75.i.if.end82.i_crit_edge
  %84 = and i8 %80, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool85.not.i = icmp eq i8 %84, 0
  br i1 %tobool85.not.i, label %if.end82.i.if.end90.i_crit_edge, label %if.then86.i

if.end82.i.if.end90.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90.i

if.then86.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sd3_bus_mode.i, align 4
  %or89.i = or i32 %86, 7
  store i32 %or89.i, ptr %sd3_bus_mode.i, align 4
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then86.i, %if.end82.i.if.end90.i_crit_edge
  %87 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool93.not.i = icmp eq i8 %87, 0
  br i1 %tobool93.not.i, label %if.end90.i.if.end99.i_crit_edge, label %if.then94.i

if.end90.i.if.end99.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

if.then94.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sd3_bus_mode.i, align 4
  %or97.i = or i32 %89, 15
  store i32 %or97.i, ptr %sd3_bus_mode.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then94.i, %if.end90.i.if.end99.i_crit_edge, %if.end71.i.if.end99.i_crit_edge
  %call100.i = call i32 @mmc_io_rw_direct(ptr noundef %call46, i32 noundef 0, i32 noundef 0, i32 noundef 21, i8 noundef zeroext 0, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end103.i, label %if.end99.i.if.then155_crit_edge

if.end99.i.if.then155_crit_edge:                  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then155

if.end103.i:                                      ; preds = %if.end99.i
  %sd3_drv_type.i.le = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 24, i32 3
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %data.i, align 1
  %92 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool106.not.i = icmp eq i8 %92, 0
  br i1 %tobool106.not.i, label %if.end103.i.if.end111.i_crit_edge, label %if.then107.i

if.end103.i.if.end111.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111.i

if.then107.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %sd3_drv_type.i.le to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sd3_drv_type.i.le, align 4
  %or110.i = or i32 %94, 2
  store i32 %or110.i, ptr %sd3_drv_type.i.le, align 4
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then107.i, %if.end103.i.if.end111.i_crit_edge
  %95 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool114.not.i = icmp eq i8 %95, 0
  br i1 %tobool114.not.i, label %if.end111.i.if.end119.i_crit_edge, label %if.then115.i

if.end111.i.if.end119.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119.i

if.then115.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %sd3_drv_type.i.le to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sd3_drv_type.i.le, align 4
  %or118.i = or i32 %97, 4
  store i32 %or118.i, ptr %sd3_drv_type.i.le, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then115.i, %if.end111.i.if.end119.i_crit_edge
  %98 = and i8 %91, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool122.not.i = icmp eq i8 %98, 0
  br i1 %tobool122.not.i, label %if.end119.i.if.end128.i_crit_edge, label %if.then123.i

if.end119.i.if.end128.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128.i

if.then123.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %sd3_drv_type.i.le to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sd3_drv_type.i.le, align 4
  %or126.i = or i32 %100, 8
  store i32 %or126.i, ptr %sd3_drv_type.i.le, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then123.i, %if.end119.i.if.end128.i_crit_edge, %if.end60.i.if.end128.i_crit_edge
  %101 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sd3_bus_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool131.not.i = icmp eq i32 %102, 0
  br i1 %tobool131.not.i, label %if.then132.i, label %if.end128.i.if.end161_crit_edge

if.end128.i.if.end161_crit_edge:                  ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then132.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #15
  %sw_caps.i467 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 24
  %103 = ptrtoint ptr %speed.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %speed.i, align 1
  %105 = and i8 %104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool135.not.i = icmp eq i8 %105, 0
  %high_speed143.i = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 29, i32 2
  %106 = ptrtoint ptr %high_speed143.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load144.i = load i8, ptr %high_speed143.i, align 8
  %bf.clear145.i = and i8 %bf.load144.i, -9
  %107 = shl nuw nsw i8 %105, 3
  %bf.clear145.i.sink = or i8 %bf.clear145.i, %107
  %.sink = select i1 %tobool135.not.i, i32 25000000, i32 50000000
  store i8 %bf.clear145.i.sink, ptr %high_speed143.i, align 8
  %108 = ptrtoint ptr %sw_caps.i467 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink, ptr %sw_caps.i467, align 4
  br label %if.end161

if.then155:                                       ; preds = %if.end99.i.if.then155_crit_edge, %if.then65.i.if.then155_crit_edge, %if.then56.i.if.then155_crit_edge, %if.then39.i.if.then155_crit_edge, %if.end6.i.if.then155_crit_edge, %dev_name.exit.i, %if.end152.if.then155_crit_edge
  %retval.0.i405.ph = phi i32 [ %call100.i, %if.end99.i.if.then155_crit_edge ], [ %call68.i, %if.then65.i.if.then155_crit_edge ], [ %call57.i, %if.then56.i.if.then155_crit_edge ], [ %call40.i, %if.then39.i.if.then155_crit_edge ], [ %call9.i, %if.end6.i.if.then155_crit_edge ], [ %call.i401, %if.end152.if.then155_crit_edge ], [ -22, %dev_name.exit.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #13
  %tobool.not.i406 = icmp eq ptr %call46, null
  br i1 %tobool.not.i406, label %if.then155.mmc_sdio_pre_init.exit413_crit_edge, label %if.then.i407

if.then155.mmc_sdio_pre_init.exit413_crit_edge:   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_pre_init.exit413

if.then.i407:                                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_remove_card(ptr noundef nonnull %call46) #13
  br label %mmc_sdio_pre_init.exit413

mmc_sdio_pre_init.exit413:                        ; preds = %if.then.i407, %if.then155.mmc_sdio_pre_init.exit413_crit_edge
  %call.i408 = call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i409 = call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i410 = call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %ocr) #13
  %call3.i411 = call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400)
  %tobool158.not = icmp eq i32 %and.i400, 0
  br i1 %tobool158.not, label %mmc_sdio_pre_init.exit413.cleanup_crit_edge, label %mmc_sdio_pre_init.exit413.try_again.backedge_crit_edge

mmc_sdio_pre_init.exit413.try_again.backedge_crit_edge: ; preds = %mmc_sdio_pre_init.exit413
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_again.backedge

mmc_sdio_pre_init.exit413.cleanup_crit_edge:      ; preds = %mmc_sdio_pre_init.exit413
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end161:                                        ; preds = %if.then132.i, %if.end128.i.if.end161_crit_edge, %if.end53.i.if.end161_crit_edge, %if.end36.i.if.end161_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #13
  %call162 = call i32 @sdio_read_common_cis(ptr noundef %call46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end161.remove_crit_edge

if.end161.remove_crit_edge:                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.end165:                                        ; preds = %if.end161
  br i1 %tobool116430, label %if.then167, label %if.end165.if.end186_crit_edge

if.end165.if.end186_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end186

if.then167:                                       ; preds = %if.end165
  %cis168 = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 30
  %109 = ptrtoint ptr %cis168 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %cis168, align 4
  %cis170 = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 30
  %111 = ptrtoint ptr %cis170 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %cis170, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %112)
  %cmp173 = icmp eq i16 %110, %112
  br i1 %cmp173, label %land.lhs.true175, label %if.then167.do.body256_crit_edge

if.then167.do.body256_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body256

land.lhs.true175:                                 ; preds = %if.then167
  %device = getelementptr inbounds %struct.mmc_card, ptr %call46, i32 0, i32 30, i32 1
  %113 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %device, align 2
  %device179 = getelementptr inbounds %struct.mmc_card, ptr %oldcard, i32 0, i32 30, i32 1
  %115 = ptrtoint ptr %device179 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %device179, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %116)
  %cmp181 = icmp eq i16 %114, %116
  br i1 %cmp181, label %if.then183, label %land.lhs.true175.do.body256_crit_edge

land.lhs.true175.do.body256_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body256

if.then183:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_remove_card(ptr noundef %call46) #13
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end165.if.end186_crit_edge
  %card.0 = phi ptr [ %oldcard, %if.then183 ], [ %call46, %if.end165.if.end186_crit_edge ]
  call fastcc void @mmc_fixup_device(ptr noundef %card.0, ptr noundef nonnull @sdio_fixup_methods)
  %type187 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 4
  %117 = ptrtoint ptr %type187 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type187, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %118)
  %cmp188 = icmp eq i32 %118, 3
  br i1 %cmp188, label %if.then190, label %if.end186.if.end209_crit_edge

if.end186.if.end209_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end209

if.then190:                                       ; preds = %if.end186
  %call193 = call i32 @mmc_sd_setup_card(ptr noundef %host, ptr noundef %card.0, i1 noundef zeroext %tobool116430) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.else206, label %if.then195

if.then195:                                       ; preds = %if.then190
  %call196 = call i32 @mmc_go_idle(ptr noundef %host) #13
  %119 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %caps.i, align 32
  %and198 = and i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.then195.if.end204_crit_edge, label %if.then200

if.then195.if.end204_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

if.then200:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @use_spi_crc to i32))
  %121 = load i8, ptr @use_spi_crc, align 1, !range !107
  %122 = zext i8 %121 to i32
  %call203 = call i32 @mmc_spi_set_crc(ptr noundef %host, i32 noundef %122) #13
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %if.then195.if.end204_crit_edge
  %123 = ptrtoint ptr %type187 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %type187, align 8
  br label %if.end209

if.else206:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #15
  %type207 = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 1, i32 4
  %124 = ptrtoint ptr %type207 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @sd_type, ptr %type207, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.else206, %if.end204, %if.end186.if.end209_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl.i) #13
  %125 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !104
  %quirks.i.i = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 6
  %126 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %quirks.i.i, align 8
  %and.i.i414 = and i32 %127, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i414)
  %tobool.not.i415 = icmp eq i32 %and.i.i414, 0
  br i1 %tobool.not.i415, label %sdio_disable_cd.exit.thread, label %if.end.i417

sdio_disable_cd.exit.thread:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  br label %if.end213

if.end.i417:                                      ; preds = %if.end209
  %call1.i416 = call i32 @mmc_io_rw_direct(ptr noundef %card.0, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %ctrl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i416)
  %tobool2.not.i = icmp eq i32 %call1.i416, 0
  br i1 %tobool2.not.i, label %sdio_disable_cd.exit, label %sdio_disable_cd.exit.thread439

sdio_disable_cd.exit.thread439:                   ; preds = %if.end.i417
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  br label %remove

sdio_disable_cd.exit:                             ; preds = %if.end.i417
  %128 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ctrl.i, align 1
  %130 = or i8 %129, -128
  store i8 %130, ptr %ctrl.i, align 1
  %call6.i = call i32 @mmc_io_rw_direct(ptr noundef %card.0, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %130, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool211.not = icmp eq i32 %call6.i, 0
  br i1 %tobool211.not, label %sdio_disable_cd.exit.if.end213_crit_edge, label %sdio_disable_cd.exit.remove_crit_edge

sdio_disable_cd.exit.remove_crit_edge:            ; preds = %sdio_disable_cd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

sdio_disable_cd.exit.if.end213_crit_edge:         ; preds = %sdio_disable_cd.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.end213:                                        ; preds = %sdio_disable_cd.exit.if.end213_crit_edge, %sdio_disable_cd.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i400)
  %tobool215.not = icmp eq i32 %and.i400, 0
  br i1 %tobool215.not, label %if.end213.if.else223_crit_edge, label %land.lhs.true216

if.end213.if.else223_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else223

land.lhs.true216:                                 ; preds = %if.end213
  %sd3_bus_mode = getelementptr inbounds %struct.mmc_card, ptr %card.0, i32 0, i32 24, i32 2
  %131 = ptrtoint ptr %sd3_bus_mode to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sd3_bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool217.not = icmp eq i32 %132, 0
  br i1 %tobool217.not, label %land.lhs.true216.if.else223_crit_edge, label %if.then218

land.lhs.true216.if.else223_crit_edge:            ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else223

if.then218:                                       ; preds = %land.lhs.true216
  %call219 = call fastcc i32 @mmc_sdio_init_uhs_card(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then218.if.end239_crit_edge, label %if.then218.remove_crit_edge

if.then218.remove_crit_edge:                      ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.then218.if.end239_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end239

if.else223:                                       ; preds = %land.lhs.true216.if.else223_crit_edge, %if.end213.if.else223_crit_edge
  %call224 = call fastcc i32 @sdio_enable_hs(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %cmp225 = icmp sgt i32 %call224, 0
  br i1 %cmp225, label %if.then227, label %if.else229

if.then227:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %card.0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %card.0, align 8
  call void @mmc_set_timing(ptr noundef %134, i32 noundef 2) #13
  br label %if.end233

if.else229:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool230.not = icmp eq i32 %call224, 0
  br i1 %tobool230.not, label %if.else229.if.end233_crit_edge, label %if.else229.remove_crit_edge

if.else229.remove_crit_edge:                      ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.else229.if.end233_crit_edge:                   ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end233

if.end233:                                        ; preds = %if.else229.if.end233_crit_edge, %if.then227
  %call234 = call fastcc i32 @mmc_sdio_get_max_clock(ptr noundef %card.0)
  call void @mmc_set_clock(ptr noundef %host, i32 noundef %call234) #13
  %call235 = call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %card.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %if.end233.if.end239_crit_edge, label %if.end233.remove_crit_edge

if.end233.remove_crit_edge:                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

if.end233.if.end239_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end239

if.end239:                                        ; preds = %if.end233.if.end239_crit_edge, %if.then218.if.end239_crit_edge
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %135 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %caps2, align 4
  %and240 = and i32 %136, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %if.end239.if.end254_crit_edge, label %land.lhs.true242

if.end239.if.end254_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

land.lhs.true242:                                 ; preds = %if.end239
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 8
  %137 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp244 = icmp eq i8 %138, 0
  br i1 %cmp244, label %do.end249, label %land.lhs.true242.if.end254_crit_edge

land.lhs.true242.if.end254_crit_edge:             ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end254

do.end249:                                        ; preds = %land.lhs.true242
  %139 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i420 = icmp eq ptr %140, null
  br i1 %tobool.not.i420, label %if.end.i421, label %do.end249.dev_name.exit423_crit_edge

do.end249.dev_name.exit423_crit_edge:             ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit423

if.end.i421:                                      ; preds = %do.end249
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit423

dev_name.exit423:                                 ; preds = %if.end.i421, %do.end249.dev_name.exit423_crit_edge
  %retval.0.i422 = phi ptr [ %142, %if.end.i421 ], [ %140, %do.end249.dev_name.exit423_crit_edge ]
  %call253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i422) #16
  br label %remove

if.end254:                                        ; preds = %land.lhs.true242.if.end254_crit_edge, %if.end239.if.end254_crit_edge
  %card255 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %143 = ptrtoint ptr %card255 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %card.0, ptr %card255, align 4
  br label %cleanup

do.body256:                                       ; preds = %land.lhs.true175.do.body256_crit_edge, %if.then167.do.body256_crit_edge, %land.lhs.true73.do.body256_crit_edge, %lor.lhs.false.do.body256_crit_edge, %land.lhs.true58.do.body256_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_sdio_init_card.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_sdio_init_card, %if.then266)) #13
          to label %remove [label %if.then266], !srcloc !108

if.then266:                                       ; preds = %do.body256
  %144 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i425 = icmp eq ptr %145, null
  br i1 %tobool.not.i425, label %if.end.i426, label %if.then266.dev_name.exit428_crit_edge

if.then266.dev_name.exit428_crit_edge:            ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit428

if.end.i426:                                      ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #15
  %146 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit428

dev_name.exit428:                                 ; preds = %if.end.i426, %if.then266.dev_name.exit428_crit_edge
  %retval.0.i427 = phi ptr [ %147, %if.end.i426 ], [ %145, %if.then266.dev_name.exit428_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mmc_sdio_init_card.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i427) #13
  br label %remove

remove:                                           ; preds = %dev_name.exit428, %do.body256, %dev_name.exit423, %if.end233.remove_crit_edge, %if.else229.remove_crit_edge, %if.then218.remove_crit_edge, %sdio_disable_cd.exit.remove_crit_edge, %sdio_disable_cd.exit.thread439, %if.end161.remove_crit_edge, %if.then130.remove_crit_edge, %if.then121.remove_crit_edge, %if.then105.remove_crit_edge
  %err.1 = phi i32 [ -2, %dev_name.exit428 ], [ %call162, %if.end161.remove_crit_edge ], [ %call6.i, %sdio_disable_cd.exit.remove_crit_edge ], [ %call219, %if.then218.remove_crit_edge ], [ -22, %dev_name.exit423 ], [ %call235, %if.end233.remove_crit_edge ], [ %call224, %if.else229.remove_crit_edge ], [ %call1.i416, %sdio_disable_cd.exit.thread439 ], [ -2, %do.body256 ], [ %call106, %if.then105.remove_crit_edge ], [ %call122, %if.then121.remove_crit_edge ], [ %call131, %if.then130.remove_crit_edge ]
  %card.1 = phi ptr [ %call46, %dev_name.exit428 ], [ %call46, %if.end161.remove_crit_edge ], [ %card.0, %sdio_disable_cd.exit.remove_crit_edge ], [ %card.0, %if.then218.remove_crit_edge ], [ %card.0, %dev_name.exit423 ], [ %card.0, %if.end233.remove_crit_edge ], [ %card.0, %if.else229.remove_crit_edge ], [ %card.0, %sdio_disable_cd.exit.thread439 ], [ %call46, %do.body256 ], [ %call46, %if.then105.remove_crit_edge ], [ %call46, %if.then121.remove_crit_edge ], [ %call46, %if.then130.remove_crit_edge ]
  %cmp272.not = icmp eq ptr %card.1, %oldcard
  br i1 %cmp272.not, label %remove.cleanup_crit_edge, label %if.then274

remove.cleanup_crit_edge:                         ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then274:                                       ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #15
  call void @mmc_remove_card(ptr noundef %card.1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then274, %remove.cleanup_crit_edge, %if.end254, %mmc_sdio_pre_init.exit413.cleanup_crit_edge, %if.else149, %if.then148, %if.then48, %if.then39.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then48 ], [ 0, %if.end254 ], [ 0, %if.else149 ], [ 0, %if.then148 ], [ %err.1, %if.then274 ], [ %err.1, %remove.cleanup_crit_edge ], [ %retval.0.i405.ph, %mmc_sdio_pre_init.exit413.cleanup_crit_edge ], [ %call41, %if.then39.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rocr) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_add_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_sdio_remove(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %sdio_funcs19 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %sdio_funcs19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_funcs19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %11, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmc_card, ptr %4, i32 0, i32 31, i32 %i.021
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdio_remove_func(ptr noundef nonnull %6) #13
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %arrayidx7 = getelementptr %struct.mmc_card, ptr %8, i32 0, i32 31, i32 %i.021
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %sdio_funcs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdio_funcs, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %11, %for.inc.for.end_crit_edge ]
  tail call void @mmc_remove_card(ptr noundef %.lcssa) #13
  %14 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %card, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detach_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_sdio_detect(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !109
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !110
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then13_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then13_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !111
  br label %if.then13

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call.i27 = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  %call3 = tail call i32 @_mmc_detect_card_removed(ptr noundef %host) #13
  tail call void @mmc_release_host(ptr noundef %host) #13
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 32
  %and5 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end2.out_crit_edge, label %if.then7

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %card8 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %7 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card8, align 4
  %dev9 = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 1
  %call.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %dev9, i32 noundef 4) #13
  br label %out

out:                                              ; preds = %if.then7, %if.end2.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool12.not = icmp eq i32 %call3, 0
  br i1 %tobool12.not, label %out.if.end14_crit_edge, label %out.if.then13_crit_edge

out.if.then13_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %out.if.then13_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.if.then13_crit_edge
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %sdio_funcs19.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %sdio_funcs19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sdio_funcs19.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not.i = icmp eq i32 %12, 0
  br i1 %cmp20.not.i, label %if.then13.mmc_sdio_remove.exit_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.mmc_sdio_remove.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_remove.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %13 = phi ptr [ %20, %for.inc.i.for.body.i_crit_edge ], [ %10, %if.then13.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %13, i32 0, i32 31, i32 %i.021.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i29

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i29:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdio_remove_func(ptr noundef nonnull %15) #13
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %arrayidx7.i = getelementptr %struct.mmc_card, ptr %17, i32 0, i32 31, i32 %i.021.i
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i29, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %sdio_funcs.i = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %sdio_funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdio_funcs.i, align 8
  %cmp.i30 = icmp ult i32 %inc.i, %22
  br i1 %cmp.i30, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mmc_sdio_remove.exit_crit_edge

for.inc.i.mmc_sdio_remove.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

mmc_sdio_remove.exit:                             ; preds = %for.inc.i.mmc_sdio_remove.exit_crit_edge, %if.then13.mmc_sdio_remove.exit_crit_edge
  %.lcssa.i = phi ptr [ %10, %if.then13.mmc_sdio_remove.exit_crit_edge ], [ %20, %for.inc.i.mmc_sdio_remove.exit_crit_edge ]
  tail call void @mmc_remove_card(ptr noundef %.lcssa.i) #13
  %23 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %card.i, align 4
  %call.i31 = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  tail call void @mmc_detach_bus(ptr noundef %host) #13
  tail call void @mmc_power_off(ptr noundef %host) #13
  tail call void @mmc_release_host(ptr noundef %host) #13
  br label %if.end14

if.end14:                                         ; preds = %mmc_sdio_remove.exit, %out.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_pre_suspend(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %sdio_funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdio_funcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48.not = icmp eq i32 %3, 0
  br i1 %cmp48.not, label %entry.cleanup19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmc_card, ptr %1, i32 0, i32 31, i32 %i.049
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true3

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true3:                                   ; preds = %land.lhs.true
  %driver = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true3.for.inc_crit_edge, label %if.then

land.lhs.true3.for.inc_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true3
  %pm = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.then.remove_crit_edge, label %lor.lhs.false

if.then.remove_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

lor.lhs.false:                                    ; preds = %if.then
  %suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %lor.lhs.false.remove_crit_edge, label %cleanup

lor.lhs.false.remove_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

cleanup:                                          ; preds = %lor.lhs.false
  %resume = getelementptr inbounds %struct.dev_pm_ops, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resume, align 4
  %tobool10.not.not = icmp eq ptr %15, null
  br i1 %tobool10.not.not, label %cleanup.remove_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

cleanup.remove_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %land.lhs.true3.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup19

remove:                                           ; preds = %cleanup.remove_crit_edge, %lor.lhs.false.remove_crit_edge, %if.then.remove_crit_edge
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.i, align 32
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not.not = icmp eq i32 %18, 0
  br i1 %tobool16.not.not, label %remove.for.body.i_crit_edge, label %do.end

remove.for.body.i_crit_edge:                      ; preds = %remove
  br label %for.body.i

do.end:                                           ; preds = %remove
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.3) #16
  br label %cleanup19

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %remove.for.body.i_crit_edge
  %21 = phi ptr [ %28, %for.inc.i.for.body.i_crit_edge ], [ %1, %remove.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %remove.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmc_card, ptr %21, i32 0, i32 31, i32 %i.021.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sdio_remove_func(ptr noundef nonnull %23) #13
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %arrayidx7.i = getelementptr %struct.mmc_card, ptr %25, i32 0, i32 31, i32 %i.021.i
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %sdio_funcs.i = getelementptr inbounds %struct.mmc_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %sdio_funcs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sdio_funcs.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %mmc_sdio_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

mmc_sdio_remove.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mmc_remove_card(ptr noundef %28) #13
  %31 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %card, align 4
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  tail call void @mmc_detach_bus(ptr noundef %host) #13
  tail call void @mmc_power_off(ptr noundef %host) #13
  tail call void @mmc_release_host(ptr noundef %host) #13
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 51
  %32 = ptrtoint ptr %pm_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %pm_flags, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %mmc_sdio_remove.exit, %do.end, %for.inc.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_suspend(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sdio_irqs = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 46
  %0 = ptrtoint ptr %sdio_irqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdio_irqs, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %pm_flags.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 51
  %2 = ptrtoint ptr %pm_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !105

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1027, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %state, align 4
  %sdio_irq_work = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 48
  %call22 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sdio_irq_work) #13
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  %pm_flags.i52 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 51
  %8 = ptrtoint ptr %pm_flags.i52 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pm_flags.i52, align 4
  %10 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %.not = icmp eq i32 %10, 3
  br i1 %.not, label %if.then27, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then27:                                        ; preds = %if.end
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %if.then27.out.i_crit_edge, label %if.end.i

if.then27.out.i_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end.i:                                         ; preds = %if.then27
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 32
  %and.i56 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i, label %if.end.i.if.end30_crit_edge, label %if.end2.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end2.i:                                        ; preds = %if.end.i
  %bus_widths.i = getelementptr inbounds %struct.mmc_card, ptr %12, i32 0, i32 22, i32 4
  %19 = ptrtoint ptr %bus_widths.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bus_widths.i, align 4
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i = icmp eq i8 %21, 0
  br i1 %tobool4.not.i, label %if.end2.i.if.end30_crit_edge, label %if.end6.i

if.end2.i.if.end30_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end6.i:                                        ; preds = %if.end2.i
  %call.i57 = tail call i32 @mmc_app_set_bus_width(ptr noundef %12, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool7.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool7.not.i, label %if.end6.i.out.i_crit_edge, label %if.end6.i.if.end30_crit_edge

if.end6.i.if.end30_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

out.i:                                            ; preds = %if.end6.i.out.i_crit_edge, %if.then27.out.i_crit_edge
  %call10.i = tail call fastcc i32 @sdio_disable_wide(ptr noundef %12) #13
  br label %if.end30

if.end30:                                         ; preds = %out.i, %if.end6.i.if.end30_crit_edge, %if.end2.i.if.end30_crit_edge, %if.end.i.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %22 = ptrtoint ptr %pm_flags.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pm_flags.i52, align 4
  %and.i59 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool32.not = icmp eq i32 %and.i59, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mmc_power_off(ptr noundef %host) #13
  br label %if.end37

if.else:                                          ; preds = %if.end30
  %retune_period = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 34
  %24 = ptrtoint ptr %retune_period to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retune_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %if.else.if.end37_crit_edge, label %if.then35

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then35:                                        ; preds = %if.else
  tail call void @mmc_retune_timer_stop(ptr noundef %host) #13
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 29
  %26 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %27 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i60 = icmp eq i16 %27, 0
  br i1 %tobool.not.i60, label %if.then35.if.end37_crit_edge, label %if.then.i

if.then35.if.end37_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 32
  %28 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %if.then35.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.then33
  tail call void @mmc_release_host(ptr noundef %host) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_resume(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  %pm_flags.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 51
  %0 = ptrtoint ptr %pm_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pm_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ocr, align 8
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %5) #13
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 32
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev5 = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 1
  %call.i57 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev5, i32 noundef 0) #13
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev8 = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 1
  tail call void @pm_runtime_enable(ptr noundef %dev8) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ocr.i, align 8
  %call.i.i = tail call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i.i = tail call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i.i = tail call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %17) #13
  %call3.i.i = tail call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %ocr2.i = getelementptr inbounds %struct.mmc_card, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ocr2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ocr2.i, align 8
  %call4.i = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %21, ptr noundef %19) #13
  br label %if.end16

if.else:                                          ; preds = %entry
  %and.i59 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool11.not = icmp eq i32 %and.i59, 0
  br i1 %tobool11.not, label %if.else.if.end19_crit_edge, label %if.then12

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %card13 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %22 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card13, align 4
  %call14 = tail call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %23)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.i
  %err.0 = phi i32 [ %call14, %if.then12 ], [ %call4.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool17.not = icmp eq i32 %err.0, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %card20 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %24 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card20, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %and21 = and i32 %27, -33
  store i32 %and21, ptr %state, align 4
  %sdio_irqs = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 46
  %28 = ptrtoint ptr %sdio_irqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sdio_irqs, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.end19.out_crit_edge, label %if.then23

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then23:                                        ; preds = %if.end19
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %30 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps2, align 4
  %and24 = and i32 %31, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %sdio_irq_thread = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 47
  %32 = ptrtoint ptr %sdio_irq_thread to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdio_irq_thread, align 4
  %call27 = tail call i32 @wake_up_process(ptr noundef %33) #13
  br label %out

if.else28:                                        ; preds = %if.then23
  %caps29 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %34 = ptrtoint ptr %caps29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps29, align 32
  %and30 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else28.out_crit_edge, label %if.then32

if.else28.out_crit_edge:                          ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %sdio_irq_work = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 48
  %call.i60 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %sdio_irq_work, i32 noundef 0) #13
  br label %out

out:                                              ; preds = %if.then32, %if.else28.out_crit_edge, %if.then26, %if.end19.out_crit_edge, %if.end16.out_crit_edge, %if.end.out_crit_edge
  %err.063 = phi i32 [ 0, %if.end19.out_crit_edge ], [ 0, %if.else28.out_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then26 ], [ %err.0, %if.end16.out_crit_edge ], [ %call3.i.i, %if.end.out_crit_edge ]
  tail call void @mmc_release_host(ptr noundef %host) #13
  %37 = ptrtoint ptr %pm_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pm_flags.i, align 4
  %and37 = and i32 %38, -2
  store i32 %and37, ptr %pm_flags.i, align 4
  ret i32 %err.063
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_runtime_suspend(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  tail call void @mmc_power_off(ptr noundef %host) #13
  tail call void @mmc_release_host(ptr noundef %host) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_runtime_resume(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %host, ptr noundef null, ptr noundef null) #13
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ocr, align 8
  tail call void @mmc_power_up(ptr noundef %host, i32 noundef %3) #13
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocr.i, align 8
  %call.i.i = tail call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i.i = tail call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i.i = tail call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %7) #13
  %call3.i.i = tail call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mmc_sdio_reinit_card.exit_crit_edge

entry.mmc_sdio_reinit_card.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_reinit_card.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %ocr2.i = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ocr2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ocr2.i, align 8
  %call4.i = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %11, ptr noundef %9) #13
  br label %mmc_sdio_reinit_card.exit

mmc_sdio_reinit_card.exit:                        ; preds = %if.end.i, %entry.mmc_sdio_reinit_card.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call3.i.i, %entry.mmc_sdio_reinit_card.exit_crit_edge ]
  tail call void @mmc_release_host(ptr noundef %host) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_alive(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call i32 @mmc_select_card(ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_hw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %sdio_funcs_probed = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sdio_funcs_probed, i32 noundef 4) #13
  %2 = ptrtoint ptr %sdio_funcs_probed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sdio_funcs_probed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %rescan_entered = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 31
  %6 = ptrtoint ptr %rescan_entered to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rescan_entered, align 16
  %state4 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state4, align 4
  %or = or i32 %8, 16
  store i32 %or, ptr %state4, align 4
  tail call void @_mmc_detect_change(ptr noundef %host, i32 noundef 0, i1 noundef zeroext false) #13
  br label %cleanup

if.end5:                                          ; preds = %entry
  %ocr = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ocr, align 8
  tail call void @mmc_power_cycle(ptr noundef %host, i32 noundef %10) #13
  %11 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1, align 4
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ocr.i, align 8
  %call.i.i15 = tail call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i.i = tail call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i.i = tail call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %14) #13
  %call3.i.i = tail call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card1, align 4
  %ocr2.i = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ocr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ocr2.i, align 8
  %call4.i = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %18, ptr noundef %16) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end5.cleanup_crit_edge, %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ %call4.i, %if.end.i ], [ %call3.i.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_sdio_sw_reset(ptr noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_init = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %f_init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_init, align 4
  tail call void @mmc_set_clock(ptr noundef %host, i32 noundef %1) #13
  %call = tail call i32 @sdio_reset(ptr noundef %host) #13
  %call1 = tail call i32 @mmc_go_idle(ptr noundef %host) #13
  tail call void @mmc_set_initial_state(ptr noundef %host) #13
  tail call void @mmc_set_initial_signal_voltage(ptr noundef %host) #13
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %ocr.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ocr.i, align 8
  %call.i.i = tail call i32 @sdio_reset(ptr noundef %host) #13
  %call1.i.i = tail call i32 @mmc_go_idle(ptr noundef %host) #13
  %call2.i.i = tail call i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %5) #13
  %call3.i.i = tail call i32 @mmc_send_io_op_cond(ptr noundef %host, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mmc_sdio_reinit_card.exit_crit_edge

entry.mmc_sdio_reinit_card.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_reinit_card.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %ocr2.i = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ocr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocr2.i, align 8
  %call4.i = tail call fastcc i32 @mmc_sdio_init_card(ptr noundef %host, i32 noundef %9, ptr noundef %7) #13
  br label %mmc_sdio_reinit_card.exit

mmc_sdio_reinit_card.exit:                        ; preds = %if.end.i, %entry.mmc_sdio_reinit_card.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call3.i.i, %entry.mmc_sdio_reinit_card.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_timer_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_disable_wide(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl) #13
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ctrl, align 1, !annotation !104
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 32
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %low_speed = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 29, i32 2
  %5 = ptrtoint ptr %low_speed to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %low_speed, align 8
  %6 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %7 = icmp eq i8 %6, 64
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %ctrl) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %and18 = and i8 %9, -35
  %11 = or i8 %and18, 32
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ctrl, align 1
  %call22 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %11, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 8
  call void @mmc_set_bus_width(ptr noundef %14, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end9.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ %call22, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_io_rw_direct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_bus_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_up(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_enable_4bit_bus(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl.i) #13
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ctrl.i, align 1, !annotation !104
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.sdio_enable_wide.exit.thread_crit_edge, label %if.end.i

entry.sdio_enable_wide.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_enable_wide.exit.thread

if.end.i:                                         ; preds = %entry
  %low_speed.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 29, i32 2
  %5 = ptrtoint ptr %low_speed.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %low_speed.i, align 8
  %6 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %7 = icmp eq i8 %6, 64
  br i1 %7, label %if.end.i.sdio_enable_wide.exit.thread_crit_edge, label %if.end9.i

if.end.i.sdio_enable_wide.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_enable_wide.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %call.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef nonnull %ctrl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end9.i.sdio_enable_wide.exit_crit_edge

if.end9.i.sdio_enable_wide.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_enable_wide.exit

if.end12.i:                                       ; preds = %if.end9.i
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl.i, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp.i = icmp eq i8 %10, 1
  br i1 %cmp.i, label %do.end.i, label %if.end12.i.if.end20.i_crit_edge

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end12.i
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %do.end.i.dev_name.exit.i_crit_edge ]
  %conv18.i = zext i8 %9 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i, i32 noundef %conv18.i) #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %dev_name.exit.i, %if.end12.i.if.end20.i_crit_edge
  %17 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ctrl.i, align 1
  %19 = and i8 %18, -4
  %20 = or i8 %19, 2
  store i8 %20, ptr %ctrl.i, align 1
  %call26.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 7, i8 noundef zeroext %20, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %sdio_enable_wide.exit.thread21, label %if.end20.i.sdio_enable_wide.exit_crit_edge

if.end20.i.sdio_enable_wide.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_enable_wide.exit

sdio_enable_wide.exit.thread21:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  br label %if.end

sdio_enable_wide.exit.thread:                     ; preds = %if.end.i.sdio_enable_wide.exit.thread_crit_edge, %entry.sdio_enable_wide.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  br label %cleanup

sdio_enable_wide.exit:                            ; preds = %if.end20.i.sdio_enable_wide.exit_crit_edge, %if.end9.i.sdio_enable_wide.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end9.i.sdio_enable_wide.exit_crit_edge ], [ %call26.i, %if.end20.i.sdio_enable_wide.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %sdio_enable_wide.exit.cleanup_crit_edge, label %sdio_enable_wide.exit.if.end_crit_edge

sdio_enable_wide.exit.if.end_crit_edge:           ; preds = %sdio_enable_wide.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

sdio_enable_wide.exit.cleanup_crit_edge:          ; preds = %sdio_enable_wide.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sdio_enable_wide.exit.if.end_crit_edge, %sdio_enable_wide.exit.thread21
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp1 = icmp eq i32 %22, 2
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %if.end
  %bus_widths = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 4
  %23 = ptrtoint ptr %bus_widths to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bus_widths, align 4
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.end3.out_crit_edge, label %if.then4

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then4:                                         ; preds = %if.end3
  %call5 = call i32 @mmc_app_set_bus_width(ptr noundef %card, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.out_crit_edge, label %if.then7

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call fastcc i32 @sdio_disable_wide(ptr noundef %card)
  br label %cleanup

out:                                              ; preds = %if.then4.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 8
  call void @mmc_set_bus_width(ptr noundef %27, i32 noundef 2) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %sdio_enable_wide.exit.cleanup_crit_edge, %sdio_enable_wide.exit.thread
  %retval.0 = phi i32 [ 0, %out ], [ %call5, %if.then7 ], [ %retval.0.i, %sdio_enable_wide.exit.cleanup_crit_edge ], [ 0, %sdio_enable_wide.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_go_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_if_cond(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_mmc_detect_change(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_power_cycle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_initial_signal_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_spi_set_crc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_cid(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_fixup_device(ptr noundef %card, ptr nocapture noundef readonly %table) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %cid = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19
  %hwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 6
  %0 = ptrtoint ptr %hwrev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hwrev, align 4
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %fwrev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 7
  %2 = ptrtoint ptr %fwrev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fwrev, align 1
  %conv2 = zext i8 %3 to i64
  %shl3 = shl nuw nsw i64 %conv2, 32
  %or = or i64 %shl3, %shl
  %year = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 5
  %4 = ptrtoint ptr %year to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %year, align 2
  %conv5 = zext i16 %5 to i64
  %shl6 = shl nuw nsw i64 %conv5, 16
  %or7 = or i64 %or, %shl6
  %month = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 8
  %6 = ptrtoint ptr %month to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %month, align 2
  %conv9 = zext i8 %7 to i64
  %or10 = or i64 %or7, %conv9
  %vendor_fixup131 = getelementptr inbounds %struct.mmc_fixup, ptr %table, i32 0, i32 9
  %8 = ptrtoint ptr %vendor_fixup131 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vendor_fixup131, align 4
  %tobool.not132 = icmp eq ptr %9, null
  br i1 %tobool.not132, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %oemid24 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 4
  %prod_name = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 19, i32 1
  %cis = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30
  %device = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 1
  %ext_csd = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vendor_fixup135 = phi ptr [ %vendor_fixup131, %for.body.lr.ph ], [ %vendor_fixup, %for.inc.for.body_crit_edge ]
  %f.0133 = phi ptr [ %table, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %manfid = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 3
  %10 = ptrtoint ptr %manfid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %manfid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.not = icmp eq i32 %11, -1
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp15.not = icmp eq i32 %11, %13
  br i1 %cmp15.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %oemid = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 4
  %14 = ptrtoint ptr %oemid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %oemid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %cmp18.not = icmp eq i16 %15, -1
  br i1 %cmp18.not, label %if.end.if.end29_crit_edge, label %land.lhs.true20

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.end
  %16 = ptrtoint ptr %oemid24 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %oemid24, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp26.not = icmp eq i16 %15, %17
  br i1 %cmp26.not, label %land.lhs.true20.if.end29_crit_edge, label %land.lhs.true20.for.inc_crit_edge

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true20.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %18 = ptrtoint ptr %f.0133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f.0133, align 8
  %cmp30.not = icmp eq ptr %19, null
  br i1 %cmp30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end29
  %call = tail call i32 @strncmp(ptr noundef nonnull %19, ptr noundef %prod_name, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.for.inc_crit_edge

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %cis_vendor = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 5
  %20 = ptrtoint ptr %cis_vendor to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cis_vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp39.not = icmp eq i16 %21, -1
  br i1 %cmp39.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true41

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

land.lhs.true41:                                  ; preds = %if.end37
  %22 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cis, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp45.not = icmp eq i16 %21, %23
  br i1 %cmp45.not, label %land.lhs.true41.if.end48_crit_edge, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true41.if.end48_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true41.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %cis_device = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 6
  %24 = ptrtoint ptr %cis_device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cis_device, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %25)
  %cmp50.not = icmp eq i16 %25, -1
  br i1 %cmp50.not, label %if.end48.if.end60_crit_edge, label %land.lhs.true52

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

land.lhs.true52:                                  ; preds = %if.end48
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp57.not = icmp eq i16 %25, %27
  br i1 %cmp57.not, label %land.lhs.true52.if.end60_crit_edge, label %land.lhs.true52.for.inc_crit_edge

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true52.if.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true52.if.end60_crit_edge, %if.end48.if.end60_crit_edge
  %ext_csd_rev = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 7
  %28 = ptrtoint ptr %ext_csd_rev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ext_csd_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp61.not = icmp eq i32 %29, -1
  br i1 %cmp61.not, label %if.end60.if.end70_crit_edge, label %land.lhs.true63

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

land.lhs.true63:                                  ; preds = %if.end60
  %30 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ext_csd, align 8
  %conv66 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv66)
  %cmp67.not = icmp eq i32 %29, %conv66
  br i1 %cmp67.not, label %land.lhs.true63.if.end70_crit_edge, label %land.lhs.true63.for.inc_crit_edge

land.lhs.true63.for.inc_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true63.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  %rev_start = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 1
  %32 = ptrtoint ptr %rev_start to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rev_start, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %33)
  %cmp71 = icmp ult i64 %or10, %33
  br i1 %cmp71, label %if.end70.for.inc_crit_edge, label %lor.lhs.false

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end70
  %rev_end = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 2
  %34 = ptrtoint ptr %rev_end to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rev_end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or10, i64 %35)
  %cmp73 = icmp ugt i64 %or10, %35
  br i1 %cmp73, label %lor.lhs.false.for.inc_crit_edge, label %if.end76

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end76:                                         ; preds = %lor.lhs.false
  %of_compatible = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 8
  %36 = ptrtoint ptr %of_compatible to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_compatible, align 8
  %tobool77.not = icmp eq ptr %37, null
  br i1 %tobool77.not, label %if.end76.do.body_crit_edge, label %land.lhs.true78

if.end76.do.body_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true78:                                  ; preds = %if.end76
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  %of_node.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %43, ptr noundef null) #13
  %cmp.not9.i = icmp eq ptr %call.i, null
  br i1 %cmp.not9.i, label %land.lhs.true78.for.inc_crit_edge, label %land.lhs.true78.for.body.i_crit_edge

land.lhs.true78.for.body.i_crit_edge:             ; preds = %land.lhs.true78
  br label %for.body.i

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true78.for.body.i_crit_edge
  %np.010.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %land.lhs.true78.for.body.i_crit_edge ]
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %np.010.i, ptr noundef nonnull %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.do.body_crit_edge

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.i:                                        ; preds = %for.body.i
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 128
  %of_node4.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node4.i, align 8
  %call5.i = tail call ptr @of_get_next_child(ptr noundef %49, ptr noundef nonnull %np.010.i) #13
  %cmp.not.i = icmp eq ptr %call5.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %for.body.i.do.body_crit_edge, %if.end76.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_fixup_device.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_fixup_device, %if.then87)) #13
          to label %do.end [label %if.then87], !srcloc !108

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %vendor_fixup135 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vendor_fixup135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_fixup_device.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef %51) #13
  br label %do.end

do.end:                                           ; preds = %if.then87, %do.body
  %52 = ptrtoint ptr %vendor_fixup135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vendor_fixup135, align 4
  %data = getelementptr inbounds %struct.mmc_fixup, ptr %f.0133, i32 0, i32 10
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data, align 8
  tail call void %53(ptr noundef %card, i32 noundef %55) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.inc.i.for.inc_crit_edge, %land.lhs.true78.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end70.for.inc_crit_edge, %land.lhs.true63.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.mmc_fixup, ptr %f.0133, i32 1
  %vendor_fixup = getelementptr %struct.mmc_fixup, ptr %f.0133, i32 1, i32 9
  %56 = ptrtoint ptr %vendor_fixup to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vendor_fixup, align 4
  %tobool.not = icmp eq ptr %57, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_uhs_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_relative_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_csd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_decode_cid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_read_common_cis(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_setup_card(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_init_uhs_card(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %speed.i = alloca i8, align 1
  %drv_type.i = alloca i32, align 4
  %card_strength.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sda_spec3 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 22, i32 1
  %0 = ptrtoint ptr %sda_spec3 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sda_spec3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sdio_enable_4bit_bus(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_type.i) #13
  %2 = ptrtoint ptr %drv_type.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %drv_type.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %card_strength.i) #13
  %3 = ptrtoint ptr %card_strength.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %card_strength.i, align 1, !annotation !104
  %drive_strength1.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 40
  %4 = ptrtoint ptr %drive_strength1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %drive_strength1.i, align 8
  %sd3_drv_type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 3
  %5 = ptrtoint ptr %sd3_drv_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd3_drv_type.i, align 4
  %or.i = or i32 %6, 1
  %uhs_max_dtr.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 1
  %7 = ptrtoint ptr %uhs_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uhs_max_dtr.i, align 4
  %call.i = call i32 @mmc_select_drive_strength(ptr noundef %card, i32 noundef %8, i32 noundef %or.i, ptr noundef nonnull %drv_type.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.if.end17.i_crit_edge, label %if.then.i

if.end3.if.end17.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then.i:                                        ; preds = %if.end3
  %call3.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 21, i8 noundef zeroext 0, ptr noundef nonnull %card_strength.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.then.i.sdio_select_driver_type.exit_crit_edge

if.then.i.sdio_select_driver_type.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_select_driver_type.exit

if.end.i:                                         ; preds = %if.then.i
  %9 = ptrtoint ptr %card_strength.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %card_strength.i, align 1
  %11 = and i8 %10, -49
  %switch.tableidx = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 4
  %switch.offset = add i8 %switch.idx.mult, 16
  %retval.0.i.i = select i1 %12, i8 %switch.offset, i8 0
  %or1035.i = or i8 %retval.0.i.i, %11
  %13 = ptrtoint ptr %card_strength.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or1035.i, ptr %card_strength.i, align 1
  %call12.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 21, i8 noundef zeroext %or1035.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end.i.sdio_select_driver_type.exit_crit_edge

if.end.i.sdio_select_driver_type.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_select_driver_type.exit

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %drive_strength1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %drive_strength1.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i, %if.end3.if.end17.i_crit_edge
  %15 = ptrtoint ptr %drv_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drv_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not.i = icmp eq i32 %16, 0
  br i1 %tobool18.not.i, label %if.end17.i.sdio_select_driver_type.exit_crit_edge, label %if.then19.i

if.end17.i.sdio_select_driver_type.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_select_driver_type.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  call void @mmc_set_driver_type(ptr noundef %18, i32 noundef %16) #13
  br label %sdio_select_driver_type.exit

sdio_select_driver_type.exit:                     ; preds = %if.then19.i, %if.end17.i.sdio_select_driver_type.exit_crit_edge, %if.end.i.sdio_select_driver_type.exit_crit_edge, %if.then.i.sdio_select_driver_type.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %card_strength.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_type.i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %speed.i) #13
  %19 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %speed.i, align 1, !annotation !104
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %23, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not137.i = icmp eq i32 %and2.i.i, 0
  %tobool.not.i29 = or i1 %tobool.not.i.i, %tobool.not137.i
  br i1 %tobool.not.i29, label %sdio_select_driver_type.exit.if.end7_crit_edge, label %if.end.i30

sdio_select_driver_type.exit.if.end7_crit_edge:   ; preds = %sdio_select_driver_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i30:                                       ; preds = %sdio_select_driver_type.exit
  %and.i = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i30.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i30.if.else.i_crit_edge:                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i30
  %sd3_bus_mode.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %24 = ptrtoint ptr %sd3_bus_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sd3_bus_mode.i, align 4
  %and3.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i31 = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i31, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end66.sink.split.i_crit_edge

land.lhs.true.i.if.end66.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i30.if.else.i_crit_edge
  %and9.i = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i.if.else20.i_crit_edge, label %land.lhs.true11.i

if.else.i.if.else20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else20.i

land.lhs.true11.i:                                ; preds = %if.else.i
  %sd3_bus_mode13.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %26 = ptrtoint ptr %sd3_bus_mode13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd3_bus_mode13.i, align 4
  %and14.i = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true11.i.if.else20.i_crit_edge, label %land.lhs.true11.i.if.end66.sink.split.i_crit_edge

land.lhs.true11.i.if.end66.sink.split.i_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split.i

land.lhs.true11.i.if.else20.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else20.i

if.else20.i:                                      ; preds = %land.lhs.true11.i.if.else20.i_crit_edge, %if.else.i.if.else20.i_crit_edge
  %and23.i = and i32 %23, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else20.i.if.else34.i_crit_edge, label %land.lhs.true25.i

if.else20.i.if.else34.i_crit_edge:                ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else34.i

land.lhs.true25.i:                                ; preds = %if.else20.i
  %sd3_bus_mode27.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %28 = ptrtoint ptr %sd3_bus_mode27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd3_bus_mode27.i, align 4
  %and28.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true25.i.if.else34.i_crit_edge, label %land.lhs.true25.i.if.end66.sink.split.i_crit_edge

land.lhs.true25.i.if.end66.sink.split.i_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split.i

land.lhs.true25.i.if.else34.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else34.i

if.else34.i:                                      ; preds = %land.lhs.true25.i.if.else34.i_crit_edge, %if.else20.i.if.else34.i_crit_edge
  %and37.i = and i32 %23, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else34.i.if.else48.i_crit_edge, label %land.lhs.true39.i

if.else34.i.if.else48.i_crit_edge:                ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else48.i

land.lhs.true39.i:                                ; preds = %if.else34.i
  %sd3_bus_mode41.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %30 = ptrtoint ptr %sd3_bus_mode41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd3_bus_mode41.i, align 4
  %and42.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true39.i.if.else48.i_crit_edge, label %land.lhs.true39.i.if.end66.sink.split.i_crit_edge

land.lhs.true39.i.if.end66.sink.split.i_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split.i

land.lhs.true39.i.if.else48.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else48.i

if.else48.i:                                      ; preds = %land.lhs.true39.i.if.else48.i_crit_edge, %if.else34.i.if.else48.i_crit_edge
  %and51.i = and i32 %23, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.else48.i.if.end66.i_crit_edge, label %land.lhs.true53.i

if.else48.i.if.end66.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

land.lhs.true53.i:                                ; preds = %if.else48.i
  %sd3_bus_mode55.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 24, i32 2
  %32 = ptrtoint ptr %sd3_bus_mode55.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sd3_bus_mode55.i, align 4
  %and56.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true53.i.if.end66.i_crit_edge, label %land.lhs.true53.i.if.end66.sink.split.i_crit_edge

land.lhs.true53.i.if.end66.sink.split.i_crit_edge: ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.sink.split.i

land.lhs.true53.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.end66.sink.split.i:                            ; preds = %land.lhs.true53.i.if.end66.sink.split.i_crit_edge, %land.lhs.true39.i.if.end66.sink.split.i_crit_edge, %land.lhs.true25.i.if.end66.sink.split.i_crit_edge, %land.lhs.true11.i.if.end66.sink.split.i_crit_edge, %land.lhs.true.i.if.end66.sink.split.i_crit_edge
  %.sink138.i = phi i32 [ 208000000, %land.lhs.true.i.if.end66.sink.split.i_crit_edge ], [ 50000000, %land.lhs.true11.i.if.end66.sink.split.i_crit_edge ], [ 100000000, %land.lhs.true25.i.if.end66.sink.split.i_crit_edge ], [ 50000000, %land.lhs.true39.i.if.end66.sink.split.i_crit_edge ], [ 25000000, %land.lhs.true53.i.if.end66.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 3, %land.lhs.true.i.if.end66.sink.split.i_crit_edge ], [ 4, %land.lhs.true11.i.if.end66.sink.split.i_crit_edge ], [ 2, %land.lhs.true25.i.if.end66.sink.split.i_crit_edge ], [ 1, %land.lhs.true39.i.if.end66.sink.split.i_crit_edge ], [ 0, %land.lhs.true53.i.if.end66.sink.split.i_crit_edge ]
  %timing.0.ph.i = phi i32 [ 6, %land.lhs.true.i.if.end66.sink.split.i_crit_edge ], [ 7, %land.lhs.true11.i.if.end66.sink.split.i_crit_edge ], [ 5, %land.lhs.true25.i.if.end66.sink.split.i_crit_edge ], [ 4, %land.lhs.true39.i.if.end66.sink.split.i_crit_edge ], [ 3, %land.lhs.true53.i.if.end66.sink.split.i_crit_edge ]
  %bus_speed.0.ph.i = phi i8 [ 6, %land.lhs.true.i.if.end66.sink.split.i_crit_edge ], [ 8, %land.lhs.true11.i.if.end66.sink.split.i_crit_edge ], [ 4, %land.lhs.true25.i.if.end66.sink.split.i_crit_edge ], [ 2, %land.lhs.true39.i.if.end66.sink.split.i_crit_edge ], [ 0, %land.lhs.true53.i.if.end66.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %uhs_max_dtr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink138.i, ptr %uhs_max_dtr.i, align 4
  %sd_bus_speed19.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 38
  %35 = ptrtoint ptr %sd_bus_speed19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %sd_bus_speed19.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end66.sink.split.i, %land.lhs.true53.i.if.end66.i_crit_edge, %if.else48.i.if.end66.i_crit_edge
  %timing.0.i = phi i32 [ 3, %land.lhs.true53.i.if.end66.i_crit_edge ], [ 3, %if.else48.i.if.end66.i_crit_edge ], [ %timing.0.ph.i, %if.end66.sink.split.i ]
  %bus_speed.0.i = phi i8 [ 0, %land.lhs.true53.i.if.end66.i_crit_edge ], [ 0, %if.else48.i.if.end66.i_crit_edge ], [ %bus_speed.0.ph.i, %if.end66.sink.split.i ]
  %call67.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %speed.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end66.i.sdio_set_bus_speed_mode.exit_crit_edge

if.end66.i.sdio_set_bus_speed_mode.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_set_bus_speed_mode.exit

if.end70.i:                                       ; preds = %if.end66.i
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %speed.i, align 1
  %38 = and i8 %37, -15
  %or.i32 = or i8 %38, %bus_speed.0.i
  store i8 %or.i32, ptr %speed.i, align 1
  %call75.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %or.i32, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end70.i.sdio_set_bus_speed_mode.exit_crit_edge

if.end70.i.sdio_set_bus_speed_mode.exit_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sdio_set_bus_speed_mode.exit

if.end78.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  %quirk_max_rate.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 7
  %39 = ptrtoint ptr %quirk_max_rate.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirk_max_rate.i, align 4
  %41 = ptrtoint ptr %uhs_max_dtr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uhs_max_dtr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp82.i = icmp eq i32 %42, 0
  %43 = call i32 @llvm.umin.i32(i32 %40, i32 %42) #13
  %spec.select.i = select i1 %cmp82.i, i32 %40, i32 %43
  %cond94.i = select i1 %cmp.i, i32 %42, i32 %spec.select.i
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card, align 8
  call void @mmc_set_timing(ptr noundef %45, i32 noundef %timing.0.i) #13
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 8
  call void @mmc_set_clock(ptr noundef %47, i32 noundef %cond94.i) #13
  br label %if.end7

sdio_set_bus_speed_mode.exit:                     ; preds = %if.end70.i.sdio_set_bus_speed_mode.exit_crit_edge, %if.end66.i.sdio_set_bus_speed_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call67.i, %if.end66.i.sdio_set_bus_speed_mode.exit_crit_edge ], [ %call75.i, %if.end70.i.sdio_set_bus_speed_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end78.i, %sdio_select_driver_type.exit.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caps, align 32
  %and = and i32 %51, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %timing = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 28, i32 7
  %52 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %timing, align 4
  %.off = add i8 %53, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = call i32 @mmc_execute_tuning(ptr noundef %card) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sdio_set_bus_speed_mode.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %retval.0.i, %sdio_set_bus_speed_mode.exit ], [ 0, %if.end7.cleanup_crit_edge ], [ %call18, %if.then17 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdio_enable_hs(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %speed.i13 = alloca i8, align 1
  %speed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %speed.i) #13
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %speed.i, align 1, !annotation !104
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 16
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mmc_sdio_switch_hs.exit.thread_crit_edge, label %if.end.i

entry.mmc_sdio_switch_hs.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit.thread

if.end.i:                                         ; preds = %entry
  %high_speed.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 29, i32 2
  %5 = ptrtoint ptr %high_speed.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %high_speed.i, align 8
  %6 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end.i.mmc_sdio_switch_hs.exit.thread_crit_edge, label %if.end3.i

if.end.i.mmc_sdio_switch_hs.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %speed.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.mmc_sdio_switch_hs.exit_crit_edge

if.end3.i.mmc_sdio_switch_hs.exit_crit_edge:      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit

if.end6.i:                                        ; preds = %if.end3.i
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %speed.i, align 1
  %storemerge.i = or i8 %8, 2
  store i8 %storemerge.i, ptr %speed.i, align 1
  %call14.i = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %storemerge.i, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %mmc_sdio_switch_hs.exit.thread32, label %if.end6.i.mmc_sdio_switch_hs.exit_crit_edge

if.end6.i.mmc_sdio_switch_hs.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit

mmc_sdio_switch_hs.exit.thread32:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  br label %lor.lhs.false

mmc_sdio_switch_hs.exit.thread:                   ; preds = %if.end.i.mmc_sdio_switch_hs.exit.thread_crit_edge, %entry.mmc_sdio_switch_hs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  br label %cleanup

mmc_sdio_switch_hs.exit:                          ; preds = %if.end6.i.mmc_sdio_switch_hs.exit_crit_edge, %if.end3.i.mmc_sdio_switch_hs.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end3.i.mmc_sdio_switch_hs.exit_crit_edge ], [ %call14.i, %if.end6.i.mmc_sdio_switch_hs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %mmc_sdio_switch_hs.exit.cleanup_crit_edge, label %mmc_sdio_switch_hs.exit.lor.lhs.false_crit_edge

mmc_sdio_switch_hs.exit.lor.lhs.false_crit_edge:  ; preds = %mmc_sdio_switch_hs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

mmc_sdio_switch_hs.exit.cleanup_crit_edge:        ; preds = %mmc_sdio_switch_hs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %mmc_sdio_switch_hs.exit.lor.lhs.false_crit_edge, %mmc_sdio_switch_hs.exit.thread32
  %retval.0.i35 = phi i32 [ 1, %mmc_sdio_switch_hs.exit.thread32 ], [ %retval.0.i, %mmc_sdio_switch_hs.exit.lor.lhs.false_crit_edge ]
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp1 = icmp eq i32 %10, 2
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @mmc_sd_switch_hs(ptr noundef %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %speed.i13) #13
  %11 = ptrtoint ptr %speed.i13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %speed.i13, align 1, !annotation !104
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 8
  %caps.i14 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %caps.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps.i14, align 32
  %and.i15 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %if.then4.mmc_sdio_switch_hs.exit29_crit_edge, label %if.end.i20

if.then4.mmc_sdio_switch_hs.exit29_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit29

if.end.i20:                                       ; preds = %if.then4
  %16 = ptrtoint ptr %high_speed.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i18 = load i8, ptr %high_speed.i, align 8
  %17 = and i8 %bf.load.i18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i19 = icmp eq i8 %17, 0
  br i1 %tobool1.not.i19, label %if.end.i20.mmc_sdio_switch_hs.exit29_crit_edge, label %if.end3.i23

if.end.i20.mmc_sdio_switch_hs.exit29_crit_edge:   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit29

if.end3.i23:                                      ; preds = %if.end.i20
  %call.i21 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 0, i32 noundef 0, i32 noundef 19, i8 noundef zeroext 0, ptr noundef nonnull %speed.i13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not.i22, label %if.end6.i27, label %if.end3.i23.mmc_sdio_switch_hs.exit29_crit_edge

if.end3.i23.mmc_sdio_switch_hs.exit29_crit_edge:  ; preds = %if.end3.i23
  call void @__sanitizer_cov_trace_pc() #15
  br label %mmc_sdio_switch_hs.exit29

if.end6.i27:                                      ; preds = %if.end3.i23
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %speed.i13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %speed.i13, align 1
  %20 = and i8 %19, -3
  store i8 %20, ptr %speed.i13, align 1
  %call14.i24 = call i32 @mmc_io_rw_direct(ptr noundef %card, i32 noundef 1, i32 noundef 0, i32 noundef 19, i8 noundef zeroext %20, ptr noundef null) #13
  br label %mmc_sdio_switch_hs.exit29

mmc_sdio_switch_hs.exit29:                        ; preds = %if.end6.i27, %if.end3.i23.mmc_sdio_switch_hs.exit29_crit_edge, %if.end.i20.mmc_sdio_switch_hs.exit29_crit_edge, %if.then4.mmc_sdio_switch_hs.exit29_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %speed.i13) #13
  br label %cleanup

cleanup:                                          ; preds = %mmc_sdio_switch_hs.exit29, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %mmc_sdio_switch_hs.exit.cleanup_crit_edge, %mmc_sdio_switch_hs.exit.thread
  %retval.0 = phi i32 [ %retval.0.i35, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.i, %mmc_sdio_switch_hs.exit.cleanup_crit_edge ], [ %call2, %mmc_sdio_switch_hs.exit29 ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %mmc_sdio_switch_hs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_sdio_get_max_clock(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timing.i, align 4
  %4 = add i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %5 = icmp ult i8 %4, -2
  br i1 %5, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %max_dtr1 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 3
  %6 = ptrtoint ptr %max_dtr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_dtr1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %max_dtr.0 = phi i32 [ %7, %if.else ], [ 50000000, %entry.if.end_crit_edge ]
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 @mmc_sd_get_max_clock(ptr noundef %card) #13
  %10 = tail call i32 @llvm.umin.i32(i32 %max_dtr.0, i32 %call3)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %max_dtr.1 = phi i32 [ %10, %if.then2 ], [ %max_dtr.0, %if.end.if.end5_crit_edge ]
  ret i32 %max_dtr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cis = getelementptr i8, ptr %dev, i32 1404
  %0 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cis, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 1406
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %major_rev = getelementptr i8, ptr %dev, i32 1448
  %0 = ptrtoint ptr %major_rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %major_rev, align 8
  %conv = zext i8 %1 to i32
  %minor_rev = getelementptr i8, ptr %dev, i32 1449
  %2 = ptrtoint ptr %minor_rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor_rev, align 1
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @info4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_info = getelementptr i8, ptr %dev, i32 1452
  %0 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %dev, i32 1456
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -61, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ocr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ocr = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %ocr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_rca_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rca = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rca, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wl1251_quirk(ptr nocapture noundef %card, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.33) #16
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 8
  %or = or i32 %5, 4
  store i32 %or, ptr %quirks, align 8
  %wide_bus = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 29, i32 2
  %6 = ptrtoint ptr %wide_bus to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %wide_bus, align 8
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %wide_bus, align 8
  %cis = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30
  %7 = ptrtoint ptr %cis to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4172, ptr %cis, align 4
  %device = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -28570, ptr %device, align 2
  %blksize = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 2
  %9 = ptrtoint ptr %blksize to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 512, ptr %blksize, align 4
  %max_dtr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 30, i32 3
  %10 = ptrtoint ptr %max_dtr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24000000, ptr %max_dtr, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %card, i32 noundef %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 6
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %or = or i32 %1, %data
  store i32 %or, ptr %quirks, align 8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @add_limit_rate_quirk(ptr nocapture noundef writeonly %card, i32 noundef %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %quirk_max_rate = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 7
  %0 = ptrtoint ptr %quirk_max_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %quirk_max_rate, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_execute_tuning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_select_drive_strength(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_driver_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_switch_hs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sd_get_max_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdio_alloc_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_read_func_cis(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_remove_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !81, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sdio.c", i32 1191, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sdio.c", i32 1304, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mmc_attach_sdio._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @mmc_attach_sdio._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @mmc_sdio_ops, !8, !"mmc_sdio_ops", i1 false, i1 false}
!8 = !{!"../drivers/mmc/core/sdio.c", i32 1168, i32 33}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mmc/core/sdio.c", i32 1005, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mmc_sdio_pre_suspend._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @mmc_sdio_pre_suspend._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/sdio.c", i32 262, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sdio_enable_wide._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @sdio_enable_wide._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mmc/core/sdio.c", i32 660, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mmc_sdio_init_card._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mmc_sdio_init_card._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/core/sdio.c", i32 880, i32 3}
!28 = !{ptr @mmc_sdio_init_card._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mmc_sdio_init_card._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/sdio.c", i32 890, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mmc_sdio_init_card.__UNIQUE_ID_ddebug273, !31, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!34 = !{ptr @sdio_type, !35, !"sdio_type", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/sdio.c", i32 68, i32 27}
!36 = !{ptr @sdio_std_groups, !37, !"sdio_std_groups", i1 false, i1 false}
!37 = !{!"../drivers/mmc/core/sdio.c", i32 66, i32 1}
!38 = !{ptr @sdio_std_group, !37, !"sdio_std_group", i1 false, i1 false}
!39 = !{ptr @sdio_std_attrs, !40, !"sdio_std_attrs", i1 false, i1 false}
!40 = !{!"../drivers/mmc/core/sdio.c", i32 54, i32 26}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/core/sdio.c", i32 30, i32 1}
!43 = !{ptr @dev_attr_vendor, !42, !"dev_attr_vendor", i1 false, i1 false}
!44 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/core/sdio.c", i32 31, i32 1}
!47 = !{ptr @dev_attr_device, !46, !"dev_attr_device", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/core/sdio.c", i32 32, i32 1}
!50 = !{ptr @dev_attr_revision, !49, !"dev_attr_revision", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/core/sdio.c", i32 49, i32 1}
!54 = !{ptr @dev_attr_info1, !53, !"dev_attr_info1", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/core/sdio.c", i32 50, i32 1}
!58 = !{ptr @dev_attr_info2, !57, !"dev_attr_info2", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/core/sdio.c", i32 51, i32 1}
!61 = !{ptr @dev_attr_info3, !60, !"dev_attr_info3", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/core/sdio.c", i32 52, i32 1}
!64 = !{ptr @dev_attr_info4, !63, !"dev_attr_info4", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mmc/core/sdio.c", i32 33, i32 1}
!67 = !{ptr @dev_attr_ocr, !66, !"dev_attr_ocr", i1 false, i1 false}
!68 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/core/sdio.c", i32 34, i32 1}
!71 = !{ptr @dev_attr_rca, !70, !"dev_attr_rca", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/core/quirks.h", i32 200, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mmc_fixup_device.__UNIQUE_ID_ddebug268, !73, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/core/quirks.h", i32 150, i32 2}
!79 = !{ptr @sdio_card_init_methods, !80, !"sdio_card_init_methods", i1 false, i1 false}
!80 = !{!"../drivers/mmc/core/quirks.h", i32 149, i32 46}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/core/card.h", i32 180, i32 2}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wl1251_quirk._entry, !82, !"_entry", i1 false, i1 false}
!87 = !{ptr @wl1251_quirk._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/core/sdio.c", i32 158, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sdio_read_cccr._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @sdio_read_cccr._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @sdio_fixup_methods, !94, !"sdio_fixup_methods", i1 false, i1 false}
!94 = !{!"../drivers/mmc/core/quirks.h", i32 124, i32 46}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2148522745, i64 2148522771, i64 2148522800, i64 2148522834, i64 2148522865, i64 2148522888}
!107 = !{i8 0, i8 2}
!108 = !{i64 2148336138, i64 2148336143, i64 2148336156, i64 2148336200, i64 2148336234, i64 2148336255}
!109 = !{i64 2148522164}
!110 = !{i64 1008764, i64 1008789, i64 1008811, i64 1008827, i64 1008839, i64 1008859, i64 1008883, i64 1008899, i64 1008911}
!111 = !{i64 2148522352}
