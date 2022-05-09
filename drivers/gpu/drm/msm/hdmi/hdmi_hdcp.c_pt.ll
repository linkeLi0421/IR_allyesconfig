; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hdmi_hdcp_reg_data = type { i32, i32, ptr, i32 }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hdmi_hdcp_ctrl = type { ptr, i32, i8, i32, %struct.work_struct, %struct.work_struct, i32, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, i32, i8, i8, [635 x i8], i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.qcom_scm_hdcp_req = type { i32, i32 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdcp irq %x\0A\00", [19 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:AUTH_SUCCESS_INT received\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_hdmi_hdcp_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c\00", [59 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_irq._entry_ptr = internal global ptr @msm_hdmi_hdcp_irq._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_irq._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: AUTH_FAIL_INT rcvd, LINK0_STATUS=0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_irq._entry_ptr.6 = internal global ptr @msm_hdmi_hdcp_irq._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"still active or activating or no askv. returning\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hdcp inactive or no aksv. returning\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HDCP: Off\0A\00", [21 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: HDCP is not supported without qfprom\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_hdmi_hdcp_init\00", [45 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_init._entry_ptr = internal global ptr @msm_hdmi_hdcp_init._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&hdcp_ctrl->hdcp_auth_work)\00", [50 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&hdcp_ctrl->hdcp_reauth_work)\00", [48 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&hdcp_ctrl->auth_event_queue\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@msm_hdmi_hdcp_auth_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: auth prepare failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_hdmi_hdcp_auth_work\00", [40 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_work._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: key exchange failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.21 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.19, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: receive r0 failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.24 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.22, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: verify r0 failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.27 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.25, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Authentication Part I successful\0A\00", [56 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.30 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.28, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: wait ksv fifo ready failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.33 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.31, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.18, ptr @.str.3, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: recv ksv fifo failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.36 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.34, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.18, ptr @.str.3, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: write ksv fifo failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.39 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.37, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.3, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: check v match failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.42 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.40, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.18, ptr @.str.3, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: hdcp authentication canceled\0A\00", [60 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.45 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.43, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.18, ptr @.str.3, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: hdcp is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.48 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.46, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_work._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.18, ptr @.str.3, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: hdcp authentication failed\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_work._entry_ptr.51 = internal global ptr @msm_hdmi_hdcp_auth_work._entry.49, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: ASKV validation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_hdmi_hdcp_auth_prepare\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_prepare._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_prepare._entry, section ".printk_index", align 4
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDCP_DEBUG_CTRL=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"After enabling HDCP Link0_Status=0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"An not ready after enabling HDCP\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_read_validate_aksv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: AKSV QFPROM doesn't have 20 1's, 20 0's\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"msm_hdmi_hdcp_read_validate_aksv\00", [63 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_read_validate_aksv._entry_ptr = internal global ptr @msm_hdmi_hdcp_read_validate_aksv._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_read_validate_aksv._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: QFPROM AKSV chk failed (AKSV=%02x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_read_validate_aksv._entry_ptr.61 = internal global ptr @msm_hdmi_hdcp_read_validate_aksv._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AKSV=%02x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HDCP_DDC_STATUS=0x%x, FAIL=%d, NACK0=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DDC failure detected\0A\00", [42 x i8] zeroinitializer }, align 32
@msm_reset_hdcp_ddc_failures._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Unable to clear HDCP DDC Failure\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"msm_reset_hdcp_ddc_failures\00", [36 x i8] zeroinitializer }, align 32
@msm_reset_hdcp_ddc_failures._entry_ptr = internal global ptr @msm_reset_hdcp_ddc_failures._entry, section ".printk_index", align 4
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Before: HDMI_DDC_SW_STATUS=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"After: HDMI_DDC_SW_STATUS=0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_msleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: msleep is canceled by event %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_hdmi_hdcp_msleep\00", [43 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_msleep._entry_ptr = internal global ptr @msm_hdmi_hdcp_msleep._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_key_exchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: wait key and an ready failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"msm_hdmi_hdcp_auth_part1_key_exchange\00", [58 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_key_exchange._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: read bcaps error, abort\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.75 = internal global ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.73, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_key_exchange._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:An/Aksv write failed\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.78 = internal global ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.76, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_key_exchange._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s:BKSV Process failed\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.81 = internal global ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Keys not ready(%d). s=%d, l0=%0x08x\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_wait_key_an_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Wait key state timedout\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msm_hdmi_hdcp_wait_key_an_ready\00", [32 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_wait_key_an_ready._entry_ptr = internal global ptr @msm_hdmi_hdcp_wait_key_an_ready._entry, section ".printk_index", align 4
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"An not ready(%d). l0_status=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_wait_key_an_ready._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.3, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Wait An timedout\00", [41 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_wait_key_an_ready._entry_ptr.88 = internal global ptr @msm_hdmi_hdcp_wait_key_an_ready._entry.86, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_bcaps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s:BCAPS read failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm_hdmi_hdcp_recv_bcaps\00", [39 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bcaps._entry_ptr = internal global ptr @msm_hdmi_hdcp_recv_bcaps._entry, section ".printk_index", align 4
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCAPS=%02x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Start DDC read\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"End DDC read %d\0A\00", [47 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_scm_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: error: scm_call ret=%d resp=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_hdmi_hdcp_scm_wr\00", [43 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_scm_wr._entry_ptr = internal global ptr @msm_hdmi_hdcp_scm_wr._entry, section ".printk_index", align 4
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link ASKV=%08x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_send_aksv_an._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s:An write failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_hdmi_hdcp_send_aksv_an\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_send_aksv_an._entry_ptr = internal global ptr @msm_hdmi_hdcp_send_aksv_an._entry, section ".printk_index", align 4
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Link0-An=%08x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_send_aksv_an._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.98, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s:AKSV write failed\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_send_aksv_an._entry_ptr.102 = internal global ptr @msm_hdmi_hdcp_send_aksv_an._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Link0-AKSV=%02x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Start DDC write\0A\00", [47 x i8] zeroinitializer }, align 32
@msm_hdmi_ddc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: write size too big\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_hdmi_ddc_write\00", [45 x i8] zeroinitializer }, align 32
@msm_hdmi_ddc_write._entry_ptr = internal global ptr @msm_hdmi_ddc_write._entry, section ".printk_index", align 4
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"End DDC write %d\0A\00", [46 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bksv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s:BKSV read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_hdmi_hdcp_recv_bksv\00", [40 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bksv._entry_ptr = internal global ptr @msm_hdmi_hdcp_recv_bksv._entry, section ".printk_index", align 4
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c":BKSV=%02x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bksv._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.109, ptr @.str.3, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013: BKSV doesn't have 20 1's and 20 0's\0A\00", [55 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bksv._entry_ptr.113 = internal global ptr @msm_hdmi_hdcp_recv_bksv._entry.111, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_bksv._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.109, ptr @.str.3, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013: BKSV chk fail. BKSV=%02x%02x%02x%02x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_bksv._entry_ptr.116 = internal global ptr @msm_hdmi_hdcp_recv_bksv._entry.114, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_recv_r0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s:R0' read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"msm_hdmi_hdcp_auth_part1_recv_r0\00", [63 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_recv_r0._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry, section ".printk_index", align 4
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"R0'=%02x%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_verify_r0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Wait Auth IRQ timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"msm_hdmi_hdcp_auth_part1_verify_r0\00", [61 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part1_verify_r0._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Authentication Part I failed\0A\00", [60 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr.124 = internal global ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry.122, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: BCAPS read failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready\00", [51 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Wait KSV fifo ready timedout\00", [61 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.129 = internal global ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.127, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.3, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: bstatus error\0A\00", [43 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.132 = internal global ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.130, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.3, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: BSTATUS write failed\0A\00", [36 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.135 = internal global ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.133, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_check_bstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: BSTATUS read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"msm_hdmi_hdcp_recv_check_bstatus\00", [63 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_check_bstatus._entry_ptr = internal global ptr @msm_hdmi_hdcp_recv_check_bstatus._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_check_bstatus._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.3, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: No downstream devices\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.140 = internal global ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.138, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_check_bstatus._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: no. of devs connected exceeds max allowed\00", [48 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.143 = internal global ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.141, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_check_bstatus._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.3, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: no. of cascade conn exceeds max allowed\00", [50 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.146 = internal global ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.144, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.3, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Recv ksv fifo timedout\00", [35 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"msm_hdmi_hdcp_auth_part2_recv_ksv_fifo\00", [57 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: transfer V failed\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.151 = internal global ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.149, section ".printk_index", align 4
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.3, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: fail to reset sha engine\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.154 = internal global ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.152, section ".printk_index", align 4
@msm_hdmi_hdcp_recv_ksv_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.3, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: KSV FIFO read failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"msm_hdmi_hdcp_recv_ksv_fifo\00", [36 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_recv_ksv_fifo._entry_ptr = internal global ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry, section ".printk_index", align 4
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V' H0\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V' H1\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V' H2\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V' H3\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V' H4\00", [26 x i8] zeroinitializer }, align 32
@__const.msm_hdmi_hdcp_transfer_v_h.reg_data = private unnamed_addr constant [5 x %struct.hdmi_hdcp_reg_data] [%struct.hdmi_hdcp_reg_data { i32 340, i32 32, ptr @.str.157, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 344, i32 36, ptr @.str.158, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 348, i32 40, ptr @.str.159, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 352, i32 44, ptr @.str.160, i32 0 }, %struct.hdmi_hdcp_reg_data { i32 356, i32 48, ptr @.str.161, i32 0 }], align 4
@msm_hdmi_hdcp_transfer_v_h._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.3, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: Read %s failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_hdmi_hdcp_transfer_v_h\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_transfer_v_h._entry_ptr = internal global ptr @msm_hdmi_hdcp_transfer_v_h._entry, section ".printk_index", align 4
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s =%x\0A\00", [24 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Write KSV fifo timedout\00", [34 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"msm_hdmi_hdcp_auth_part2_write_ksv_fifo\00", [56 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry, section ".printk_index", align 4
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDCP_SHA_STATUS=%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMP_DONE\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BLOCK_DONE\0A\00", [20 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_check_v_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: HDCP V Match timedout\00", [36 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"msm_hdmi_hdcp_auth_part2_check_v_match\00", [57 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_auth_part2_check_v_match._entry_ptr = internal global ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry, section ".printk_index", align 4
@.str.172 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hdcp auth failed, queue reauth work\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDCP REAUTH WORK\0A\00", [46 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_reauth_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.3, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: reauth work aborted\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"msm_hdmi_hdcp_reauth_work\00", [38 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_reauth_work._entry_ptr = internal global ptr @msm_hdmi_hdcp_reauth_work._entry, section ".printk_index", align 4
@msm_hdmi_hdcp_reauth_work._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.3, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: abort reauthentication!\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_reauth_work._entry_ptr.178 = internal global ptr @msm_hdmi_hdcp_reauth_work._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Queue AUTH WORK\0A\00", [47 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_hw_ddc_clean._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: hw_ddc_clean failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_hdmi_hdcp_hw_ddc_clean\00", [37 x i8] zeroinitializer }, align 32
@msm_hdmi_hdcp_hw_ddc_clean._entry_ptr = internal global ptr @msm_hdmi_hdcp_hw_ddc_clean._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294967171]
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 217, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 220, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 229, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1312, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1337, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1390, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1398, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1407, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1408, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1409, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1242, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1249, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1255, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1261, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1264, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1271, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1277, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1283, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1289, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1293, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1295, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1297, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 466, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 504, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 525, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 529, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 269, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 271, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 276, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 291, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 302, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 316, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 324, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 349, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 249, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 761, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 768, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 781, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 788, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 606, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 611, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 628, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 633, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 736, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 739, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 97, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 109, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 180, i32 5 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 661, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 673, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 676, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 681, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 684, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 130, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 132, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 151, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 699, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 706, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 711, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 712, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 823, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 826, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 845, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 851, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 949, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 958, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 969, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 978, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 876, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 893, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 904, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 916, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1081, i32 4 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1092, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1099, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1038, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 996, i32 40 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 997, i32 40 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 998, i32 40 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 999, i32 40 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1000, i32 40 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1013, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1017, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1196, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1128, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1132, i32 5 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1142, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1222, i32 5 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 543, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 404, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 425, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 445, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 450, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.715 = private constant [40 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 384, i32 4 }
@llvm.compiler.used = appending global [233 x ptr] [ptr @msm_hdmi_ddc_write._entry, ptr @msm_hdmi_ddc_write._entry_ptr, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.73, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.76, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.79, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.75, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.78, ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.81, ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry, ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry_ptr, ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry, ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry.122, ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr, ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr.124, ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry, ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry_ptr, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.149, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.152, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.151, ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.154, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.127, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.130, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.133, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.129, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.132, ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.135, ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry, ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry_ptr, ptr @msm_hdmi_hdcp_auth_prepare._entry, ptr @msm_hdmi_hdcp_auth_prepare._entry_ptr, ptr @msm_hdmi_hdcp_auth_work._entry, ptr @msm_hdmi_hdcp_auth_work._entry.19, ptr @msm_hdmi_hdcp_auth_work._entry.22, ptr @msm_hdmi_hdcp_auth_work._entry.25, ptr @msm_hdmi_hdcp_auth_work._entry.28, ptr @msm_hdmi_hdcp_auth_work._entry.31, ptr @msm_hdmi_hdcp_auth_work._entry.34, ptr @msm_hdmi_hdcp_auth_work._entry.37, ptr @msm_hdmi_hdcp_auth_work._entry.40, ptr @msm_hdmi_hdcp_auth_work._entry.43, ptr @msm_hdmi_hdcp_auth_work._entry.46, ptr @msm_hdmi_hdcp_auth_work._entry.49, ptr @msm_hdmi_hdcp_auth_work._entry_ptr, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.21, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.24, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.27, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.30, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.33, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.36, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.39, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.42, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.45, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.48, ptr @msm_hdmi_hdcp_auth_work._entry_ptr.51, ptr @msm_hdmi_hdcp_hw_ddc_clean._entry, ptr @msm_hdmi_hdcp_hw_ddc_clean._entry_ptr, ptr @msm_hdmi_hdcp_init._entry, ptr @msm_hdmi_hdcp_init._entry_ptr, ptr @msm_hdmi_hdcp_irq._entry, ptr @msm_hdmi_hdcp_irq._entry.4, ptr @msm_hdmi_hdcp_irq._entry_ptr, ptr @msm_hdmi_hdcp_irq._entry_ptr.6, ptr @msm_hdmi_hdcp_msleep._entry, ptr @msm_hdmi_hdcp_msleep._entry_ptr, ptr @msm_hdmi_hdcp_read_validate_aksv._entry, ptr @msm_hdmi_hdcp_read_validate_aksv._entry.59, ptr @msm_hdmi_hdcp_read_validate_aksv._entry_ptr, ptr @msm_hdmi_hdcp_read_validate_aksv._entry_ptr.61, ptr @msm_hdmi_hdcp_reauth_work._entry, ptr @msm_hdmi_hdcp_reauth_work._entry.176, ptr @msm_hdmi_hdcp_reauth_work._entry_ptr, ptr @msm_hdmi_hdcp_reauth_work._entry_ptr.178, ptr @msm_hdmi_hdcp_recv_bcaps._entry, ptr @msm_hdmi_hdcp_recv_bcaps._entry_ptr, ptr @msm_hdmi_hdcp_recv_bksv._entry, ptr @msm_hdmi_hdcp_recv_bksv._entry.111, ptr @msm_hdmi_hdcp_recv_bksv._entry.114, ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr, ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr.113, ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr.116, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.138, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.141, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.144, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.140, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.143, ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.146, ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry, ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry_ptr, ptr @msm_hdmi_hdcp_scm_wr._entry, ptr @msm_hdmi_hdcp_scm_wr._entry_ptr, ptr @msm_hdmi_hdcp_send_aksv_an._entry, ptr @msm_hdmi_hdcp_send_aksv_an._entry.100, ptr @msm_hdmi_hdcp_send_aksv_an._entry_ptr, ptr @msm_hdmi_hdcp_send_aksv_an._entry_ptr.102, ptr @msm_hdmi_hdcp_transfer_v_h._entry, ptr @msm_hdmi_hdcp_transfer_v_h._entry_ptr, ptr @msm_hdmi_hdcp_wait_key_an_ready._entry, ptr @msm_hdmi_hdcp_wait_key_an_ready._entry.86, ptr @msm_hdmi_hdcp_wait_key_an_ready._entry_ptr, ptr @msm_hdmi_hdcp_wait_key_an_ready._entry_ptr.88, ptr @msm_reset_hdcp_ddc_failures._entry, ptr @msm_reset_hdcp_ddc_failures._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @msm_hdmi_hdcp_init.__key, ptr @.str.12, ptr @msm_hdmi_hdcp_init.__key.13, ptr @.str.14, ptr @msm_hdmi_hdcp_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_irq._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_work._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_read_validate_aksv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_read_validate_aksv._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_reset_hdcp_ddc_failures._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_msleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_wait_key_an_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_wait_key_an_ready._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_bcaps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_scm_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_send_aksv_an._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_send_aksv_an._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_ddc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_bksv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_bksv._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_bksv._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_check_bstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_transfer_v_h._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_reauth_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_reauth_work._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_hdcp_hw_ddc_clean._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_irq(ptr noundef %hdcp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp_ctrl, align 4
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 280
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, 4369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw nsw i32 %and, 1
  %or = or i32 %shl, %call.i
  %and8 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %4 = shl nuw nsw i32 %and8, 3
  %5 = or i32 %or, %4
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %7, i32 280
  tail call void @msm_writel(i32 noundef %5, ptr noundef %add.ptr.i78) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %and) #5
  %and14 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end26_crit_edge, label %do.end19

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end19:                                         ; preds = %if.end
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %hdcp_state = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 3
  %8 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdcp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp22 = icmp eq i32 %9, 2
  br i1 %cmp22, label %if.then24, label %do.end19.if.end26_crit_edge

do.end19.if.end26_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  %auth_event = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %auth_event) #5
  %auth_event_queue = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %auth_event_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.end19.if.end26_crit_edge, %if.end.if.end26_crit_edge
  br i1 %tobool9.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %11, i32 284
  %call.i81 = tail call i32 @msm_readl(ptr noundef %add.ptr.i80) #5
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call.i81) #8
  %hdcp_state36 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 3
  %12 = ptrtoint ptr %hdcp_state36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hdcp_state36, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then29.cleanup_crit_edge [
    i32 3, label %if.then39
    i32 2, label %if.then44
  ]

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %workq = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workq, align 4
  %hdcp_reauth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 5
  %call.i82 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %hdcp_reauth_work) #5
  br label %cleanup

if.then44:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %auth_event45 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %auth_event45) #5
  %auth_event_queue46 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %auth_event_queue46, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.then39, %if.then29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_on(ptr noundef %hdcp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdcp_state = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdcp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.body4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #5
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdcp_ctrl, align 4
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 24
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %call.i = tail call i32 @msm_readl(ptr noundef %5) #5
  %and = and i32 %call.i, -5
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef %and, ptr noundef %7) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #5
  %auth_event = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 6
  %8 = ptrtoint ptr %auth_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %auth_event, align 4
  %9 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %hdcp_state, align 4
  %auth_retries = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 1
  %10 = ptrtoint ptr %auth_retries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %auth_retries, align 4
  %workq = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 22
  %11 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %workq, align 4
  %hdcp_auth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 4
  %call.i27 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %hdcp_auth_work) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_off(ptr noundef %hdcp_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdcp_state = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdcp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdcp_ctrl, align 4
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 24
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 600
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, -268435457
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %7, i32 600
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i60) #5
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %9, i32 280
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i62) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call6) #5
  %auth_event = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %auth_event) #5
  %auth_event_queue = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %auth_event_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  %hdcp_auth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 4
  %call11 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hdcp_auth_work) #5
  %hdcp_reauth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 5
  %call12 = tail call zeroext i1 @cancel_work_sync(ptr noundef %hdcp_reauth_work) #5
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %11, i32 304
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i64) #5
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %13, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i66) #5
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %call.i68 = tail call i32 @msm_readl(ptr noundef %15) #5
  %and28 = and i32 %call.i68, -5
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef %and28, ptr noundef %17) #5
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %19, i32 600
  %call.i72 = tail call i32 @msm_readl(ptr noundef %add.ptr.i71) #5
  %or = or i32 %call.i72, 268435456
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %21, i32 600
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i74) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call22) #5
  %22 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %hdcp_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %do.body4 ], [ @.str.8, %entry.cleanup_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %.str.9.sink) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_hdcp_init(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qfprom_mmio = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 8
  %0 = ptrtoint ptr %qfprom_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qfprom_mmio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 828) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %hdcp_auth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %hdcp_auth_work, i32 noundef 0) #5
  %3 = ptrtoint ptr %hdcp_auth_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %hdcp_auth_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @msm_hdmi_hdcp_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry11 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @msm_hdmi_hdcp_auth_work, ptr %func, align 4
  %hdcp_reauth_work = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %hdcp_reauth_work, i32 noundef 0) #5
  %7 = ptrtoint ptr %hdcp_reauth_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %hdcp_reauth_work, align 4
  %lockdep_map21 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.14, ptr noundef nonnull @msm_hdmi_hdcp_init.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry23 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry23, ptr %entry23, align 8
  %prev.i54 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry23, ptr %prev.i54, align 4
  %func25 = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @msm_hdmi_hdcp_reauth_work, ptr %func25, align 8
  %auth_event_queue = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %auth_event_queue, ptr noundef nonnull @.str.16, ptr noundef nonnull @msm_hdmi_hdcp_init.__key.15) #5
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdmi, ptr %call7.i.i, align 8
  %hdcp_state = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %hdcp_state, align 4
  %aksv_valid = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %aksv_valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %aksv_valid, align 4
  %call32 = tail call zeroext i1 @qcom_scm_hdcp_available() #5
  %tz_hdcp = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %call7.i.i, i32 0, i32 2
  br i1 %call32, label %if.then33, label %if.else

if.then33:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %tz_hdcp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tz_hdcp, align 8
  br label %cleanup

if.else:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %tz_hdcp to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tz_hdcp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %if.else ], [ %call7.i.i, %if.then33 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_hdcp_auth_work(ptr noundef %work) #0 align 64 {
entry:
  %data.i.i213 = alloca i32, align 4
  %reg.i.i214 = alloca i32, align 4
  %reg.i45.i = alloca [2 x i32], align 4
  %data.i46.i = alloca [2 x i32], align 4
  %reg.i.i192 = alloca [5 x i32], align 4
  %data.i.i193 = alloca [5 x i32], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %reg.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  %bcaps.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  %bksv.i.i = alloca [5 x i8], align 1
  %reg.i69.i = alloca [2 x i32], align 4
  %data.i70.i = alloca [2 x i32], align 4
  %link0_an.i.i = alloca [2 x i32], align 4
  %aksv.i.i = alloca [5 x i8], align 1
  %reg.i.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  %bcaps.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %aksv_valid.i = getelementptr i8, ptr %work, i32 156
  %2 = ptrtoint ptr %aksv_valid.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aksv_valid.i, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body8.i_crit_edge

entry.do.body8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

if.then.i:                                        ; preds = %entry
  %qfprom_mmio.i.i.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %qfprom_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qfprom_mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 24792
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #5
  %aksv_lsb.i.i = getelementptr i8, ptr %work, i32 148
  %6 = ptrtoint ptr %aksv_lsb.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i.i, ptr %aksv_lsb.i.i, align 4
  %7 = ptrtoint ptr %qfprom_mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qfprom_mmio.i.i.i, align 4
  %add.ptr.i738.i.i = getelementptr i8, ptr %8, i32 24796
  %call.i739.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i738.i.i) #5
  %aksv_msb.i.i = getelementptr i8, ptr %work, i32 152
  %9 = ptrtoint ptr %aksv_msb.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i739.i.i, ptr %aksv_msb.i.i, align 4
  %10 = ptrtoint ptr %aksv_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aksv_lsb.i.i, align 4
  %call.i740.i.i = tail call i32 @__sw_hweight32(i32 noundef %11) #5
  %12 = ptrtoint ptr %aksv_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aksv_msb.i.i, align 4
  %call.i741.i.i = tail call i32 @__sw_hweight32(i32 noundef %13) #5
  %add643.i.i = add i32 %call.i741.i.i, %call.i740.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add643.i.i)
  %cmp.not.i.i = icmp eq i32 %add643.i.i, 20
  br i1 %cmp.not.i.i, label %if.end.i, label %msm_hdmi_hdcp_auth_prepare.exit.thread266

msm_hdmi_hdcp_auth_prepare.exit.thread266:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call645.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #8
  %14 = ptrtoint ptr %aksv_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aksv_msb.i.i, align 4
  %16 = ptrtoint ptr %aksv_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aksv_lsb.i.i, align 4
  %call652.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %15, i32 noundef %17) #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #8
  %hdcp_state.i = getelementptr i8, ptr %work, i32 -4
  %18 = ptrtoint ptr %hdcp_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hdcp_state.i, align 4
  br label %do.end

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %aksv_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aksv_msb.i.i, align 4
  %21 = ptrtoint ptr %aksv_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aksv_lsb.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %20, i32 noundef %22) #5
  %23 = ptrtoint ptr %aksv_valid.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %aksv_valid.i, align 4
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.end.i, %entry.do.body8.i_crit_edge
  %reg_lock.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 24
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #5
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %call.i.i = tail call i32 @msm_readl(ptr noundef %25) #5
  %and.i = and i32 %call.i.i, -5
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %27) #5
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 528
  %call.i66.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #5
  %and18.i = and i32 %call.i66.i, -17
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %31, i32 528
  tail call void @msm_writel(i32 noundef %and18.i, ptr noundef %add.ptr.i68.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call11.i) #5
  %aksv_lsb.i = getelementptr i8, ptr %work, i32 148
  %32 = ptrtoint ptr %aksv_lsb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aksv_lsb.i, align 4
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %35, i32 648
  tail call void @msm_writel(i32 noundef %33, ptr noundef %add.ptr.i70.i) #5
  %aksv_msb.i = getelementptr i8, ptr %work, i32 152
  %36 = ptrtoint ptr %aksv_msb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aksv_msb.i, align 4
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %39, i32 644
  tail call void @msm_writel(i32 noundef %37, ptr noundef %add.ptr.i72.i) #5
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %41, i32 300
  tail call void @msm_writel(i32 noundef -1308643073, ptr noundef %add.ptr.i74.i) #5
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %43, i32 604
  tail call void @msm_writel(i32 noundef -267519282, ptr noundef %add.ptr.i76.i) #5
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %45, i32 276
  %call.i79.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i78.i) #5
  %and21.i = and i32 %call.i79.i, -5
  %46 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %47, i32 276
  tail call void @msm_writel(i32 noundef %and21.i, ptr noundef %add.ptr.i81.i) #5
  %48 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %49, i32 276
  %call.i84.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i83.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %call.i84.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !337
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %51, i32 272
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i86.i) #5
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %53, i32 284
  %call.i89.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i88.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.55, i32 noundef %call.i89.i) #5
  %and27.i = and i32 %call.i89.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %do.body8.i.if.end30.i_crit_edge

do.body8.i.if.end30.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then29.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.56) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %do.body8.i.if.end30.i_crit_edge
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.hdmi, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i90.i = getelementptr i8, ptr %57, i32 296
  %call.i.i91.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i90.i) #5
  %and.i92.i = and i32 %call.i.i91.i, 65536
  %and2.i.i = and i32 %call.i.i91.i, 16384
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %call.i.i91.i, i32 noundef %and.i92.i, i32 noundef %and2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92.i)
  %tobool.not.i.i = icmp eq i32 %and.i92.i, 0
  br i1 %tobool.not.i.i, label %if.end30.i.if.end9.i.i_crit_edge, label %if.then.i.i

if.end30.i.if.end9.i.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end30.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.64) #5
  %58 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %59, i32 288
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i62.i.i) #5
  %60 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i64.i.i = getelementptr i8, ptr %61, i32 292
  %call.i65.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i64.i.i) #5
  %or.i.i = or i32 %call.i65.i.i, 1
  %62 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %63, i32 292
  tail call void @msm_writel(i32 noundef %or.i.i, ptr noundef %add.ptr.i67.i.i) #5
  %64 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %65, i32 296
  %call.i70.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i69.i.i) #5
  %and5.i.i = and i32 %call.i70.i.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end.i94.i_crit_edge, label %do.end.i93.i

if.then.i.i.if.end.i94.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i94.i

do.end.i93.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #8
  br label %if.end.i94.i

if.end.i94.i:                                     ; preds = %do.end.i93.i, %if.then.i.i.if.end.i94.i_crit_edge
  %66 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i72.i.i = getelementptr i8, ptr %67, i32 288
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i72.i.i) #5
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i94.i, %if.end30.i.if.end9.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool10.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end9.i.i.if.end_crit_edge, label %if.then11.i.i

if.end9.i.i.if.end_crit_edge:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %68 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i74.i.i = getelementptr i8, ptr %69, i32 536
  %call.i75.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i74.i.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.67, i32 noundef %call.i75.i.i) #5
  %70 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i77.i.i = getelementptr i8, ptr %71, i32 524
  %call.i78.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i77.i.i) #5
  %or14.i.i = or i32 %call.i78.i.i, 8
  %72 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i80.i.i = getelementptr i8, ptr %73, i32 524
  tail call void @msm_writel(i32 noundef %or14.i.i, ptr noundef %add.ptr.i80.i.i) #5
  %call15.i.i = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %74 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i82.i.i = getelementptr i8, ptr %75, i32 524
  %call.i83.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i82.i.i) #5
  %and17.i.i = and i32 %call.i83.i.i, -9
  %76 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i85.i.i = getelementptr i8, ptr %77, i32 524
  tail call void @msm_writel(i32 noundef %and17.i.i, ptr noundef %add.ptr.i85.i.i) #5
  %78 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %79, i32 524
  %call.i88.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i87.i.i) #5
  %or19.i.i = or i32 %call.i88.i.i, 2
  %80 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i90.i.i = getelementptr i8, ptr %81, i32 524
  tail call void @msm_writel(i32 noundef %or19.i.i, ptr noundef %add.ptr.i90.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool20.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.then11.i.i.msm_hdmi_hdcp_auth_prepare.exit_crit_edge

if.then11.i.i.msm_hdmi_hdcp_auth_prepare.exit_crit_edge: ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_auth_prepare.exit

if.then21.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i.i = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  br label %msm_hdmi_hdcp_auth_prepare.exit

msm_hdmi_hdcp_auth_prepare.exit:                  ; preds = %if.then21.i.i, %if.then11.i.i.msm_hdmi_hdcp_auth_prepare.exit_crit_edge
  %rc.0.i.i = phi i32 [ %call15.i.i, %if.then11.i.i.msm_hdmi_hdcp_auth_prepare.exit_crit_edge ], [ %call22.i.i, %if.then21.i.i ]
  %82 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %83, i32 524
  %call.i93.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i92.i.i) #5
  %and25.i95.i = and i32 %call.i93.i.i, -3
  %84 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i95.i.i = getelementptr i8, ptr %85, i32 524
  tail call void @msm_writel(i32 noundef %and25.i95.i, ptr noundef %add.ptr.i95.i.i) #5
  %86 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i97.i.i = getelementptr i8, ptr %87, i32 536
  %call.i98.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i97.i.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.68, i32 noundef %call.i98.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %tobool.not = icmp eq i32 %rc.0.i.i, 0
  br i1 %tobool.not, label %msm_hdmi_hdcp_auth_prepare.exit.if.end_crit_edge, label %msm_hdmi_hdcp_auth_prepare.exit.do.end_crit_edge

msm_hdmi_hdcp_auth_prepare.exit.do.end_crit_edge: ; preds = %msm_hdmi_hdcp_auth_prepare.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

msm_hdmi_hdcp_auth_prepare.exit.if.end_crit_edge: ; preds = %msm_hdmi_hdcp_auth_prepare.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %msm_hdmi_hdcp_auth_prepare.exit.do.end_crit_edge, %msm_hdmi_hdcp_auth_prepare.exit.thread266
  %retval.0.i269 = phi i32 [ -524, %msm_hdmi_hdcp_auth_prepare.exit.thread266 ], [ %rc.0.i.i, %msm_hdmi_hdcp_auth_prepare.exit.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i269) #8
  br label %end

if.end:                                           ; preds = %msm_hdmi_hdcp_auth_prepare.exit.if.end_crit_edge, %if.end9.i.i.if.end_crit_edge
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %mmio.i.i.i127 = getelementptr inbounds %struct.hdmi, ptr %89, i32 0, i32 7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end5.i.i.do.body.i.i_crit_edge, %if.end
  %timeout_count.0.i.i = phi i32 [ 100, %if.end ], [ %dec.i.i, %if.end5.i.i.do.body.i.i_crit_edge ]
  %90 = ptrtoint ptr %mmio.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i.i.i127, align 4
  %add.ptr.i.i.i128 = getelementptr i8, ptr %91, i32 284
  %call.i.i.i129 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i128) #5
  %shr.i.i130 = lshr i32 %call.i.i.i129, 28
  %and.i.i131 = and i32 %shr.i.i130, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i131)
  %cmp.i.i = icmp eq i32 %and.i.i131, 3
  br i1 %cmp.i.i, label %do.body.i.i.do.body12.i.i_crit_edge, label %if.end.i.i

do.body.i.i.do.body12.i.i_crit_edge:              ; preds = %do.body.i.i
  br label %do.body12.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef %timeout_count.0.i.i, i32 noundef %and.i.i131, i32 noundef %call.i.i.i129) #5
  %dec.i.i = add nsw i32 %timeout_count.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i132 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i132, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.do.body.i.i_crit_edge, label %if.end5.i.i.do.end.i133_crit_edge

if.end5.i.i.do.end.i133_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i133

if.end5.i.i.do.body.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body12.i.i:                                    ; preds = %if.end29.i.i.do.body12.i.i_crit_edge, %do.body.i.i.do.body12.i.i_crit_edge
  %timeout_count.1.i.i = phi i32 [ %dec21.i.i, %if.end29.i.i.do.body12.i.i_crit_edge ], [ 100, %do.body.i.i.do.body12.i.i_crit_edge ]
  %92 = ptrtoint ptr %mmio.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i.i.i127, align 4
  %add.ptr.i58.i.i = getelementptr i8, ptr %93, i32 284
  %call.i59.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i58.i.i) #5
  %94 = and i32 %call.i59.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %94)
  %95 = icmp eq i32 %94, 768
  br i1 %95, label %if.end.i135, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.body12.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef %timeout_count.1.i.i, i32 noundef %call.i59.i.i) #5
  %dec21.i.i = add nsw i32 %timeout_count.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec21.i.i)
  %tobool22.not.i.i = icmp eq i32 %dec21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end20.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end29.i.i

if.end20.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end29.i.i:                                     ; preds = %if.end20.i.i
  %call30.i.i = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end29.i.i.do.body12.i.i_crit_edge, label %if.end29.i.i.do.end.i133_crit_edge

if.end29.i.i.do.end.i133_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i133

if.end29.i.i.do.body12.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body12.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end20.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.87.sink.i.i = phi ptr [ @.str.87, %if.end20.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.83, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call28.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.87.sink.i.i, ptr noundef nonnull @.str.84) #8
  br label %do.end.i133

do.end.i133:                                      ; preds = %cleanup.sink.split.i.i, %if.end29.i.i.do.end.i133_crit_edge, %if.end5.i.i.do.end.i133_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %cleanup.sink.split.i.i ], [ %call30.i.i, %if.end29.i.i.do.end.i133_crit_edge ], [ %call6.i.i, %if.end5.i.i.do.end.i133_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #8
  br label %do.end8

if.end.i135:                                      ; preds = %do.body12.i.i
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcaps.i.i) #5
  %98 = ptrtoint ptr %bcaps.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %bcaps.i.i, align 1, !annotation !338
  %call.i.i134 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %97, i8 noundef zeroext 64, ptr noundef nonnull %bcaps.i.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %tobool.not.i56.i = icmp eq i32 %call.i.i134, 0
  br i1 %tobool.not.i56.i, label %msm_hdmi_hdcp_recv_bcaps.exit.i, label %msm_hdmi_hdcp_recv_bcaps.exit.thread.i

msm_hdmi_hdcp_recv_bcaps.exit.thread.i:           ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcaps.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #5
  br label %do.end8.i

msm_hdmi_hdcp_recv_bcaps.exit.i:                  ; preds = %if.end.i135
  %99 = ptrtoint ptr %bcaps.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bcaps.i.i, align 1
  %conv.i.i = zext i8 %100 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.91, i32 noundef %conv.i.i) #5
  %101 = ptrtoint ptr %bcaps.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bcaps.i.i, align 1
  %103 = and i8 %102, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool4.not.i.i = icmp eq i8 %103, 0
  %cond.i.i136 = select i1 %tobool4.not.i.i, i32 1, i32 2
  %ds_type.i.i = getelementptr i8, ptr %work, i32 160
  %104 = ptrtoint ptr %ds_type.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %cond.i.i136, ptr %ds_type.i.i, align 4
  %105 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 360, ptr %reg.i.i, align 4
  %conv5.i.i = zext i8 %102 to i32
  %106 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv5.i.i, ptr %data.i.i, align 4
  %call6.i57.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i.i, ptr noundef nonnull %data.i.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcaps.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i57.i)
  %tobool4.not.i = icmp eq i32 %call6.i57.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %msm_hdmi_hdcp_recv_bcaps.exit.i.do.end8.i_crit_edge

msm_hdmi_hdcp_recv_bcaps.exit.i.do.end8.i_crit_edge: ; preds = %msm_hdmi_hdcp_recv_bcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8.i

do.end8.i:                                        ; preds = %msm_hdmi_hdcp_recv_bcaps.exit.i.do.end8.i_crit_edge, %msm_hdmi_hdcp_recv_bcaps.exit.thread.i
  %retval.0.i5989.i = phi i32 [ %call.i.i134, %msm_hdmi_hdcp_recv_bcaps.exit.thread.i ], [ %call6.i57.i, %msm_hdmi_hdcp_recv_bcaps.exit.i.do.end8.i_crit_edge ]
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72) #8
  br label %do.end8

if.end11.i:                                       ; preds = %msm_hdmi_hdcp_recv_bcaps.exit.i
  %107 = ptrtoint ptr %mmio.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i.i.i127, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %108, i32 328
  call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i137) #5
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %link0_an.i.i) #5
  %111 = getelementptr inbounds [2 x i32], ptr %link0_an.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %aksv.i.i) #5
  %112 = getelementptr inbounds [5 x i8], ptr %aksv.i.i, i32 0, i32 1
  %113 = getelementptr inbounds [5 x i8], ptr %aksv.i.i, i32 0, i32 2
  %114 = getelementptr inbounds [5 x i8], ptr %aksv.i.i, i32 0, i32 3
  %115 = getelementptr inbounds [5 x i8], ptr %aksv.i.i, i32 0, i32 4
  %mmio.i.i60.i = getelementptr inbounds %struct.hdmi, ptr %110, i32 0, i32 7
  %116 = ptrtoint ptr %mmio.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i60.i, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %117, i32 332
  %call.i.i62.i = call i32 @msm_readl(ptr noundef %add.ptr.i.i61.i) #5
  %118 = ptrtoint ptr %link0_an.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call.i.i62.i, ptr %link0_an.i.i, align 4
  %119 = ptrtoint ptr %mmio.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i.i60.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %120, i32 336
  %call.i58.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i57.i.i) #5
  %121 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call.i58.i.i, ptr %111, align 4
  %122 = ptrtoint ptr %mmio.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i.i60.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %123, i32 324
  %call.i61.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i60.i.i) #5
  %124 = ptrtoint ptr %mmio.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i.i60.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %125, i32 328
  %call.i64.i.i = call i32 @msm_readl(ptr noundef %add.ptr.i63.i.i) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.96, i32 noundef %call.i61.i.i, i32 noundef %call.i64.i.i) #5
  %conv.i63.i = trunc i32 %call.i61.i.i to i8
  %126 = ptrtoint ptr %aksv.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv.i63.i, ptr %aksv.i.i, align 1
  %shr.i64.i = lshr i32 %call.i61.i.i, 8
  %conv8.i.i = trunc i32 %shr.i64.i to i8
  %127 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv8.i.i, ptr %112, align 1
  %shr10.i.i = lshr i32 %call.i61.i.i, 16
  %conv12.i.i = trunc i32 %shr10.i.i to i8
  %128 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv12.i.i, ptr %113, align 1
  %shr14.i.i = lshr i32 %call.i61.i.i, 24
  %conv16.i.i = trunc i32 %shr14.i.i to i8
  %129 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv16.i.i, ptr %114, align 1
  %and18.i.i = and i32 %call.i64.i.i, 255
  %conv19.i.i = trunc i32 %call.i64.i.i to i8
  %130 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv19.i.i, ptr %115, align 1
  %call21.i.i = call fastcc i32 @msm_hdmi_ddc_write(ptr noundef %110, i8 noundef zeroext 24, ptr noundef nonnull %link0_an.i.i, i16 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool.not.i65.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool.not.i65.i, label %if.end.i67.i, label %if.end11.i.do.end17.i_crit_edge

if.end11.i.do.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

if.end.i67.i:                                     ; preds = %if.end11.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.99, i32 noundef %call.i.i62.i, i32 noundef %call.i58.i.i) #5
  %call26.i.i = call fastcc i32 @msm_hdmi_ddc_write(ptr noundef %110, i8 noundef zeroext 16, ptr noundef nonnull %aksv.i.i, i16 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end20.i, label %if.end.i67.i.do.end17.i_crit_edge

if.end.i67.i.do.end17.i_crit_edge:                ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i67.i.do.end17.i_crit_edge, %if.end11.i.do.end17.i_crit_edge
  %.str.97.sink.i = phi ptr [ @.str.97, %if.end11.i.do.end17.i_crit_edge ], [ @.str.101, %if.end.i67.i.do.end17.i_crit_edge ]
  %retval.0.i68.ph.i = phi i32 [ %call21.i.i, %if.end11.i.do.end17.i_crit_edge ], [ %call26.i.i, %if.end.i67.i.do.end17.i_crit_edge ]
  %call22.i.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.97.sink.i, ptr noundef nonnull @.str.98) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %aksv.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %link0_an.i.i) #5
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72) #8
  br label %do.end8

if.end20.i:                                       ; preds = %if.end.i67.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.103, i32 noundef %and18.i.i, i32 noundef %call.i61.i.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %aksv.i.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %link0_an.i.i) #5
  %131 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %bksv.i.i) #5
  %133 = getelementptr inbounds [5 x i8], ptr %bksv.i.i, i32 0, i32 1
  %134 = getelementptr inbounds [5 x i8], ptr %bksv.i.i, i32 0, i32 2
  %135 = getelementptr inbounds [5 x i8], ptr %bksv.i.i, i32 0, i32 3
  %136 = getelementptr inbounds [5 x i8], ptr %bksv.i.i, i32 0, i32 4
  %137 = call ptr @memset(ptr %bksv.i.i, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i69.i) #5
  %138 = getelementptr inbounds [2 x i32], ptr %reg.i69.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i70.i) #5
  %139 = getelementptr inbounds [2 x i32], ptr %data.i70.i, i32 0, i32 1
  %call.i71.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %132, i8 noundef zeroext 0, ptr noundef nonnull %bksv.i.i, i16 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool.not.i72.i = icmp eq i32 %call.i71.i, 0
  br i1 %tobool.not.i72.i, label %if.end.i76.i, label %do.end.i74.i

do.end.i74.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109) #8
  br label %msm_hdmi_hdcp_recv_bksv.exit.thread.i

if.end.i76.i:                                     ; preds = %if.end20.i
  %140 = ptrtoint ptr %bksv.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bksv.i.i, align 1
  %conv.i75.i = zext i8 %141 to i32
  %142 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %133, align 1
  %conv4.i.i = zext i8 %143 to i32
  %shl.i.i = shl nuw nsw i32 %conv4.i.i, 8
  %or.i.i139 = or i32 %shl.i.i, %conv.i75.i
  %144 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %134, align 1
  %conv6.i.i = zext i8 %145 to i32
  %shl7.i.i = shl nuw nsw i32 %conv6.i.i, 16
  %or8.i.i = or i32 %or.i.i139, %shl7.i.i
  %146 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %135, align 1
  %conv10.i.i = zext i8 %147 to i32
  %shl11.i.i = shl nuw i32 %conv10.i.i, 24
  %or12.i.i = or i32 %or8.i.i, %shl11.i.i
  %bksv_lsb.i.i = getelementptr i8, ptr %work, i32 164
  %148 = ptrtoint ptr %bksv_lsb.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or12.i.i, ptr %bksv_lsb.i.i, align 4
  %149 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %136, align 1
  %conv14.i.i = zext i8 %150 to i32
  %bksv_msb.i.i = getelementptr i8, ptr %work, i32 168
  %151 = ptrtoint ptr %bksv_msb.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv14.i.i, ptr %bksv_msb.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.110, i32 noundef %conv14.i.i, i32 noundef %or12.i.i) #5
  %152 = ptrtoint ptr %bksv_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bksv_lsb.i.i, align 4
  %call.i.i79.i = call i32 @__sw_hweight32(i32 noundef %153) #5
  %154 = ptrtoint ptr %bksv_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %bksv_msb.i.i, align 4
  %call.i780.i.i = call i32 @__sw_hweight32(i32 noundef %155) #5
  %add659.i.i = add i32 %call.i780.i.i, %call.i.i79.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add659.i.i)
  %cmp.not.i.i145 = icmp eq i32 %add659.i.i, 20
  br i1 %cmp.not.i.i145, label %msm_hdmi_hdcp_recv_bksv.exit.i, label %do.end664.i.i

do.end664.i.i:                                    ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #7
  %call666.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #8
  %156 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %136, align 1
  %conv672.i.i = zext i8 %157 to i32
  %158 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %135, align 1
  %conv674.i.i = zext i8 %159 to i32
  %160 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %134, align 1
  %conv676.i.i = zext i8 %161 to i32
  %162 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %133, align 1
  %conv678.i.i = zext i8 %163 to i32
  %164 = ptrtoint ptr %bksv.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bksv.i.i, align 1
  %conv680.i.i = zext i8 %165 to i32
  %call681.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv672.i.i, i32 noundef %conv674.i.i, i32 noundef %conv676.i.i, i32 noundef %conv678.i.i, i32 noundef %conv680.i.i) #8
  br label %msm_hdmi_hdcp_recv_bksv.exit.thread.i

msm_hdmi_hdcp_recv_bksv.exit.thread.i:            ; preds = %do.end664.i.i, %do.end.i74.i
  %retval.0.i81.ph.i = phi i32 [ -22, %do.end664.i.i ], [ %call.i71.i, %do.end.i74.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i70.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i69.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %bksv.i.i) #5
  br label %do.end26.i

msm_hdmi_hdcp_recv_bksv.exit.i:                   ; preds = %if.end.i76.i
  %166 = ptrtoint ptr %reg.i69.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 308, ptr %reg.i69.i, align 4
  %167 = ptrtoint ptr %bksv_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bksv_lsb.i.i, align 4
  %169 = ptrtoint ptr %data.i70.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %data.i70.i, align 4
  %170 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 312, ptr %138, align 4
  %171 = ptrtoint ptr %bksv_msb.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bksv_msb.i.i, align 4
  %173 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %139, align 4
  %call691.i.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i69.i, ptr noundef nonnull %data.i70.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i70.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i69.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %bksv.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call691.i.i)
  %tobool22.not.i = icmp eq i32 %call691.i.i, 0
  br i1 %tobool22.not.i, label %if.end11, label %msm_hdmi_hdcp_recv_bksv.exit.i.do.end26.i_crit_edge

msm_hdmi_hdcp_recv_bksv.exit.i.do.end26.i_crit_edge: ; preds = %msm_hdmi_hdcp_recv_bksv.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %msm_hdmi_hdcp_recv_bksv.exit.i.do.end26.i_crit_edge, %msm_hdmi_hdcp_recv_bksv.exit.thread.i
  %retval.0.i8195.i = phi i32 [ %retval.0.i81.ph.i, %msm_hdmi_hdcp_recv_bksv.exit.thread.i ], [ %call691.i.i, %msm_hdmi_hdcp_recv_bksv.exit.i.do.end26.i_crit_edge ]
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72) #8
  br label %do.end8

do.end8:                                          ; preds = %do.end26.i, %do.end17.i, %do.end8.i, %do.end.i133
  %retval.0.i148.ph = phi i32 [ %retval.0.i8195.i, %do.end26.i ], [ %retval.0.i68.ph.i, %do.end17.i ], [ %retval.0.i5989.i, %do.end8.i ], [ %retval.0.i.ph.i, %do.end.i133 ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i148.ph) #8
  br label %end

if.end11:                                         ; preds = %msm_hdmi_hdcp_recv_bksv.exit.i
  %reg_lock.i146 = getelementptr inbounds %struct.hdmi, ptr %89, i32 0, i32 24
  %call34.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i146) #5
  %174 = ptrtoint ptr %mmio.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i.i127, align 4
  %add.ptr.i83.i147 = getelementptr i8, ptr %175, i32 280
  call void @msm_writel(i32 noundef 230, ptr noundef %add.ptr.i83.i147) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i146, i32 noundef %call34.i) #5
  %176 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %178 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %buf.i, align 1, !annotation !338
  %179 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -1, ptr %179, align 1, !annotation !338
  %call.i = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 125, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i149 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i149, label %if.end.i151, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end.i151:                                      ; preds = %if.end11
  %call2.i150 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %177, i8 noundef zeroext 8, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i150)
  %tobool3.not.i = icmp eq i32 %call2.i150, 0
  br i1 %tobool3.not.i, label %if.end20, label %do.end.i152

do.end.i152:                                      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #8
  br label %do.end17

do.end17:                                         ; preds = %do.end.i152, %if.end11.do.end17_crit_edge
  %retval.0.i155.ph = phi i32 [ %call.i, %if.end11.do.end17_crit_edge ], [ %call2.i150, %do.end.i152 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i155.ph) #8
  br label %end

if.end20:                                         ; preds = %if.end.i151
  %181 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %179, align 1
  %conv.i = zext i8 %182 to i32
  %183 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %buf.i, align 1
  %conv8.i = zext i8 %184 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef %conv.i, i32 noundef %conv8.i) #5
  %185 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %179, align 1
  %conv10.i = zext i8 %186 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %187 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %buf.i, align 1
  %conv12.i = zext i8 %188 to i32
  %or.i = or i32 %shl.i, %conv12.i
  %mmio.i.i153 = getelementptr inbounds %struct.hdmi, ptr %177, i32 0, i32 7
  %189 = ptrtoint ptr %mmio.i.i153 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mmio.i.i153, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %190, i32 316
  call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i154) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %191 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %add.ptr, align 4
  %call.i156 = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 10000, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.end20.do.end26_crit_edge, label %if.end.i165

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end.i165:                                      ; preds = %if.end20
  %mmio.i.i160 = getelementptr inbounds %struct.hdmi, ptr %192, i32 0, i32 7
  %193 = ptrtoint ptr %mmio.i.i160 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i.i160, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %194, i32 284
  %call.i.i162 = call i32 @msm_readl(ptr noundef %add.ptr.i.i161) #5
  %and.i163 = and i32 %call.i.i162, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool4.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool4.not.i164, label %if.end.i165.do.end26_crit_edge, label %do.end32

if.end.i165.do.end26_crit_edge:                   ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %if.end.i165.do.end26_crit_edge, %if.end20.do.end26_crit_edge
  %.str.123.sink = phi ptr [ @.str.120, %if.end20.do.end26_crit_edge ], [ @.str.123, %if.end.i165.do.end26_crit_edge ]
  %retval.0.i169.ph = phi i32 [ -110, %if.end20.do.end26_crit_edge ], [ -22, %if.end.i165.do.end26_crit_edge ]
  %call10.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.123.sink, ptr noundef nonnull @.str.121) #8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i169.ph) #8
  br label %end

do.end32:                                         ; preds = %if.end.i165
  %195 = ptrtoint ptr %mmio.i.i160 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mmio.i.i160, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %196, i32 272
  call void @msm_writel(i32 noundef 257, ptr noundef %add.ptr.i17.i) #5
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.18) #8
  %197 = ptrtoint ptr %ds_type.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ds_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp = icmp eq i32 %198, 1
  br i1 %cmp, label %do.end32.if.else95_crit_edge, label %if.end36

do.end32.if.else95_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else95

if.end36:                                         ; preds = %do.end32
  %199 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %201 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %reg.i, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %202 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %data.i, align 4, !annotation !338
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcaps.i) #5
  %203 = ptrtoint ptr %bcaps.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -1, ptr %bcaps.i, align 1, !annotation !338
  br label %do.body.i

do.body.i:                                        ; preds = %if.end14.i.do.body.i_crit_edge, %if.end36
  %timeout_count.0.i = phi i32 [ 100, %if.end36 ], [ %dec.i, %if.end14.i.do.body.i_crit_edge ]
  %call.i170 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %200, i8 noundef zeroext 64, ptr noundef nonnull %bcaps.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i171 = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i171, label %if.end.i173, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i173:                                      ; preds = %do.body.i
  %204 = ptrtoint ptr %bcaps.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bcaps.i, align 1
  %206 = and i8 %205, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool4.not.i172 = icmp eq i8 %206, 0
  br i1 %tobool4.not.i172, label %if.end6.i174, label %do.end20.i

if.end6.i174:                                     ; preds = %if.end.i173
  %dec.i = add nsw i32 %timeout_count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool7.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool7.not.i, label %if.end6.i174.cleanup.sink.split.i_crit_edge, label %if.end14.i

if.end6.i174.cleanup.sink.split.i_crit_edge:      ; preds = %if.end6.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.end6.i174
  %call15.i = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.do.body.i_crit_edge, label %if.end14.i.do.end42_crit_edge

if.end14.i.do.end42_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

if.end14.i.do.body.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end20.i:                                       ; preds = %if.end.i173
  %207 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #5
  %209 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !338
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -1, ptr %210, align 1, !annotation !338
  %call.i.i175 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %208, i8 noundef zeroext 65, ptr noundef nonnull %buf.i.i, i16 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175)
  %tobool.not.i.i176 = icmp eq i32 %call.i.i175, 0
  br i1 %tobool.not.i.i176, label %if.end.i.i186, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i.i177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #8
  br label %msm_hdmi_hdcp_recv_check_bstatus.exit.i

if.end.i.i186:                                    ; preds = %do.end20.i
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %210, align 1
  %conv.i.i178 = zext i8 %213 to i16
  %shl.i.i179 = shl nuw i16 %conv.i.i178, 8
  %214 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %buf.i.i, align 1
  %conv4.i.i180 = zext i8 %215 to i16
  %or.i.i181 = or i16 %shl.i.i179, %conv4.i.i180
  %conv6.i.i182 = zext i16 %or.i.i181 to i32
  %and.i.i183 = and i32 %conv6.i.i182, 127
  %216 = lshr i32 %conv6.i.i182, 8
  %and8.i.i184 = and i32 %216, 7
  %and10.i.i = and i32 %conv6.i.i182, 128
  %and14.i.i = and i32 %conv6.i.i182, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i183)
  %cmp.i.i185 = icmp eq i32 %and.i.i183, 0
  br i1 %cmp.i.i185, label %do.end23.i.i, label %if.end26.i.i

do.end23.i.i:                                     ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %extract.t.i.i = icmp ne i32 %and14.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %extract.t64.i.i = icmp ne i32 %and10.i.i, 0
  br label %msm_hdmi_hdcp_recv_check_bstatus.exit.i

if.end26.i.i:                                     ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end34.i.i, label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %extract.t61.i.i = icmp ne i32 %and14.i.i, 0
  br label %msm_hdmi_hdcp_recv_check_bstatus.exit.i

if.end34.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %extract.t63.i.i = icmp ne i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge, label %do.end39.i.i

if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_recv_check_bstatus.exit.i

do.end39.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137) #8
  br label %msm_hdmi_hdcp_recv_check_bstatus.exit.i

msm_hdmi_hdcp_recv_check_bstatus.exit.i:          ; preds = %do.end39.i.i, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge, %do.end31.i.i, %do.end23.i.i, %do.end.i.i
  %bstatus.0.i = phi i16 [ %or.i.i181, %do.end23.i.i ], [ %or.i.i181, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ %or.i.i181, %do.end39.i.i ], [ %or.i.i181, %do.end31.i.i ], [ -1, %do.end.i.i ]
  %down_stream_devices.0.i.i = phi i32 [ 0, %do.end23.i.i ], [ %and.i.i183, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ %and.i.i183, %do.end39.i.i ], [ %and.i.i183, %do.end31.i.i ], [ 0, %do.end.i.i ]
  %repeater_cascade_depth.0.i.i = phi i32 [ %and8.i.i184, %do.end23.i.i ], [ %and8.i.i184, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ %and8.i.i184, %do.end39.i.i ], [ %and8.i.i184, %do.end31.i.i ], [ 0, %do.end.i.i ]
  %max_cascade_exceeded.0.off0.i.i = phi i1 [ %extract.t.i.i, %do.end23.i.i ], [ %extract.t63.i.i, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ true, %do.end39.i.i ], [ %extract.t61.i.i, %do.end31.i.i ], [ false, %do.end.i.i ]
  %max_devs_exceeded.0.off0.i.i = phi i1 [ %extract.t64.i.i, %do.end23.i.i ], [ false, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ false, %do.end39.i.i ], [ true, %do.end31.i.i ], [ false, %do.end.i.i ]
  %rc.0.i.i187 = phi i32 [ -22, %do.end23.i.i ], [ 0, %if.end34.i.i.msm_hdmi_hdcp_recv_check_bstatus.exit.i_crit_edge ], [ -22, %do.end39.i.i ], [ -22, %do.end31.i.i ], [ %call.i.i175, %do.end.i.i ]
  %conv43.i.i = trunc i32 %down_stream_devices.0.i.i to i8
  %dev_count.i.i = getelementptr i8, ptr %work, i32 172
  %217 = ptrtoint ptr %dev_count.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv43.i.i, ptr %dev_count.i.i, align 4
  %max_cascade_exceeded45.i.i = getelementptr i8, ptr %work, i32 809
  %frombool46.i.i = zext i1 %max_cascade_exceeded.0.off0.i.i to i8
  %218 = ptrtoint ptr %max_cascade_exceeded45.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %frombool46.i.i, ptr %max_cascade_exceeded45.i.i, align 1
  %max_dev_exceeded.i.i = getelementptr i8, ptr %work, i32 810
  %frombool48.i.i = zext i1 %max_devs_exceeded.0.off0.i.i to i8
  %219 = ptrtoint ptr %max_dev_exceeded.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %frombool48.i.i, ptr %max_dev_exceeded.i.i, align 2
  %conv49.i.i = trunc i32 %repeater_cascade_depth.0.i.i to i8
  %depth.i.i = getelementptr i8, ptr %work, i32 173
  %220 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv49.i.i, ptr %depth.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i187)
  %tobool22.not.i188 = icmp eq i32 %rc.0.i.i187, 0
  br i1 %tobool22.not.i188, label %if.end29.i, label %msm_hdmi_hdcp_recv_check_bstatus.exit.i.cleanup.sink.split.i_crit_edge

msm_hdmi_hdcp_recv_check_bstatus.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %msm_hdmi_hdcp_recv_check_bstatus.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end29.i:                                       ; preds = %msm_hdmi_hdcp_recv_check_bstatus.exit.i
  %221 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 360, ptr %reg.i, align 4
  %222 = ptrtoint ptr %bcaps.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %bcaps.i, align 1
  %conv30.i = zext i8 %223 to i32
  %conv31.i = zext i16 %bstatus.0.i to i32
  %shl.i189 = shl nuw nsw i32 %conv31.i, 8
  %or.i190 = or i32 %shl.i189, %conv30.i
  %224 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %or.i190, ptr %data.i, align 4
  %call32.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i, ptr noundef nonnull %data.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end45, label %if.end29.i.cleanup.sink.split.i_crit_edge

if.end29.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end29.i.cleanup.sink.split.i_crit_edge, %msm_hdmi_hdcp_recv_check_bstatus.exit.i.cleanup.sink.split.i_crit_edge, %if.end6.i174.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %.str.134.sink.i = phi ptr [ @.str.131, %msm_hdmi_hdcp_recv_check_bstatus.exit.i.cleanup.sink.split.i_crit_edge ], [ @.str.134, %if.end29.i.cleanup.sink.split.i_crit_edge ], [ @.str.128, %if.end6.i174.cleanup.sink.split.i_crit_edge ], [ @.str.125, %do.body.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %rc.0.i.i187, %msm_hdmi_hdcp_recv_check_bstatus.exit.i.cleanup.sink.split.i_crit_edge ], [ %call32.i, %if.end29.i.cleanup.sink.split.i_crit_edge ], [ -110, %if.end6.i174.cleanup.sink.split.i_crit_edge ], [ %call.i170, %do.body.i.cleanup.sink.split.i_crit_edge ]
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.134.sink.i, ptr noundef nonnull @.str.126) #8
  br label %do.end42

do.end42:                                         ; preds = %cleanup.sink.split.i, %if.end14.i.do.end42_crit_edge
  %retval.0.i191.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call15.i, %if.end14.i.do.end42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcaps.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i191.ph) #8
  br label %end

if.end45:                                         ; preds = %if.end29.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcaps.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  %ksv_list.i.i = getelementptr i8, ptr %work, i32 174
  br label %do.body.i199

do.body.i199:                                     ; preds = %if.end5.i.do.body.i199_crit_edge, %if.end45
  %timeout_count.0.i195 = phi i32 [ 100, %if.end45 ], [ %dec.i200, %if.end5.i.do.body.i199_crit_edge ]
  %225 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %add.ptr, align 4
  %227 = ptrtoint ptr %dev_count.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %dev_count.i.i, align 4
  %conv.i.i196 = zext i8 %228 to i16
  %mul.i.i = mul nuw nsw i16 %conv.i.i196, 5
  %call.i.i197 = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %226, i8 noundef zeroext 67, ptr noundef %ksv_list.i.i, i16 noundef zeroext %mul.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197)
  %tobool.not.i.i198 = icmp eq i32 %call.i.i197, 0
  br i1 %tobool.not.i.i198, label %do.end11.i, label %if.end.i201

if.end.i201:                                      ; preds = %do.body.i199
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.156) #8
  %dec.i200 = add nsw i32 %timeout_count.0.i195, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i200)
  %tobool1.not.i = icmp eq i32 %dec.i200, 0
  br i1 %tobool1.not.i, label %if.end.i201.do.end51.sink.split_crit_edge, label %if.end5.i

if.end.i201.do.end51.sink.split_crit_edge:        ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.sink.split

if.end5.i:                                        ; preds = %if.end.i201
  %call6.i = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 25, i32 noundef 1) #5
  %tobool7.not.i204 = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i204, label %if.end5.i.do.body.i199_crit_edge, label %if.end5.i.do.end51_crit_edge

if.end5.i.do.end51_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51

if.end5.i.do.body.i199_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i199

do.end11.i:                                       ; preds = %do.body.i199
  %229 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %reg.i.i192) #5
  %231 = getelementptr inbounds [5 x i32], ptr %reg.i.i192, i32 0, i32 1
  %232 = getelementptr inbounds [5 x i32], ptr %reg.i.i192, i32 0, i32 2
  %233 = getelementptr inbounds [5 x i32], ptr %reg.i.i192, i32 0, i32 3
  %234 = getelementptr inbounds [5 x i32], ptr %reg.i.i192, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i.i193) #5
  %235 = getelementptr inbounds [5 x i32], ptr %data.i.i193, i32 0, i32 1
  %236 = getelementptr inbounds [5 x i32], ptr %data.i.i193, i32 0, i32 2
  %237 = getelementptr inbounds [5 x i32], ptr %data.i.i193, i32 0, i32 3
  %238 = getelementptr inbounds [5 x i32], ptr %data.i.i193, i32 0, i32 4
  %239 = call ptr @memset(ptr %data.i.i193, i32 255, i32 20)
  %call.i41.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %230, i8 noundef zeroext 32, ptr noundef nonnull %data.i.i193, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not.i42.i, label %if.end.i.i205, label %do.end11.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge

do.end11.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_transfer_v_h.exit.thread.i

msm_hdmi_hdcp_transfer_v_h.exit.thread.i:         ; preds = %if.end.3.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge, %if.end.2.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge, %if.end.1.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge, %if.end.i.i205.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge, %do.end11.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge
  %i.022.lcssa.i.i = phi i32 [ 0, %do.end11.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ 1, %if.end.i.i205.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ 2, %if.end.1.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ 3, %if.end.2.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ 4, %if.end.3.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ]
  %call.lcssa.i.i = phi i32 [ %call.i41.i, %do.end11.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ %call.1.i.i, %if.end.i.i205.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ %call.2.i.i, %if.end.1.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ %call.3.i.i, %if.end.2.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ], [ %call.4.i.i, %if.end.3.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge ]
  %name.i.i = getelementptr [5 x %struct.hdmi_hdcp_reg_data], ptr @__const.msm_hdmi_hdcp_transfer_v_h.reg_data, i32 0, i32 %i.022.lcssa.i.i, i32 2
  %240 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %name.i.i, align 4
  %call3.i43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, ptr noundef %241) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i.i193) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %reg.i.i192) #5
  br label %do.end51.sink.split

if.end.i.i205:                                    ; preds = %do.end11.i
  %242 = ptrtoint ptr %data.i.i193 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %data.i.i193, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.157, i32 noundef %243) #5
  %244 = ptrtoint ptr %reg.i.i192 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 340, ptr %reg.i.i192, align 4
  %call.1.i.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %230, i8 noundef zeroext 36, ptr noundef %235, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %if.end.1.i.i, label %if.end.i.i205.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge

if.end.i.i205.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge: ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_transfer_v_h.exit.thread.i

if.end.1.i.i:                                     ; preds = %if.end.i.i205
  %245 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %235, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.158, i32 noundef %246) #5
  %247 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 344, ptr %231, align 4
  %call.2.i.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %230, i8 noundef zeroext 40, ptr noundef %236, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %if.end.2.i.i, label %if.end.1.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge

if.end.1.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_transfer_v_h.exit.thread.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %248 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %236, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.159, i32 noundef %249) #5
  %250 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 348, ptr %232, align 4
  %call.3.i.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %230, i8 noundef zeroext 44, ptr noundef %237, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.3.i.i, label %if.end.2.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge

if.end.2.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_transfer_v_h.exit.thread.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  %251 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %237, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.160, i32 noundef %252) #5
  %253 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 352, ptr %233, align 4
  %call.4.i.i = call fastcc i32 @msm_hdmi_ddc_read(ptr noundef %230, i8 noundef zeroext 48, ptr noundef %238, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %msm_hdmi_hdcp_transfer_v_h.exit.i, label %if.end.3.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge

if.end.3.i.i.msm_hdmi_hdcp_transfer_v_h.exit.thread.i_crit_edge: ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_transfer_v_h.exit.thread.i

msm_hdmi_hdcp_transfer_v_h.exit.i:                ; preds = %if.end.3.i.i
  %254 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %238, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.161, i32 noundef %255) #5
  %256 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 356, ptr %234, align 4
  %call9.i.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i.i192, ptr noundef nonnull %data.i.i193, i32 noundef 5) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i.i193) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %reg.i.i192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool13.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool13.not.i, label %if.end20.i209, label %msm_hdmi_hdcp_transfer_v_h.exit.i.do.end51.sink.split_crit_edge

msm_hdmi_hdcp_transfer_v_h.exit.i.do.end51.sink.split_crit_edge: ; preds = %msm_hdmi_hdcp_transfer_v_h.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.sink.split

if.end20.i209:                                    ; preds = %msm_hdmi_hdcp_transfer_v_h.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i45.i) #5
  %257 = getelementptr inbounds [2 x i32], ptr %reg.i45.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i46.i) #5
  %258 = getelementptr inbounds [2 x i32], ptr %data.i46.i, i32 0, i32 1
  %259 = ptrtoint ptr %reg.i45.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 572, ptr %reg.i45.i, align 4
  %260 = ptrtoint ptr %data.i46.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 1, ptr %data.i46.i, align 4
  %261 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 572, ptr %257, align 4
  %262 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %258, align 4
  %call.i47.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i45.i, ptr noundef nonnull %data.i46.i, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i46.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i45.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool22.not.i208 = icmp eq i32 %call.i47.i, 0
  br i1 %tobool22.not.i208, label %if.end54, label %if.end20.i209.do.end51.sink.split_crit_edge

if.end20.i209.do.end51.sink.split_crit_edge:      ; preds = %if.end20.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end51.sink.split

do.end51.sink.split:                              ; preds = %if.end20.i209.do.end51.sink.split_crit_edge, %msm_hdmi_hdcp_transfer_v_h.exit.i.do.end51.sink.split_crit_edge, %msm_hdmi_hdcp_transfer_v_h.exit.thread.i, %if.end.i201.do.end51.sink.split_crit_edge
  %.str.147.sink = phi ptr [ @.str.150, %msm_hdmi_hdcp_transfer_v_h.exit.i.do.end51.sink.split_crit_edge ], [ @.str.150, %msm_hdmi_hdcp_transfer_v_h.exit.thread.i ], [ @.str.153, %if.end20.i209.do.end51.sink.split_crit_edge ], [ @.str.147, %if.end.i201.do.end51.sink.split_crit_edge ]
  %retval.0.i212.ph.ph = phi i32 [ %call9.i.i, %msm_hdmi_hdcp_transfer_v_h.exit.i.do.end51.sink.split_crit_edge ], [ %call.lcssa.i.i, %msm_hdmi_hdcp_transfer_v_h.exit.thread.i ], [ %call.i47.i, %if.end20.i209.do.end51.sink.split_crit_edge ], [ -110, %if.end.i201.do.end51.sink.split_crit_edge ]
  %call4.i202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.147.sink, ptr noundef nonnull @.str.148) #8
  br label %do.end51

do.end51:                                         ; preds = %do.end51.sink.split, %if.end5.i.do.end51_crit_edge
  %retval.0.i212.ph = phi i32 [ %retval.0.i212.ph.ph, %do.end51.sink.split ], [ %call6.i, %if.end5.i.do.end51_crit_edge ]
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i212.ph) #8
  br label %end

if.end54:                                         ; preds = %if.end20.i209
  %ksv_fifo_w_index.i = getelementptr i8, ptr %work, i32 144
  %263 = ptrtoint ptr %ksv_fifo_w_index.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %ksv_fifo_w_index.i, align 4
  br label %do.body.i221

do.body.i221:                                     ; preds = %if.end7.i.do.body.i221_crit_edge, %if.end54
  %timeout_count.0.i217 = phi i32 [ 100, %if.end54 ], [ %dec.i233, %if.end7.i.do.body.i221_crit_edge ]
  %264 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i213) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i214) #5
  %266 = ptrtoint ptr %dev_count.i.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %dev_count.i.i, align 4
  %conv.i.i218 = zext i8 %267 to i32
  %mul.i.i219 = mul nuw nsw i32 %conv.i.i218, 5
  %268 = ptrtoint ptr %ksv_fifo_w_index.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %ksv_fifo_w_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.i.i220 = icmp eq i32 %269, 0
  br i1 %tobool.not.i.i220, label %do.body.i221.if.end12.i.i_crit_edge, label %if.then.i.i226

do.body.i221.if.end12.i.i_crit_edge:              ; preds = %do.body.i221
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i.i

if.then.i.i226:                                   ; preds = %do.body.i221
  %mmio.i.i.i222 = getelementptr inbounds %struct.hdmi, ptr %265, i32 0, i32 7
  %270 = ptrtoint ptr %mmio.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %mmio.i.i.i222, align 4
  %add.ptr.i.i.i223 = getelementptr i8, ptr %271, i32 576
  %call.i.i.i224 = call i32 @msm_readl(ptr noundef %add.ptr.i.i.i223) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.167, i32 noundef %call.i.i.i224) #5
  %272 = ptrtoint ptr %ksv_fifo_w_index.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %ksv_fifo_w_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %273, i32 %mul.i.i219)
  %cmp.i.i225 = icmp eq i32 %273, %mul.i.i219
  br i1 %cmp.i.i225, label %if.then4.i.i, label %if.else7.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i226
  %and.i.i227 = and i32 %call.i.i.i224, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i227)
  %tobool5.not.i.i = icmp eq i32 %and.i.i227, 0
  br i1 %tobool5.not.i.i, label %if.then4.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge, label %if.end63

if.then4.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i

if.else7.i.i:                                     ; preds = %if.then.i.i226
  %and8.i.i228 = and i32 %call.i.i.i224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i228)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i228, 0
  br i1 %tobool9.not.i.i, label %if.else7.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge, label %if.end.i.i229

if.else7.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge: ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i

if.end.i.i229:                                    ; preds = %if.else7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.169) #5
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i229, %do.body.i221.if.end12.i.i_crit_edge
  %274 = ptrtoint ptr %ksv_fifo_w_index.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %ksv_fifo_w_index.i, align 4
  %sub.i.i = sub i32 %mul.i.i219, %275
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub.i.i)
  %cmp14.i.i = icmp ult i32 %sub.i.i, 65
  %sub..i.i = select i1 %cmp14.i.i, i32 %sub.i.i, i32 64
  %add.ptr.i.i230 = getelementptr i8, ptr %ksv_list.i.i, i32 %275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub..i.i)
  %cmp2064.not.i.i = icmp eq i32 %sub..i.i, 0
  br i1 %cmp2064.not.i.i, label %if.end12.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end12.i.i.for.end.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end12.i.i
  %sub23.i.i = add nsw i32 %sub..i.i, -1
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub..i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.065.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i.i230, i32 %i.065.i.i
  %276 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx.i.i, align 1
  %conv22.i.i = zext i8 %277 to i32
  %shl.i.i231 = shl nuw nsw i32 %conv22.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %i.065.i.i, i32 %sub23.i.i)
  %cmp24.i.i = icmp eq i32 %i.065.i.i, %sub23.i.i
  %narrow.i.i = select i1 %cmp24.i.i, i1 %cmp14.i.i, i1 false
  %spec.select.i.i = zext i1 %narrow.i.i to i32
  %reg_val.0.i.i = or i32 %shl.i.i231, %spec.select.i.i
  %278 = ptrtoint ptr %reg.i.i214 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 580, ptr %reg.i.i214, align 4
  %279 = ptrtoint ptr %data.i.i213 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %reg_val.0.i.i, ptr %data.i.i213, align 4
  %call29.i.i = call fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr noundef %add.ptr, ptr noundef nonnull %reg.i.i214, ptr noundef nonnull %data.i.i213, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %for.cond.i.i, label %msm_hdmi_hdcp_write_ksv_fifo.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %if.end12.i.i.for.end.i.i_crit_edge
  %280 = ptrtoint ptr %ksv_fifo_w_index.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ksv_fifo_w_index.i, align 4
  %add.i.i232 = add i32 %281, %sub..i.i
  store i32 %add.i.i232, ptr %ksv_fifo_w_index.i, align 4
  br label %msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i

msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i:       ; preds = %for.end.i.i, %if.else7.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge, %if.then4.i.i.msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i214) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i213) #5
  br label %if.end2.i

msm_hdmi_hdcp_write_ksv_fifo.exit.i:              ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i214) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i213) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call29.i.i)
  %cond.i = icmp eq i32 %call29.i.i, -11
  br i1 %cond.i, label %msm_hdmi_hdcp_write_ksv_fifo.exit.i.if.end2.i_crit_edge, label %msm_hdmi_hdcp_write_ksv_fifo.exit.i.do.end60_crit_edge

msm_hdmi_hdcp_write_ksv_fifo.exit.i.do.end60_crit_edge: ; preds = %msm_hdmi_hdcp_write_ksv_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

msm_hdmi_hdcp_write_ksv_fifo.exit.i.if.end2.i_crit_edge: ; preds = %msm_hdmi_hdcp_write_ksv_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i

if.end2.i:                                        ; preds = %msm_hdmi_hdcp_write_ksv_fifo.exit.i.if.end2.i_crit_edge, %msm_hdmi_hdcp_write_ksv_fifo.exit.thread.i
  %dec.i233 = add nsw i32 %timeout_count.0.i217, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i233)
  %tobool3.not.i234 = icmp eq i32 %dec.i233, 0
  br i1 %tobool3.not.i234, label %do.end.i236, label %if.end7.i

do.end.i236:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166) #8
  br label %do.end60

if.end7.i:                                        ; preds = %if.end2.i
  %call8.i = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.do.body.i221_crit_edge, label %if.end7.i.do.end60_crit_edge

if.end7.i.do.end60_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

if.end7.i.do.body.i221_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i221

do.end60:                                         ; preds = %if.end7.i.do.end60_crit_edge, %do.end.i236, %msm_hdmi_hdcp_write_ksv_fifo.exit.i.do.end60_crit_edge
  %retval.0.i237.ph = phi i32 [ -110, %do.end.i236 ], [ %call8.i, %if.end7.i.do.end60_crit_edge ], [ %call29.i.i, %msm_hdmi_hdcp_write_ksv_fifo.exit.i.do.end60_crit_edge ]
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i237.ph) #8
  br label %end

if.end63:                                         ; preds = %if.then4.i.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.168) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i214) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i213) #5
  %282 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr, align 4
  %mmio.i.i238 = getelementptr inbounds %struct.hdmi, ptr %283, i32 0, i32 7
  br label %do.body.i244

do.body.i244:                                     ; preds = %if.end6.i249.do.body.i244_crit_edge, %if.end63
  %timeout_count.0.i239 = phi i32 [ 100, %if.end63 ], [ %dec.i245, %if.end6.i249.do.body.i244_crit_edge ]
  %284 = ptrtoint ptr %mmio.i.i238 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mmio.i.i238, align 4
  %add.ptr.i.i240 = getelementptr i8, ptr %285, i32 284
  %call.i.i241 = call i32 @msm_readl(ptr noundef %add.ptr.i.i240) #5
  %and.i242 = and i32 %call.i.i241, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i242)
  %tobool.not.i243 = icmp eq i32 %and.i242, 0
  br i1 %tobool.not.i243, label %if.end.i246, label %do.body.i244.if.else95_crit_edge

do.body.i244.if.else95_crit_edge:                 ; preds = %do.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else95

if.end.i246:                                      ; preds = %do.body.i244
  %dec.i245 = add nsw i32 %timeout_count.0.i239, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i245)
  %tobool2.not.i = icmp eq i32 %dec.i245, 0
  br i1 %tobool2.not.i, label %do.end.i248, label %if.end6.i249

do.end.i248:                                      ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171) #8
  br label %do.end69

if.end6.i249:                                     ; preds = %if.end.i246
  %call7.i = call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i249.do.body.i244_crit_edge, label %if.end6.i249.do.end69_crit_edge

if.end6.i249.do.end69_crit_edge:                  ; preds = %if.end6.i249
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69

if.end6.i249.do.body.i244_crit_edge:              ; preds = %if.end6.i249
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i244

do.end69:                                         ; preds = %if.end6.i249.do.end69_crit_edge, %do.end.i248
  %retval.0.i250.ph = phi i32 [ -110, %do.end.i248 ], [ %call7.i, %if.end6.i249.do.end69_crit_edge ]
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i250.ph) #8
  br label %end

end:                                              ; preds = %do.end69, %do.end60, %do.end51, %do.end42, %do.end26, %do.end17, %do.end8, %do.end
  %rc.0 = phi i32 [ %retval.0.i269, %do.end ], [ %retval.0.i148.ph, %do.end8 ], [ %retval.0.i155.ph, %do.end17 ], [ %retval.0.i169.ph, %do.end26 ], [ %retval.0.i191.ph, %do.end42 ], [ %retval.0.i212.ph, %do.end51 ], [ %retval.0.i237.ph, %do.end60 ], [ %retval.0.i250.ph, %do.end69 ]
  %286 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %286, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %rc.0, label %do.end92 [
    i32 -125, label %do.end77
    i32 -524, label %do.end84
  ]

do.end77:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.18) #8
  br label %if.end98

do.end84:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.18) #8
  br label %if.end98

do.end92:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.18) #8
  %287 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %add.ptr, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.172) #5
  %reg_lock.i251 = getelementptr inbounds %struct.hdmi, ptr %288, i32 0, i32 24
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i251) #5
  %mmio.i.i252 = getelementptr inbounds %struct.hdmi, ptr %288, i32 0, i32 7
  %289 = ptrtoint ptr %mmio.i.i252 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mmio.i.i252, align 4
  %call.i.i253 = call i32 @msm_readl(ptr noundef %290) #5
  %and.i254 = and i32 %call.i.i253, -5
  %291 = ptrtoint ptr %mmio.i.i252 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mmio.i.i252, align 4
  call void @msm_writel(i32 noundef %and.i254, ptr noundef %292) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i251, i32 noundef %call3.i) #5
  %hdcp_state.i255 = getelementptr i8, ptr %work, i32 -4
  %293 = ptrtoint ptr %hdcp_state.i255 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 4, ptr %hdcp_state.i255, align 4
  %workq.i = getelementptr inbounds %struct.hdmi, ptr %288, i32 0, i32 22
  %294 = ptrtoint ptr %workq.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %workq.i, align 4
  %hdcp_reauth_work.i = getelementptr i8, ptr %work, i32 44
  %call.i17.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %295, ptr noundef %hdcp_reauth_work.i) #5
  br label %if.end98

if.else95:                                        ; preds = %do.body.i244.if.else95_crit_edge, %do.end32.if.else95_crit_edge
  %296 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %add.ptr, align 4
  %reg_lock.i256 = getelementptr inbounds %struct.hdmi, ptr %297, i32 0, i32 24
  %call3.i257 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i256) #5
  %mmio.i.i258 = getelementptr inbounds %struct.hdmi, ptr %297, i32 0, i32 7
  %298 = ptrtoint ptr %mmio.i.i258 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mmio.i.i258, align 4
  %add.ptr.i.i259 = getelementptr i8, ptr %299, i32 528
  %call.i.i260 = call i32 @msm_readl(ptr noundef %add.ptr.i.i259) #5
  %or.i261 = or i32 %call.i.i260, 16
  %300 = ptrtoint ptr %mmio.i.i258 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %mmio.i.i258, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %301, i32 528
  call void @msm_writel(i32 noundef %or.i261, ptr noundef %add.ptr.i39.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i256, i32 noundef %call3.i257) #5
  %call17.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i256) #5
  %302 = ptrtoint ptr %mmio.i.i258 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mmio.i.i258, align 4
  %call.i41.i262 = call i32 @msm_readl(ptr noundef %303) #5
  %or23.i = or i32 %call.i41.i262, 4
  %304 = ptrtoint ptr %mmio.i.i258 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mmio.i.i258, align 4
  call void @msm_writel(i32 noundef %or23.i, ptr noundef %305) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i256, i32 noundef %call17.i) #5
  %hdcp_state.i263 = getelementptr i8, ptr %work, i32 -4
  %306 = ptrtoint ptr %hdcp_state.i263 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 3, ptr %hdcp_state.i263, align 4
  %auth_retries.i = getelementptr i8, ptr %work, i32 -12
  %307 = ptrtoint ptr %auth_retries.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %auth_retries.i, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else95, %do.end92, %do.end84, %do.end77
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_hdcp_reauth_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.173) #5
  %reg_lock = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 600
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i, -268435457
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %5, i32 600
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i68) #5
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %7, i32 280
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i70) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #5
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %9, i32 304
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i72) #5
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 540
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %timeout_count.0.i = phi i32 [ %dec.i, %if.end15.i.do.body.i_crit_edge ], [ 100, %entry.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %15, i32 296
  %call.i39.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i38.i) #5
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %17, i32 540
  %call.i42.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i41.i) #5
  %and5.i = and i32 %call.i42.i, 8
  %18 = and i32 %call.i39.i, 1040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %18)
  %19 = icmp ne i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool7.not.i = icmp eq i32 %and5.i, 0
  %or.cond36.i = select i1 %19, i1 true, i1 %tobool7.not.i
  br i1 %or.cond36.i, label %do.body.i.if.end_crit_edge, label %if.end10.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end10.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %timeout_count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool11.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool11.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181) #8
  br label %do.end12

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = tail call fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %add.ptr, i32 noundef 20, i32 noundef 1) #5
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.do.end12_crit_edge

if.end15.i.do.end12_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end12:                                         ; preds = %if.end15.i.do.end12_crit_edge, %do.end.i
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175) #8
  br label %cleanup

if.end:                                           ; preds = %do.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %21, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i74) #5
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #5
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %23, i32 600
  %call.i77 = tail call i32 @msm_readl(ptr noundef %add.ptr.i76) #5
  %or = or i32 %call.i77, 268435456
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %25, i32 600
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i79) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call24) #5
  %auth_retries = getelementptr i8, ptr %work, i32 -56
  %26 = ptrtoint ptr %auth_retries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %auth_retries, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %auth_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc)
  %cmp31 = icmp eq i32 %inc, 30
  br i1 %cmp31, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hdcp_state = getelementptr i8, ptr %work, i32 -48
  %28 = ptrtoint ptr %hdcp_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %hdcp_state, align 4
  %29 = ptrtoint ptr %auth_retries to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %auth_retries, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.175) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.179) #5
  %hdcp_state41 = getelementptr i8, ptr %work, i32 -48
  %30 = ptrtoint ptr %hdcp_state41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %hdcp_state41, align 4
  %workq = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %workq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %workq, align 4
  %hdcp_auth_work = getelementptr i8, ptr %work, i32 -44
  %call.i80 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %hdcp_auth_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then33, %do.end12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_hdcp_available() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_hdcp_destroy(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hdmi, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hdcp_ctrl = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 23
  %0 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp_ctrl, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hdcp_ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_hdcp_msleep(ptr noundef %hdcp_ctrl, i32 noundef %ms, i32 noundef %ev) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ms) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 247) #5
  %auth_event = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 6
  %0 = ptrtoint ptr %auth_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %auth_event, align 4
  %and.i = and i32 %ev, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  %spec.store.select = select i1 %tobool7.not, i32 1, i32 %call2.i
  %__ret.0 = select i1 %tobool.not, i32 %call2.i, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool9.not = icmp eq i32 %__ret.0, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %4 = select i1 %not.tobool.not, i1 true, i1 %tobool9.not
  br i1 %4, label %entry.if.end41_crit_edge, label %if.then12

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i72 = tail call i32 @__msecs_to_jiffies(i32 noundef %ms) #5
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %auth_event_queue = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 7
  %call1583 = call i32 @prepare_to_wait_event(ptr noundef %auth_event_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %6 = ptrtoint ptr %auth_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %auth_event, align 4
  %8 = and i32 %7, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool19.not84 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i72)
  %tobool25.not85 = icmp eq i32 %call2.i72, 0
  %spec.store.select5386 = select i1 %tobool25.not85, i32 1, i32 %call2.i72
  %__ret13.187 = select i1 %tobool19.not84, i32 %call2.i72, i32 %spec.store.select5386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.187)
  %tobool31.not88 = icmp eq i32 %__ret13.187, 0
  %not.tobool19.not89 = xor i1 %tobool19.not84, true
  %9 = select i1 %not.tobool19.not89, i1 true, i1 %tobool31.not88
  br i1 %9, label %if.then12.for.end_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.190 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ %__ret13.187, %if.then12.cleanup_crit_edge ]
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret13.190) #5
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %auth_event_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %10 = ptrtoint ptr %auth_event to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %auth_event, align 4
  %12 = and i32 %11, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool25.not = icmp eq i32 %call38, 0
  %spec.store.select53 = select i1 %tobool25.not, i32 1, i32 %call38
  %__ret13.1 = select i1 %tobool19.not, i32 %call38, i32 %spec.store.select53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool31.not = icmp eq i32 %__ret13.1, 0
  %not.tobool19.not = xor i1 %tobool19.not, true
  %13 = select i1 %not.tobool19.not, i1 true, i1 %tobool31.not
  br i1 %13, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then12.for.end_crit_edge
  %__ret13.1.lcssa = phi i32 [ %__ret13.187, %if.then12.for.end_crit_edge ], [ %__ret13.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %auth_event_queue, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end41

if.end41:                                         ; preds = %for.end, %entry.if.end41_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %entry.if.end41_crit_edge ], [ %__ret13.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool43.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool43.not, label %if.end41.cleanup52_crit_edge, label %do.end47

if.end41.cleanup52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup52

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %ev) #8
  call void @_clear_bit(i32 noundef %ev, ptr noundef %auth_event) #5
  br label %cleanup52

cleanup52:                                        ; preds = %do.end47, %if.end41.cleanup52_crit_edge
  %retval.0 = phi i32 [ -125, %do.end47 ], [ 0, %if.end41.cleanup52_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_ddc_read(ptr nocapture noundef readonly %hdmi, i8 noundef zeroext %offset, ptr noundef %data, i16 noundef zeroext %data_len) unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 58, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %offset.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 58, ptr %arrayinit.element, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %data_len, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %10 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data, ptr %buf9, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.92) #5
  %i2c = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 16
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call.1 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1)
  %cmp.1 = icmp eq i32 %call.1, 2
  br i1 %cmp.1, label %if.else.if.end16_crit_edge, label %if.else.1

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.1:                                        ; preds = %if.else
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %call.2 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2)
  %cmp.2 = icmp eq i32 %call.2, 2
  br i1 %cmp.2, label %if.else.1.if.end16_crit_edge, label %if.else.2

if.else.1.if.end16_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.2:                                        ; preds = %if.else.1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call.3 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.3)
  %cmp.3 = icmp eq i32 %call.3, 2
  br i1 %cmp.3, label %if.else.2.if.end16_crit_edge, label %if.else.3

if.else.2.if.end16_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.3:                                        ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %call.4 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.4)
  %cmp.4 = icmp eq i32 %call.4, 2
  %spec.select = select i1 %cmp.4, i32 0, i32 -5
  br label %if.end16

if.end16:                                         ; preds = %if.else.3, %if.else.2.if.end16_crit_edge, %if.else.1.if.end16_crit_edge, %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %rc.0 = phi i32 [ 0, %entry.if.end16_crit_edge ], [ 0, %if.else.if.end16_crit_edge ], [ 0, %if.else.1.if.end16_crit_edge ], [ 0, %if.else.2.if.end16_crit_edge ], [ %spec.select, %if.else.3 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %rc.0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_hdcp_scm_wr(ptr nocapture noundef readonly %hdcp_ctrl, ptr noundef readonly %preg, ptr noundef readonly %pdata, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %scm_buf = alloca [5 x %struct.qcom_scm_hdcp_req], align 4
  %resp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdcp_ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %scm_buf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #5
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %resp, align 4, !annotation !338
  %tobool.not = icmp eq ptr %pdata, null
  %tobool2.not = icmp eq ptr %preg, null
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %do.end.critedge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end.critedge, %entry.if.end_crit_edge
  %tz_hdcp = getelementptr inbounds %struct.hdmi_hdcp_ctrl, ptr %hdcp_ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %tz_hdcp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tz_hdcp, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool22.not = icmp eq i8 %4, 0
  br i1 %tobool22.not, label %for.cond42.preheader, label %if.then23

for.cond42.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4386.not = icmp eq i32 %count, 0
  br i1 %cmp4386.not, label %for.cond42.preheader.if.end50_crit_edge, label %for.body44.lr.ph

for.cond42.preheader.if.end50_crit_edge:          ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

for.body44.lr.ph:                                 ; preds = %for.cond42.preheader
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  br label %for.body44

if.then23:                                        ; preds = %if.end
  %mmio_phy_addr = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mmio_phy_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mmio_phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool24.not83 = icmp eq i32 %count, 0
  br i1 %tobool24.not83, label %if.then23.if.end50_crit_edge, label %while.body.preheader

if.then23.if.end50_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

while.body.preheader:                             ; preds = %if.then23
  %val = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 0, i32 1
  %arrayidx27.1 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 1
  %val.1 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 1, i32 1
  %arrayidx27.2 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 2
  %val.2 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 2, i32 1
  %arrayidx27.3 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 3
  %val.3 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 3, i32 1
  %arrayidx27.4 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 4
  %val.4 = getelementptr inbounds [5 x %struct.qcom_scm_hdcp_req], ptr %scm_buf, i32 0, i32 4, i32 1
  br label %while.body

while.cond:                                       ; preds = %lor.lhs.false33
  %sub = sub i32 %count.addr.085, %inc30.lcssa
  %tobool24.not = icmp eq i32 %sub, 0
  br i1 %tobool24.not, label %while.cond.if.end50_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.if.end50_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.preheader
  %count.addr.085 = phi i32 [ %sub, %while.cond.while.body_crit_edge ], [ %count, %while.body.preheader ]
  %idx.084 = phi i32 [ %inc.lcssa, %while.cond.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %7 = call ptr @memset(ptr %scm_buf, i32 0, i32 40)
  %arrayidx = getelementptr i32, ptr %preg, i32 %idx.084
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %6
  %10 = ptrtoint ptr %scm_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %scm_buf, align 4
  %arrayidx28 = getelementptr i32, ptr %pdata, i32 %idx.084
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx28, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %inc = add i32 %idx.084, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.085)
  %cmp25 = icmp ugt i32 %count.addr.085, 1
  br i1 %cmp25, label %for.body.1, label %while.body.for.cond.for.end_crit_edge_crit_edge

while.body.for.cond.for.end_crit_edge_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.for.end_crit_edge

for.body.1:                                       ; preds = %while.body
  %arrayidx.1 = getelementptr i32, ptr %preg, i32 %inc
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add i32 %15, %6
  %16 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.1, ptr %arrayidx27.1, align 4
  %arrayidx28.1 = getelementptr i32, ptr %pdata, i32 %inc
  %17 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx28.1, align 4
  %19 = ptrtoint ptr %val.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val.1, align 4
  %inc.1 = add i32 %idx.084, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.addr.085)
  %cmp25.1.not = icmp eq i32 %count.addr.085, 2
  br i1 %cmp25.1.not, label %for.body.1.for.cond.for.end_crit_edge_crit_edge, label %for.body.2

for.body.1.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.for.end_crit_edge

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i32, ptr %preg, i32 %inc.1
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  %add.2 = add i32 %21, %6
  %22 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.2, ptr %arrayidx27.2, align 4
  %arrayidx28.2 = getelementptr i32, ptr %pdata, i32 %inc.1
  %23 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28.2, align 4
  %25 = ptrtoint ptr %val.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val.2, align 4
  %inc.2 = add i32 %idx.084, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.085)
  %cmp25.2 = icmp ugt i32 %count.addr.085, 3
  br i1 %cmp25.2, label %for.body.3, label %for.body.2.for.cond.for.end_crit_edge_crit_edge

for.body.2.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.for.end_crit_edge

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr i32, ptr %preg, i32 %inc.2
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add i32 %27, %6
  %28 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.3, ptr %arrayidx27.3, align 4
  %arrayidx28.3 = getelementptr i32, ptr %pdata, i32 %inc.2
  %29 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx28.3, align 4
  %31 = ptrtoint ptr %val.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val.3, align 4
  %inc.3 = add i32 %idx.084, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count.addr.085)
  %cmp25.3.not = icmp eq i32 %count.addr.085, 4
  br i1 %cmp25.3.not, label %for.body.3.for.cond.for.end_crit_edge_crit_edge, label %for.body.4

for.body.3.for.cond.for.end_crit_edge_crit_edge:  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.for.end_crit_edge

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.4 = getelementptr i32, ptr %preg, i32 %inc.3
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.4, align 4
  %add.4 = add i32 %33, %6
  %34 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.4, ptr %arrayidx27.4, align 4
  %arrayidx28.4 = getelementptr i32, ptr %pdata, i32 %inc.3
  %35 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx28.4, align 4
  %37 = ptrtoint ptr %val.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val.4, align 4
  %inc.4 = add i32 %idx.084, 5
  br label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body.4, %for.body.3.for.cond.for.end_crit_edge_crit_edge, %for.body.2.for.cond.for.end_crit_edge_crit_edge, %for.body.1.for.cond.for.end_crit_edge_crit_edge, %while.body.for.cond.for.end_crit_edge_crit_edge
  %inc.lcssa = phi i32 [ %inc, %while.body.for.cond.for.end_crit_edge_crit_edge ], [ %inc.1, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ %inc.2, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ %inc.3, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ %inc.4, %for.body.4 ]
  %inc30.lcssa = phi i32 [ 1, %while.body.for.cond.for.end_crit_edge_crit_edge ], [ 2, %for.body.1.for.cond.for.end_crit_edge_crit_edge ], [ 3, %for.body.2.for.cond.for.end_crit_edge_crit_edge ], [ 4, %for.body.3.for.cond.for.end_crit_edge_crit_edge ], [ 5, %for.body.4 ]
  %call = call i32 @qcom_scm_hdcp_req(ptr noundef nonnull %scm_buf, i32 noundef %inc30.lcssa, ptr noundef nonnull %resp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %for.cond.for.end_crit_edge.do.end38_crit_edge

for.cond.for.end_crit_edge.do.end38_crit_edge:    ; preds = %for.cond.for.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

lor.lhs.false33:                                  ; preds = %for.cond.for.end_crit_edge
  %38 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool34.not = icmp eq i32 %39, 0
  br i1 %tobool34.not, label %while.cond, label %lor.lhs.false33.do.end38_crit_edge

lor.lhs.false33.do.end38_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end38:                                         ; preds = %lor.lhs.false33.do.end38_crit_edge, %for.cond.for.end_crit_edge.do.end38_crit_edge
  %40 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %resp, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef %call, i32 noundef %41) #8
  br label %if.end50

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.lr.ph
  %i.187 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc48, %for.body44.for.body44_crit_edge ]
  %arrayidx45 = getelementptr i32, ptr %preg, i32 %i.187
  %42 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr i32, ptr %pdata, i32 %i.187
  %44 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx46, align 4
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %43
  tail call void @msm_writel(i32 noundef %45, ptr noundef %add.ptr.i) #5
  %inc48 = add nuw i32 %i.187, 1
  %exitcond.not = icmp eq i32 %inc48, %count
  br i1 %exitcond.not, label %for.body44.if.end50_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.body44.if.end50_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.end50:                                         ; preds = %for.body44.if.end50_crit_edge, %do.end38, %while.cond.if.end50_crit_edge, %if.then23.if.end50_crit_edge, %for.cond42.preheader.if.end50_crit_edge
  %ret.1 = phi i32 [ -22, %do.end38 ], [ 0, %for.cond42.preheader.if.end50_crit_edge ], [ 0, %if.then23.if.end50_crit_edge ], [ 0, %for.body44.if.end50_crit_edge ], [ 0, %while.cond.if.end50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %scm_buf) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_hdcp_req(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_hdmi_ddc_write(ptr nocapture noundef readonly %hdmi, i8 noundef zeroext %offset, ptr nocapture noundef readonly %data, i16 noundef zeroext %data_len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #5
  %0 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %buf, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #5
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 58, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.104) #5
  %conv4 = zext i16 %data_len to i32
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %offset, ptr %buf, align 1
  %8 = call ptr @memcpy(ptr %0, ptr %data, i32 %conv4)
  %9 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf3, align 4
  %add = add i16 %data_len, 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %add, ptr %len, align 4
  %i2c = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 16
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %call16 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %entry.if.end25_crit_edge, label %if.else

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else:                                          ; preds = %entry
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call16.1 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.1)
  %cmp17.1 = icmp eq i32 %call16.1, 1
  br i1 %cmp17.1, label %if.else.if.end25_crit_edge, label %if.else.1

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.1:                                        ; preds = %if.else
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %call16.2 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.2)
  %cmp17.2 = icmp eq i32 %call16.2, 1
  br i1 %cmp17.2, label %if.else.1.if.end25_crit_edge, label %if.else.2

if.else.1.if.end25_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.2:                                        ; preds = %if.else.1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call16.3 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.3)
  %cmp17.3 = icmp eq i32 %call16.3, 1
  br i1 %cmp17.3, label %if.else.2.if.end25_crit_edge, label %if.else.3

if.else.2.if.end25_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.3:                                        ; preds = %if.else.2
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %call16.4 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.4)
  %cmp17.4 = icmp eq i32 %call16.4, 1
  br i1 %cmp17.4, label %if.else.3.if.end25_crit_edge, label %if.else.4

if.else.3.if.end25_crit_edge:                     ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.4:                                        ; preds = %if.else.3
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %call16.5 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.5)
  %cmp17.5 = icmp eq i32 %call16.5, 1
  br i1 %cmp17.5, label %if.else.4.if.end25_crit_edge, label %if.else.5

if.else.4.if.end25_crit_edge:                     ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.5:                                        ; preds = %if.else.4
  %23 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c, align 4
  %call16.6 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.6)
  %cmp17.6 = icmp eq i32 %call16.6, 1
  br i1 %cmp17.6, label %if.else.5.if.end25_crit_edge, label %if.else.6

if.else.5.if.end25_crit_edge:                     ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.6:                                        ; preds = %if.else.5
  %25 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c, align 4
  %call16.7 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.7)
  %cmp17.7 = icmp eq i32 %call16.7, 1
  br i1 %cmp17.7, label %if.else.6.if.end25_crit_edge, label %if.else.7

if.else.6.if.end25_crit_edge:                     ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.7:                                        ; preds = %if.else.6
  %27 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c, align 4
  %call16.8 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.8)
  %cmp17.8 = icmp eq i32 %call16.8, 1
  br i1 %cmp17.8, label %if.else.7.if.end25_crit_edge, label %if.else.8

if.else.7.if.end25_crit_edge:                     ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.else.8:                                        ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c, align 4
  %call16.9 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msgs, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.9)
  %cmp17.9 = icmp eq i32 %call16.9, 1
  %spec.select = select i1 %cmp17.9, i32 0, i32 -5
  br label %if.end25

if.end25:                                         ; preds = %if.else.8, %if.else.7.if.end25_crit_edge, %if.else.6.if.end25_crit_edge, %if.else.5.if.end25_crit_edge, %if.else.4.if.end25_crit_edge, %if.else.3.if.end25_crit_edge, %if.else.2.if.end25_crit_edge, %if.else.1.if.end25_crit_edge, %if.else.if.end25_crit_edge, %entry.if.end25_crit_edge
  %rc.0 = phi i32 [ 0, %entry.if.end25_crit_edge ], [ 0, %if.else.if.end25_crit_edge ], [ 0, %if.else.1.if.end25_crit_edge ], [ 0, %if.else.2.if.end25_crit_edge ], [ 0, %if.else.3.if.end25_crit_edge ], [ 0, %if.else.4.if.end25_crit_edge ], [ 0, %if.else.5.if.end25_crit_edge ], [ 0, %if.else.6.if.end25_crit_edge ], [ 0, %if.else.7.if.end25_crit_edge ], [ %spec.select, %if.else.8 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.107, i32 noundef %rc.0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #5
  ret i32 %rc.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !110, !111, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !147, !149, !150, !151, !153, !154, !155, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !176, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !194, !195, !196, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !278, !280, !282, !284, !286, !287, !288, !289, !291, !293, !294, !295, !296, !298, !300, !302, !304, !305, !306, !307, !309, !311, !313, !314, !315, !316, !318, !319, !320, !322, !324, !325, !326}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 217, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 220, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @msm_hdmi_hdcp_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @msm_hdmi_hdcp_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 229, i32 3}
!10 = !{ptr @msm_hdmi_hdcp_irq._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @msm_hdmi_hdcp_irq._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1312, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1337, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1390, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1398, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @msm_hdmi_hdcp_init._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @msm_hdmi_hdcp_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @msm_hdmi_hdcp_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1407, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @msm_hdmi_hdcp_init.__key.13, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1408, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @msm_hdmi_hdcp_init.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1409, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1242, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @msm_hdmi_hdcp_auth_work._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1249, i32 3}
!39 = !{ptr @msm_hdmi_hdcp_auth_work._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1255, i32 3}
!43 = !{ptr @msm_hdmi_hdcp_auth_work._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1261, i32 3}
!47 = !{ptr @msm_hdmi_hdcp_auth_work._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1264, i32 2}
!51 = !{ptr @msm_hdmi_hdcp_auth_work._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1271, i32 3}
!55 = !{ptr @msm_hdmi_hdcp_auth_work._entry.31, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.33, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1277, i32 3}
!59 = !{ptr @msm_hdmi_hdcp_auth_work._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1283, i32 3}
!63 = !{ptr @msm_hdmi_hdcp_auth_work._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1289, i32 3}
!67 = !{ptr @msm_hdmi_hdcp_auth_work._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1293, i32 3}
!71 = !{ptr @msm_hdmi_hdcp_auth_work._entry.43, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1295, i32 3}
!75 = !{ptr @msm_hdmi_hdcp_auth_work._entry.46, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.48, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1297, i32 3}
!79 = !{ptr @msm_hdmi_hdcp_auth_work._entry.49, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @msm_hdmi_hdcp_auth_work._entry_ptr.51, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 466, i32 4}
!83 = !{ptr @.str.53, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @msm_hdmi_hdcp_auth_prepare._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @msm_hdmi_hdcp_auth_prepare._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.54, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 504, i32 2}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 525, i32 2}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 529, i32 3}
!92 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 269, i32 3}
!94 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @msm_hdmi_hdcp_read_validate_aksv._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @msm_hdmi_hdcp_read_validate_aksv._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 271, i32 3}
!99 = !{ptr @msm_hdmi_hdcp_read_validate_aksv._entry.59, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @msm_hdmi_hdcp_read_validate_aksv._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 276, i32 2}
!103 = !{ptr @.str.63, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 291, i32 2}
!105 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 302, i32 3}
!107 = !{ptr @.str.65, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 316, i32 4}
!109 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @msm_reset_hdcp_ddc_failures._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @msm_reset_hdcp_ddc_failures._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 324, i32 3}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 349, i32 3}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 249, i32 3}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @msm_hdmi_hdcp_msleep._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @msm_hdmi_hdcp_msleep._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 761, i32 3}
!123 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 768, i32 3}
!128 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.73, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.75, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.77, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 781, i32 3}
!132 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.76, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.78, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.80, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 788, i32 3}
!136 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry.79, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @msm_hdmi_hdcp_auth_part1_key_exchange._entry_ptr.81, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.82, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 606, i32 3}
!140 = !{ptr @.str.83, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 611, i32 4}
!142 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @msm_hdmi_hdcp_wait_key_an_ready._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @msm_hdmi_hdcp_wait_key_an_ready._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.85, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 628, i32 3}
!147 = !{ptr @.str.87, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 633, i32 4}
!149 = !{ptr @msm_hdmi_hdcp_wait_key_an_ready._entry.86, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @msm_hdmi_hdcp_wait_key_an_ready._entry_ptr.88, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.89, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 736, i32 3}
!153 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @msm_hdmi_hdcp_recv_bcaps._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @msm_hdmi_hdcp_recv_bcaps._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 739, i32 2}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 97, i32 2}
!160 = !{ptr @.str.93, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 109, i32 2}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 180, i32 5}
!164 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @msm_hdmi_hdcp_scm_wr._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @msm_hdmi_hdcp_scm_wr._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.96, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 661, i32 2}
!169 = !{ptr @.str.97, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 673, i32 3}
!171 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @msm_hdmi_hdcp_send_aksv_an._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @msm_hdmi_hdcp_send_aksv_an._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.99, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 676, i32 2}
!176 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 681, i32 3}
!178 = !{ptr @msm_hdmi_hdcp_send_aksv_an._entry.100, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @msm_hdmi_hdcp_send_aksv_an._entry_ptr.102, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.103, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 684, i32 2}
!182 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 130, i32 2}
!184 = !{ptr @.str.105, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 132, i32 3}
!186 = !{ptr @.str.106, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @msm_hdmi_ddc_write._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @msm_hdmi_ddc_write._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.107, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 151, i32 2}
!191 = !{ptr @.str.108, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 699, i32 3}
!193 = !{ptr @.str.109, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.110, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 706, i32 2}
!198 = !{ptr @.str.112, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 711, i32 3}
!200 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry.111, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr.113, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.115, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 712, i32 3}
!204 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry.114, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @msm_hdmi_hdcp_recv_bksv._entry_ptr.116, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 823, i32 3}
!208 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @msm_hdmi_hdcp_auth_part1_recv_r0._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.119, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 826, i32 2}
!213 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 845, i32 3}
!215 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.123, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 851, i32 3}
!220 = !{ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry.122, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @msm_hdmi_hdcp_auth_part1_verify_r0._entry_ptr.124, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.125, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 949, i32 4}
!224 = !{ptr @.str.126, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.128, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 958, i32 4}
!229 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.127, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.129, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.131, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 969, i32 3}
!233 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.130, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.132, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.134, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 978, i32 3}
!237 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry.133, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @msm_hdmi_hdcp_auth_part2_wait_ksv_fifo_ready._entry_ptr.135, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.136, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 876, i32 3}
!241 = !{ptr @.str.137, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.139, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 893, i32 3}
!246 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.138, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.140, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.142, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 904, i32 3}
!250 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.141, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.143, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.145, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 916, i32 3}
!254 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry.144, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @msm_hdmi_hdcp_recv_check_bstatus._entry_ptr.146, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.147, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1081, i32 4}
!258 = !{ptr @.str.148, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.150, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1092, i32 3}
!263 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.149, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.151, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.153, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1099, i32 3}
!267 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry.152, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @msm_hdmi_hdcp_auth_part2_recv_ksv_fifo._entry_ptr.154, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.155, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1038, i32 3}
!271 = !{ptr @.str.156, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @msm_hdmi_hdcp_recv_ksv_fifo._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.157, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 996, i32 40}
!276 = !{ptr @.str.158, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 997, i32 40}
!278 = !{ptr @.str.159, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 998, i32 40}
!280 = !{ptr @.str.160, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 999, i32 40}
!282 = !{ptr @.str.161, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1000, i32 40}
!284 = !{ptr @.str.162, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1013, i32 4}
!286 = !{ptr @.str.163, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @msm_hdmi_hdcp_transfer_v_h._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @msm_hdmi_hdcp_transfer_v_h._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.164, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1017, i32 3}
!291 = !{ptr @.str.165, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1196, i32 4}
!293 = !{ptr @.str.166, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @msm_hdmi_hdcp_auth_part2_write_ksv_fifo._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.167, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1128, i32 3}
!298 = !{ptr @.str.168, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1132, i32 5}
!300 = !{ptr @.str.169, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1142, i32 4}
!302 = !{ptr @.str.170, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 1222, i32 5}
!304 = !{ptr @.str.171, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @msm_hdmi_hdcp_auth_part2_check_v_match._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.172, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 543, i32 2}
!309 = !{ptr @.str.173, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 404, i32 2}
!311 = !{ptr @.str.174, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 425, i32 3}
!313 = !{ptr @.str.175, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @msm_hdmi_hdcp_reauth_work._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @msm_hdmi_hdcp_reauth_work._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.177, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 445, i32 3}
!318 = !{ptr @msm_hdmi_hdcp_reauth_work._entry.176, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @msm_hdmi_hdcp_reauth_work._entry_ptr.178, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.179, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 450, i32 2}
!322 = !{ptr @.str.180, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_hdcp.c", i32 384, i32 4}
!324 = !{ptr @.str.181, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @msm_hdmi_hdcp_hw_ddc_clean._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @msm_hdmi_hdcp_hw_ddc_clean._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"min_enum_size", i32 4}
!329 = !{i32 8, !"branch-target-enforcement", i32 0}
!330 = !{i32 8, !"sign-return-address", i32 0}
!331 = !{i32 8, !"sign-return-address-all", i32 0}
!332 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!333 = !{i32 7, !"uwtable", i32 1}
!334 = !{i32 7, !"frame-pointer", i32 2}
!335 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!336 = !{i8 0, i8 2}
!337 = !{i64 2157244400}
!338 = !{!"auto-init"}
